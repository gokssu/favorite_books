import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:favorite_books/utils/failure.dart';

part 'network_failure.freezed.dart';

@freezed
abstract class NetworkFailure with _$NetworkFailure {
  const factory NetworkFailure.requestCancelled() = RequestCancelled;

  const factory NetworkFailure.unauthorizedRequest(String reason, int code, String id) = UnauthorizedRequest;

  const factory NetworkFailure.badRequest() = BadRequest;

  const factory NetworkFailure.notFound(String reason) = NotFound;

  const factory NetworkFailure.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkFailure.notAcceptable() = NotAcceptable;

  const factory NetworkFailure.requestTimeout() = RequestTimeout;

  const factory NetworkFailure.sendTimeout() = SendTimeout;

  const factory NetworkFailure.conflict() = Conflict;

  const factory NetworkFailure.internalServerError() = InternalServerError;

  const factory NetworkFailure.notImplemented() = NotImplemented;

  const factory NetworkFailure.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkFailure.noInternetConnection() = NoInternetConnection;

  const factory NetworkFailure.formatException() = FormatException;

  const factory NetworkFailure.unableToProcess() = UnableToProcess;

  const factory NetworkFailure.defaultError(String error, int code) = DefaultError;

  const factory NetworkFailure.unexpectedError() = UnexpectedError;

  static Failure process(error) => getErrorMessage(create(error));

  static NetworkFailure create(error) {
    if (error is Exception) {
      try {
        NetworkFailure networkFailure = const NetworkFailure.notFound('');
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              networkFailure = const NetworkFailure.requestCancelled();
              break;
            case DioExceptionType.connectionTimeout:
              networkFailure = const NetworkFailure.requestTimeout();
              break;
            case DioExceptionType.connectionError:
              networkFailure = const NetworkFailure.noInternetConnection();
              break;
            case DioExceptionType.receiveTimeout:
              networkFailure = const NetworkFailure.sendTimeout();
              break;
            case DioExceptionType.unknown:
              networkFailure = _handleResponse(error.response!);
              break;
            case DioExceptionType.sendTimeout:
              networkFailure = const NetworkFailure.sendTimeout();
              break;
            case DioExceptionType.badCertificate:
              networkFailure = const NetworkFailure.unexpectedError();
              break;
            case DioExceptionType.badResponse:
              networkFailure = const NetworkFailure.unexpectedError();
              break;
          }
        } else if (error is SocketException) {
          networkFailure = const NetworkFailure.noInternetConnection();
        } else {
          networkFailure = const NetworkFailure.unexpectedError();
        }
        return networkFailure;
      } on FormatException {
        return const NetworkFailure.formatException();
      } catch (_) {
        return const NetworkFailure.unexpectedError();
      }
    } else {
      if (error.toString().contains('is not a subtype of')) {
        return const NetworkFailure.unableToProcess();
      } else {
        return const NetworkFailure.unexpectedError();
      }
    }
  }

  static Failure getErrorMessage(NetworkFailure networkFailure) {
    String errorMessage = '';
    int code = 0;
    networkFailure.when(notImplemented: () {
      errorMessage = 'network_failure.not_implemented';
    }, requestCancelled: () {
      errorMessage = 'network_failure.request_cancelled';
    }, internalServerError: () {
      errorMessage = 'network_failure.internal_server_error';
    }, notFound: (String reason) {
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = 'network_failure.service_unavailable';
    }, methodNotAllowed: () {
      errorMessage = 'network_failure.method_not_allowed';
    }, badRequest: () {
      errorMessage = 'network_failure.bad_request';
    }, unauthorizedRequest: (String error, int code, String id) {
      errorMessage = error;
      code = code;
    }, unexpectedError: () {
      errorMessage = 'network_failure.unexpected_error_occurred';
    }, requestTimeout: () {
      errorMessage = 'network_failure.connection_request_timeout';
    }, noInternetConnection: () {
      errorMessage = 'network_failure.no_internet_connection';
    }, conflict: () {
      errorMessage = 'network_failure.conflict';
    }, sendTimeout: () {
      errorMessage = 'network_failure.send_timeout';
    }, unableToProcess: () {
      errorMessage = 'network_failure.unable_to_process';
    }, defaultError: (String error, int code) {
      errorMessage = error;
      code = code;
    }, formatException: () {
      errorMessage = 'network_failure.incorrect_format';
    }, notAcceptable: () {
      errorMessage = 'network_failure.not_acceptable';
    });
    return Failure(message: errorMessage, code: code);
  }

  static NetworkFailure _handleResponse(Response response) {
    final Map<String, dynamic> data = response.data as Map<String, dynamic>;

    int statusCode = data.containsKey('statusCode') ? data['statusCode'] : 0;
    String statusMessage = '';
    String id = '';

    if (data.containsKey('message')) {
      if (data['message'].runtimeType == String) {
        statusMessage = data['message'];
      } else {
        final failures = Failure.fromJson(data['message'][0]);
        statusMessage = failures.message;
      }
    }

    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return NetworkFailure.unauthorizedRequest(statusMessage, statusCode, id);
      case 404:
        return NetworkFailure.notFound(statusMessage);
      case 409:
        return const NetworkFailure.conflict();
      case 408:
        return const NetworkFailure.requestTimeout();
      case 500:
        return const NetworkFailure.internalServerError();
      case 503:
        return const NetworkFailure.serviceUnavailable();
      default:
        return NetworkFailure.defaultError('network_failure.invalid_status_code', statusCode);
    }
  }
}
