// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FavoriteBook> data) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FavoriteBook> data)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FavoriteBook> data)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteStateLoading value) loading,
    required TResult Function(_FavoriteStateLoaded value) loaded,
    required TResult Function(_FavoriteStateStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteStateLoading value)? loading,
    TResult? Function(_FavoriteStateLoaded value)? loaded,
    TResult? Function(_FavoriteStateStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteStateLoading value)? loading,
    TResult Function(_FavoriteStateLoaded value)? loaded,
    TResult Function(_FavoriteStateStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoriteStateLoadingImplCopyWith<$Res> {
  factory _$$FavoriteStateLoadingImplCopyWith(_$FavoriteStateLoadingImpl value,
          $Res Function(_$FavoriteStateLoadingImpl) then) =
      __$$FavoriteStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteStateLoadingImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteStateLoadingImpl>
    implements _$$FavoriteStateLoadingImplCopyWith<$Res> {
  __$$FavoriteStateLoadingImplCopyWithImpl(_$FavoriteStateLoadingImpl _value,
      $Res Function(_$FavoriteStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteStateLoadingImpl implements _FavoriteStateLoading {
  const _$FavoriteStateLoadingImpl();

  @override
  String toString() {
    return 'FavoriteState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FavoriteBook> data) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FavoriteBook> data)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FavoriteBook> data)? loaded,
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
    required TResult Function(_FavoriteStateLoading value) loading,
    required TResult Function(_FavoriteStateLoaded value) loaded,
    required TResult Function(_FavoriteStateStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteStateLoading value)? loading,
    TResult? Function(_FavoriteStateLoaded value)? loaded,
    TResult? Function(_FavoriteStateStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteStateLoading value)? loading,
    TResult Function(_FavoriteStateLoaded value)? loaded,
    TResult Function(_FavoriteStateStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FavoriteStateLoading implements FavoriteState {
  const factory _FavoriteStateLoading() = _$FavoriteStateLoadingImpl;
}

/// @nodoc
abstract class _$$FavoriteStateLoadedImplCopyWith<$Res> {
  factory _$$FavoriteStateLoadedImplCopyWith(_$FavoriteStateLoadedImpl value,
          $Res Function(_$FavoriteStateLoadedImpl) then) =
      __$$FavoriteStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FavoriteBook> data});
}

/// @nodoc
class __$$FavoriteStateLoadedImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteStateLoadedImpl>
    implements _$$FavoriteStateLoadedImplCopyWith<$Res> {
  __$$FavoriteStateLoadedImplCopyWithImpl(_$FavoriteStateLoadedImpl _value,
      $Res Function(_$FavoriteStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$FavoriteStateLoadedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FavoriteBook>,
    ));
  }
}

/// @nodoc

class _$FavoriteStateLoadedImpl implements _FavoriteStateLoaded {
  const _$FavoriteStateLoadedImpl({required final List<FavoriteBook> data})
      : _data = data;

  final List<FavoriteBook> _data;
  @override
  List<FavoriteBook> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FavoriteState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStateLoadedImplCopyWith<_$FavoriteStateLoadedImpl> get copyWith =>
      __$$FavoriteStateLoadedImplCopyWithImpl<_$FavoriteStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FavoriteBook> data) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FavoriteBook> data)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FavoriteBook> data)? loaded,
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
    required TResult Function(_FavoriteStateLoading value) loading,
    required TResult Function(_FavoriteStateLoaded value) loaded,
    required TResult Function(_FavoriteStateStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteStateLoading value)? loading,
    TResult? Function(_FavoriteStateLoaded value)? loaded,
    TResult? Function(_FavoriteStateStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteStateLoading value)? loading,
    TResult Function(_FavoriteStateLoaded value)? loaded,
    TResult Function(_FavoriteStateStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _FavoriteStateLoaded implements FavoriteState {
  const factory _FavoriteStateLoaded({required final List<FavoriteBook> data}) =
      _$FavoriteStateLoadedImpl;

  List<FavoriteBook> get data;
  @JsonKey(ignore: true)
  _$$FavoriteStateLoadedImplCopyWith<_$FavoriteStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteStateStateErrorImplCopyWith<$Res> {
  factory _$$FavoriteStateStateErrorImplCopyWith(
          _$FavoriteStateStateErrorImpl value,
          $Res Function(_$FavoriteStateStateErrorImpl) then) =
      __$$FavoriteStateStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FavoriteStateStateErrorImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteStateStateErrorImpl>
    implements _$$FavoriteStateStateErrorImplCopyWith<$Res> {
  __$$FavoriteStateStateErrorImplCopyWithImpl(
      _$FavoriteStateStateErrorImpl _value,
      $Res Function(_$FavoriteStateStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FavoriteStateStateErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavoriteStateStateErrorImpl implements _FavoriteStateStateError {
  const _$FavoriteStateStateErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FavoriteState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStateStateErrorImplCopyWith<_$FavoriteStateStateErrorImpl>
      get copyWith => __$$FavoriteStateStateErrorImplCopyWithImpl<
          _$FavoriteStateStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FavoriteBook> data) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FavoriteBook> data)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FavoriteBook> data)? loaded,
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
    required TResult Function(_FavoriteStateLoading value) loading,
    required TResult Function(_FavoriteStateLoaded value) loaded,
    required TResult Function(_FavoriteStateStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteStateLoading value)? loading,
    TResult? Function(_FavoriteStateLoaded value)? loaded,
    TResult? Function(_FavoriteStateStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteStateLoading value)? loading,
    TResult Function(_FavoriteStateLoaded value)? loaded,
    TResult Function(_FavoriteStateStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FavoriteStateStateError implements FavoriteState {
  const factory _FavoriteStateStateError(final String error) =
      _$FavoriteStateStateErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$FavoriteStateStateErrorImplCopyWith<_$FavoriteStateStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
