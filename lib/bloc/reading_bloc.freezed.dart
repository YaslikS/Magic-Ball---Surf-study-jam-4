// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReadingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReadingEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReadingEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReadingEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingEventCopyWith<$Res> {
  factory $ReadingEventCopyWith(
          ReadingEvent value, $Res Function(ReadingEvent) then) =
      _$ReadingEventCopyWithImpl<$Res, ReadingEvent>;
}

/// @nodoc
class _$ReadingEventCopyWithImpl<$Res, $Val extends ReadingEvent>
    implements $ReadingEventCopyWith<$Res> {
  _$ReadingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadReadingEventImplCopyWith<$Res> {
  factory _$$LoadReadingEventImplCopyWith(_$LoadReadingEventImpl value,
          $Res Function(_$LoadReadingEventImpl) then) =
      __$$LoadReadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadReadingEventImplCopyWithImpl<$Res>
    extends _$ReadingEventCopyWithImpl<$Res, _$LoadReadingEventImpl>
    implements _$$LoadReadingEventImplCopyWith<$Res> {
  __$$LoadReadingEventImplCopyWithImpl(_$LoadReadingEventImpl _value,
      $Res Function(_$LoadReadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadReadingEventImpl implements LoadReadingEvent {
  const _$LoadReadingEventImpl();

  @override
  String toString() {
    return 'ReadingEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadReadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReadingEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReadingEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReadingEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadReadingEvent implements ReadingEvent {
  const factory LoadReadingEvent() = _$LoadReadingEventImpl;
}

/// @nodoc
mixin _$ReadingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool firstTime) loading,
    required TResult Function(Reading reading) loaded,
    required TResult Function(Object exception) loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool firstTime)? loading,
    TResult? Function(Reading reading)? loaded,
    TResult? Function(Object exception)? loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool firstTime)? loading,
    TResult Function(Reading reading)? loaded,
    TResult Function(Object exception)? loadingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadingInitialState value) initial,
    required TResult Function(_ReadingLoadingState value) loading,
    required TResult Function(_ReadingLoadedState value) loaded,
    required TResult Function(_ReadingLoadingFailureState value) loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadingInitialState value)? initial,
    TResult? Function(_ReadingLoadingState value)? loading,
    TResult? Function(_ReadingLoadedState value)? loaded,
    TResult? Function(_ReadingLoadingFailureState value)? loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadingInitialState value)? initial,
    TResult Function(_ReadingLoadingState value)? loading,
    TResult Function(_ReadingLoadedState value)? loaded,
    TResult Function(_ReadingLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingStateCopyWith<$Res> {
  factory $ReadingStateCopyWith(
          ReadingState value, $Res Function(ReadingState) then) =
      _$ReadingStateCopyWithImpl<$Res, ReadingState>;
}

/// @nodoc
class _$ReadingStateCopyWithImpl<$Res, $Val extends ReadingState>
    implements $ReadingStateCopyWith<$Res> {
  _$ReadingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReadingInitialStateImplCopyWith<$Res> {
  factory _$$ReadingInitialStateImplCopyWith(_$ReadingInitialStateImpl value,
          $Res Function(_$ReadingInitialStateImpl) then) =
      __$$ReadingInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadingInitialStateImplCopyWithImpl<$Res>
    extends _$ReadingStateCopyWithImpl<$Res, _$ReadingInitialStateImpl>
    implements _$$ReadingInitialStateImplCopyWith<$Res> {
  __$$ReadingInitialStateImplCopyWithImpl(_$ReadingInitialStateImpl _value,
      $Res Function(_$ReadingInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReadingInitialStateImpl implements _ReadingInitialState {
  const _$ReadingInitialStateImpl();

  @override
  String toString() {
    return 'ReadingState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool firstTime) loading,
    required TResult Function(Reading reading) loaded,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool firstTime)? loading,
    TResult? Function(Reading reading)? loaded,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool firstTime)? loading,
    TResult Function(Reading reading)? loaded,
    TResult Function(Object exception)? loadingFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadingInitialState value) initial,
    required TResult Function(_ReadingLoadingState value) loading,
    required TResult Function(_ReadingLoadedState value) loaded,
    required TResult Function(_ReadingLoadingFailureState value) loadingFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadingInitialState value)? initial,
    TResult? Function(_ReadingLoadingState value)? loading,
    TResult? Function(_ReadingLoadedState value)? loaded,
    TResult? Function(_ReadingLoadingFailureState value)? loadingFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadingInitialState value)? initial,
    TResult Function(_ReadingLoadingState value)? loading,
    TResult Function(_ReadingLoadedState value)? loaded,
    TResult Function(_ReadingLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ReadingInitialState implements ReadingState {
  const factory _ReadingInitialState() = _$ReadingInitialStateImpl;
}

/// @nodoc
abstract class _$$ReadingLoadingStateImplCopyWith<$Res> {
  factory _$$ReadingLoadingStateImplCopyWith(_$ReadingLoadingStateImpl value,
          $Res Function(_$ReadingLoadingStateImpl) then) =
      __$$ReadingLoadingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool firstTime});
}

/// @nodoc
class __$$ReadingLoadingStateImplCopyWithImpl<$Res>
    extends _$ReadingStateCopyWithImpl<$Res, _$ReadingLoadingStateImpl>
    implements _$$ReadingLoadingStateImplCopyWith<$Res> {
  __$$ReadingLoadingStateImplCopyWithImpl(_$ReadingLoadingStateImpl _value,
      $Res Function(_$ReadingLoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstTime = null,
  }) {
    return _then(_$ReadingLoadingStateImpl(
      firstTime: null == firstTime
          ? _value.firstTime
          : firstTime // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ReadingLoadingStateImpl implements _ReadingLoadingState {
  const _$ReadingLoadingStateImpl({required this.firstTime});

  @override
  final bool firstTime;

  @override
  String toString() {
    return 'ReadingState.loading(firstTime: $firstTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingLoadingStateImpl &&
            (identical(other.firstTime, firstTime) ||
                other.firstTime == firstTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingLoadingStateImplCopyWith<_$ReadingLoadingStateImpl> get copyWith =>
      __$$ReadingLoadingStateImplCopyWithImpl<_$ReadingLoadingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool firstTime) loading,
    required TResult Function(Reading reading) loaded,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return loading(firstTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool firstTime)? loading,
    TResult? Function(Reading reading)? loaded,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return loading?.call(firstTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool firstTime)? loading,
    TResult Function(Reading reading)? loaded,
    TResult Function(Object exception)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(firstTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadingInitialState value) initial,
    required TResult Function(_ReadingLoadingState value) loading,
    required TResult Function(_ReadingLoadedState value) loaded,
    required TResult Function(_ReadingLoadingFailureState value) loadingFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadingInitialState value)? initial,
    TResult? Function(_ReadingLoadingState value)? loading,
    TResult? Function(_ReadingLoadedState value)? loaded,
    TResult? Function(_ReadingLoadingFailureState value)? loadingFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadingInitialState value)? initial,
    TResult Function(_ReadingLoadingState value)? loading,
    TResult Function(_ReadingLoadedState value)? loaded,
    TResult Function(_ReadingLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ReadingLoadingState implements ReadingState {
  const factory _ReadingLoadingState({required final bool firstTime}) =
      _$ReadingLoadingStateImpl;

  bool get firstTime;
  @JsonKey(ignore: true)
  _$$ReadingLoadingStateImplCopyWith<_$ReadingLoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadingLoadedStateImplCopyWith<$Res> {
  factory _$$ReadingLoadedStateImplCopyWith(_$ReadingLoadedStateImpl value,
          $Res Function(_$ReadingLoadedStateImpl) then) =
      __$$ReadingLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Reading reading});
}

/// @nodoc
class __$$ReadingLoadedStateImplCopyWithImpl<$Res>
    extends _$ReadingStateCopyWithImpl<$Res, _$ReadingLoadedStateImpl>
    implements _$$ReadingLoadedStateImplCopyWith<$Res> {
  __$$ReadingLoadedStateImplCopyWithImpl(_$ReadingLoadedStateImpl _value,
      $Res Function(_$ReadingLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reading = null,
  }) {
    return _then(_$ReadingLoadedStateImpl(
      reading: null == reading
          ? _value.reading
          : reading // ignore: cast_nullable_to_non_nullable
              as Reading,
    ));
  }
}

/// @nodoc

class _$ReadingLoadedStateImpl implements _ReadingLoadedState {
  const _$ReadingLoadedStateImpl({required this.reading});

  @override
  final Reading reading;

  @override
  String toString() {
    return 'ReadingState.loaded(reading: $reading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingLoadedStateImpl &&
            (identical(other.reading, reading) || other.reading == reading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingLoadedStateImplCopyWith<_$ReadingLoadedStateImpl> get copyWith =>
      __$$ReadingLoadedStateImplCopyWithImpl<_$ReadingLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool firstTime) loading,
    required TResult Function(Reading reading) loaded,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return loaded(reading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool firstTime)? loading,
    TResult? Function(Reading reading)? loaded,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return loaded?.call(reading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool firstTime)? loading,
    TResult Function(Reading reading)? loaded,
    TResult Function(Object exception)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(reading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadingInitialState value) initial,
    required TResult Function(_ReadingLoadingState value) loading,
    required TResult Function(_ReadingLoadedState value) loaded,
    required TResult Function(_ReadingLoadingFailureState value) loadingFailure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadingInitialState value)? initial,
    TResult? Function(_ReadingLoadingState value)? loading,
    TResult? Function(_ReadingLoadedState value)? loaded,
    TResult? Function(_ReadingLoadingFailureState value)? loadingFailure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadingInitialState value)? initial,
    TResult Function(_ReadingLoadingState value)? loading,
    TResult Function(_ReadingLoadedState value)? loaded,
    TResult Function(_ReadingLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ReadingLoadedState implements ReadingState {
  const factory _ReadingLoadedState({required final Reading reading}) =
      _$ReadingLoadedStateImpl;

  Reading get reading;
  @JsonKey(ignore: true)
  _$$ReadingLoadedStateImplCopyWith<_$ReadingLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadingLoadingFailureStateImplCopyWith<$Res> {
  factory _$$ReadingLoadingFailureStateImplCopyWith(
          _$ReadingLoadingFailureStateImpl value,
          $Res Function(_$ReadingLoadingFailureStateImpl) then) =
      __$$ReadingLoadingFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object exception});
}

/// @nodoc
class __$$ReadingLoadingFailureStateImplCopyWithImpl<$Res>
    extends _$ReadingStateCopyWithImpl<$Res, _$ReadingLoadingFailureStateImpl>
    implements _$$ReadingLoadingFailureStateImplCopyWith<$Res> {
  __$$ReadingLoadingFailureStateImplCopyWithImpl(
      _$ReadingLoadingFailureStateImpl _value,
      $Res Function(_$ReadingLoadingFailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$ReadingLoadingFailureStateImpl(
      exception: null == exception ? _value.exception : exception,
    ));
  }
}

/// @nodoc

class _$ReadingLoadingFailureStateImpl implements _ReadingLoadingFailureState {
  const _$ReadingLoadingFailureStateImpl({required this.exception});

  @override
  final Object exception;

  @override
  String toString() {
    return 'ReadingState.loadingFailure(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingLoadingFailureStateImpl &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingLoadingFailureStateImplCopyWith<_$ReadingLoadingFailureStateImpl>
      get copyWith => __$$ReadingLoadingFailureStateImplCopyWithImpl<
          _$ReadingLoadingFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool firstTime) loading,
    required TResult Function(Reading reading) loaded,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return loadingFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool firstTime)? loading,
    TResult? Function(Reading reading)? loaded,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return loadingFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool firstTime)? loading,
    TResult Function(Reading reading)? loaded,
    TResult Function(Object exception)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingFailure != null) {
      return loadingFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadingInitialState value) initial,
    required TResult Function(_ReadingLoadingState value) loading,
    required TResult Function(_ReadingLoadedState value) loaded,
    required TResult Function(_ReadingLoadingFailureState value) loadingFailure,
  }) {
    return loadingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadingInitialState value)? initial,
    TResult? Function(_ReadingLoadingState value)? loading,
    TResult? Function(_ReadingLoadedState value)? loaded,
    TResult? Function(_ReadingLoadingFailureState value)? loadingFailure,
  }) {
    return loadingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadingInitialState value)? initial,
    TResult Function(_ReadingLoadingState value)? loading,
    TResult Function(_ReadingLoadedState value)? loaded,
    TResult Function(_ReadingLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingFailure != null) {
      return loadingFailure(this);
    }
    return orElse();
  }
}

abstract class _ReadingLoadingFailureState implements ReadingState {
  const factory _ReadingLoadingFailureState({required final Object exception}) =
      _$ReadingLoadingFailureStateImpl;

  Object get exception;
  @JsonKey(ignore: true)
  _$$ReadingLoadingFailureStateImplCopyWith<_$ReadingLoadingFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
