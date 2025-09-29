// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactResponse {

 String? get status; String? get message; bool? get success;
/// Create a copy of ContactResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactResponseCopyWith<ContactResponse> get copyWith => _$ContactResponseCopyWithImpl<ContactResponse>(this as ContactResponse, _$identity);

  /// Serializes this ContactResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,success);

@override
String toString() {
  return 'ContactResponse(status: $status, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $ContactResponseCopyWith<$Res>  {
  factory $ContactResponseCopyWith(ContactResponse value, $Res Function(ContactResponse) _then) = _$ContactResponseCopyWithImpl;
@useResult
$Res call({
 String? status, String? message, bool? success
});




}
/// @nodoc
class _$ContactResponseCopyWithImpl<$Res>
    implements $ContactResponseCopyWith<$Res> {
  _$ContactResponseCopyWithImpl(this._self, this._then);

  final ContactResponse _self;
  final $Res Function(ContactResponse) _then;

/// Create a copy of ContactResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContactResponse].
extension ContactResponsePatterns on ContactResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactResponse() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactResponse value)  $default,){
final _that = this;
switch (_that) {
case _ContactResponse():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ContactResponse() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  String? message,  bool? success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactResponse() when $default != null:
return $default(_that.status,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  String? message,  bool? success)  $default,) {final _that = this;
switch (_that) {
case _ContactResponse():
return $default(_that.status,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  String? message,  bool? success)?  $default,) {final _that = this;
switch (_that) {
case _ContactResponse() when $default != null:
return $default(_that.status,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContactResponse implements ContactResponse {
  const _ContactResponse({this.status, this.message, this.success});
  factory _ContactResponse.fromJson(Map<String, dynamic> json) => _$ContactResponseFromJson(json);

@override final  String? status;
@override final  String? message;
@override final  bool? success;

/// Create a copy of ContactResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactResponseCopyWith<_ContactResponse> get copyWith => __$ContactResponseCopyWithImpl<_ContactResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,success);

@override
String toString() {
  return 'ContactResponse(status: $status, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$ContactResponseCopyWith<$Res> implements $ContactResponseCopyWith<$Res> {
  factory _$ContactResponseCopyWith(_ContactResponse value, $Res Function(_ContactResponse) _then) = __$ContactResponseCopyWithImpl;
@override @useResult
$Res call({
 String? status, String? message, bool? success
});




}
/// @nodoc
class __$ContactResponseCopyWithImpl<$Res>
    implements _$ContactResponseCopyWith<$Res> {
  __$ContactResponseCopyWithImpl(this._self, this._then);

  final _ContactResponse _self;
  final $Res Function(_ContactResponse) _then;

/// Create a copy of ContactResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(_ContactResponse(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
