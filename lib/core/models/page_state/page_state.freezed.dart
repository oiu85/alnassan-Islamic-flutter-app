// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PageState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PageState<$T>()';
}


}

/// @nodoc
class $PageStateCopyWith<T,$Res>  {
$PageStateCopyWith(PageState<T> _, $Res Function(PageState<T>) __);
}


/// Adds pattern-matching-related methods to [PageState].
extension PageStatePatterns<T> on PageState<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _init<T> value)?  init,TResult Function( _Lodaing<T> value)?  loading,TResult Function( _Loaded<T> value)?  loaded,TResult Function( _Empty<T> value)?  empty,TResult Function( _Error<T> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _init() when init != null:
return init(_that);case _Lodaing() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Empty() when empty != null:
return empty(_that);case _Error() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _init<T> value)  init,required TResult Function( _Lodaing<T> value)  loading,required TResult Function( _Loaded<T> value)  loaded,required TResult Function( _Empty<T> value)  empty,required TResult Function( _Error<T> value)  error,}){
final _that = this;
switch (_that) {
case _init():
return init(_that);case _Lodaing():
return loading(_that);case _Loaded():
return loaded(_that);case _Empty():
return empty(_that);case _Error():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _init<T> value)?  init,TResult? Function( _Lodaing<T> value)?  loading,TResult? Function( _Loaded<T> value)?  loaded,TResult? Function( _Empty<T> value)?  empty,TResult? Function( _Error<T> value)?  error,}){
final _that = this;
switch (_that) {
case _init() when init != null:
return init(_that);case _Lodaing() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Empty() when empty != null:
return empty(_that);case _Error() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  loading,TResult Function( T data)?  loaded,TResult Function()?  empty,TResult Function( Exception? exception)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _init() when init != null:
return init();case _Lodaing() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.data);case _Empty() when empty != null:
return empty();case _Error() when error != null:
return error(_that.exception);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  loading,required TResult Function( T data)  loaded,required TResult Function()  empty,required TResult Function( Exception? exception)  error,}) {final _that = this;
switch (_that) {
case _init():
return init();case _Lodaing():
return loading();case _Loaded():
return loaded(_that.data);case _Empty():
return empty();case _Error():
return error(_that.exception);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  loading,TResult? Function( T data)?  loaded,TResult? Function()?  empty,TResult? Function( Exception? exception)?  error,}) {final _that = this;
switch (_that) {
case _init() when init != null:
return init();case _Lodaing() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.data);case _Empty() when empty != null:
return empty();case _Error() when error != null:
return error(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _init<T> extends PageState<T> {
  const _init(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _init<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PageState<$T>.init()';
}


}




/// @nodoc


class _Lodaing<T> extends PageState<T> {
  const _Lodaing(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lodaing<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PageState<$T>.loading()';
}


}




/// @nodoc


class _Loaded<T> extends PageState<T> {
  const _Loaded({required this.data}): super._();
  

 final  T data;

/// Create a copy of PageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<T, _Loaded<T>> get copyWith => __$LoadedCopyWithImpl<T, _Loaded<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'PageState<$T>.loaded(data: $data)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<T,$Res> implements $PageStateCopyWith<T, $Res> {
  factory _$LoadedCopyWith(_Loaded<T> value, $Res Function(_Loaded<T>) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class __$LoadedCopyWithImpl<T,$Res>
    implements _$LoadedCopyWith<T, $Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded<T> _self;
  final $Res Function(_Loaded<T>) _then;

/// Create a copy of PageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_Loaded<T>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class _Empty<T> extends PageState<T> {
  const _Empty(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Empty<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PageState<$T>.empty()';
}


}




/// @nodoc


class _Error<T> extends PageState<T> {
  const _Error({this.exception}): super._();
  

 final  Exception? exception;

/// Create a copy of PageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<T, _Error<T>> get copyWith => __$ErrorCopyWithImpl<T, _Error<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error<T>&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'PageState<$T>.error(exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<T,$Res> implements $PageStateCopyWith<T, $Res> {
  factory _$ErrorCopyWith(_Error<T> value, $Res Function(_Error<T>) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class __$ErrorCopyWithImpl<T,$Res>
    implements _$ErrorCopyWith<T, $Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error<T> _self;
  final $Res Function(_Error<T>) _then;

/// Create a copy of PageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(_Error<T>(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
