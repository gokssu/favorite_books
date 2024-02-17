// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BooksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Book> data) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Book> data)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Book> data)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooksStateLoading value) loading,
    required TResult Function(_BooksStateLoaded value) loaded,
    required TResult Function(_BooksStateStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BooksStateLoading value)? loading,
    TResult? Function(_BooksStateLoaded value)? loaded,
    TResult? Function(_BooksStateStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateLoaded value)? loaded,
    TResult Function(_BooksStateStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksStateCopyWith<$Res> {
  factory $BooksStateCopyWith(
          BooksState value, $Res Function(BooksState) then) =
      _$BooksStateCopyWithImpl<$Res, BooksState>;
}

/// @nodoc
class _$BooksStateCopyWithImpl<$Res, $Val extends BooksState>
    implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BooksStateLoadingImplCopyWith<$Res> {
  factory _$$BooksStateLoadingImplCopyWith(_$BooksStateLoadingImpl value,
          $Res Function(_$BooksStateLoadingImpl) then) =
      __$$BooksStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BooksStateLoadingImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$BooksStateLoadingImpl>
    implements _$$BooksStateLoadingImplCopyWith<$Res> {
  __$$BooksStateLoadingImplCopyWithImpl(_$BooksStateLoadingImpl _value,
      $Res Function(_$BooksStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BooksStateLoadingImpl implements _BooksStateLoading {
  const _$BooksStateLoadingImpl();

  @override
  String toString() {
    return 'BooksState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BooksStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Book> data) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Book> data)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Book> data)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooksStateLoading value) loading,
    required TResult Function(_BooksStateLoaded value) loaded,
    required TResult Function(_BooksStateStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BooksStateLoading value)? loading,
    TResult? Function(_BooksStateLoaded value)? loaded,
    TResult? Function(_BooksStateStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateLoaded value)? loaded,
    TResult Function(_BooksStateStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _BooksStateLoading implements BooksState {
  const factory _BooksStateLoading() = _$BooksStateLoadingImpl;
}

/// @nodoc
abstract class _$$BooksStateLoadedImplCopyWith<$Res> {
  factory _$$BooksStateLoadedImplCopyWith(_$BooksStateLoadedImpl value,
          $Res Function(_$BooksStateLoadedImpl) then) =
      __$$BooksStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Book> data});
}

/// @nodoc
class __$$BooksStateLoadedImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$BooksStateLoadedImpl>
    implements _$$BooksStateLoadedImplCopyWith<$Res> {
  __$$BooksStateLoadedImplCopyWithImpl(_$BooksStateLoadedImpl _value,
      $Res Function(_$BooksStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$BooksStateLoadedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$BooksStateLoadedImpl implements _BooksStateLoaded {
  const _$BooksStateLoadedImpl({required final List<Book> data}) : _data = data;

  final List<Book> _data;
  @override
  List<Book> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BooksState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksStateLoadedImplCopyWith<_$BooksStateLoadedImpl> get copyWith =>
      __$$BooksStateLoadedImplCopyWithImpl<_$BooksStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Book> data) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Book> data)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Book> data)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooksStateLoading value) loading,
    required TResult Function(_BooksStateLoaded value) loaded,
    required TResult Function(_BooksStateStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BooksStateLoading value)? loading,
    TResult? Function(_BooksStateLoaded value)? loaded,
    TResult? Function(_BooksStateStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateLoaded value)? loaded,
    TResult Function(_BooksStateStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _BooksStateLoaded implements BooksState {
  const factory _BooksStateLoaded({required final List<Book> data}) =
      _$BooksStateLoadedImpl;

  List<Book> get data;
  @JsonKey(ignore: true)
  _$$BooksStateLoadedImplCopyWith<_$BooksStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BooksStateStateErrorImplCopyWith<$Res> {
  factory _$$BooksStateStateErrorImplCopyWith(_$BooksStateStateErrorImpl value,
          $Res Function(_$BooksStateStateErrorImpl) then) =
      __$$BooksStateStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BooksStateStateErrorImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$BooksStateStateErrorImpl>
    implements _$$BooksStateStateErrorImplCopyWith<$Res> {
  __$$BooksStateStateErrorImplCopyWithImpl(_$BooksStateStateErrorImpl _value,
      $Res Function(_$BooksStateStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BooksStateStateErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BooksStateStateErrorImpl implements _BooksStateStateError {
  const _$BooksStateStateErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'BooksState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksStateStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksStateStateErrorImplCopyWith<_$BooksStateStateErrorImpl>
      get copyWith =>
          __$$BooksStateStateErrorImplCopyWithImpl<_$BooksStateStateErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Book> data) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Book> data)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Book> data)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooksStateLoading value) loading,
    required TResult Function(_BooksStateLoaded value) loaded,
    required TResult Function(_BooksStateStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BooksStateLoading value)? loading,
    TResult? Function(_BooksStateLoaded value)? loaded,
    TResult? Function(_BooksStateStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateLoaded value)? loaded,
    TResult Function(_BooksStateStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _BooksStateStateError implements BooksState {
  const factory _BooksStateStateError(final String error) =
      _$BooksStateStateErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$BooksStateStateErrorImplCopyWith<_$BooksStateStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
