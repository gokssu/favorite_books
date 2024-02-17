import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.g.dart';

@JsonSerializable()
class Failure extends Equatable {
  final String message;
  final int? code;

  const Failure({required this.message, this.code});

  factory Failure.fromJson(Map<String, dynamic> data) => _$FailureFromJson(data);

  Map<String, dynamic> toJson() => _$FailureToJson(this);

  @override
  List<Object?> get props => [code, message];

  @override
  bool get stringify => true;
}
