// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habib_mustafa_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HabibMustafaModel {

 String? get status; HabibMustafaData? get data; Meta? get meta;
/// Create a copy of HabibMustafaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HabibMustafaModelCopyWith<HabibMustafaModel> get copyWith => _$HabibMustafaModelCopyWithImpl<HabibMustafaModel>(this as HabibMustafaModel, _$identity);

  /// Serializes this HabibMustafaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HabibMustafaModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,meta);

@override
String toString() {
  return 'HabibMustafaModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $HabibMustafaModelCopyWith<$Res>  {
  factory $HabibMustafaModelCopyWith(HabibMustafaModel value, $Res Function(HabibMustafaModel) _then) = _$HabibMustafaModelCopyWithImpl;
@useResult
$Res call({
 String? status, HabibMustafaData? data, Meta? meta
});


$HabibMustafaDataCopyWith<$Res>? get data;$MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$HabibMustafaModelCopyWithImpl<$Res>
    implements $HabibMustafaModelCopyWith<$Res> {
  _$HabibMustafaModelCopyWithImpl(this._self, this._then);

  final HabibMustafaModel _self;
  final $Res Function(HabibMustafaModel) _then;

/// Create a copy of HabibMustafaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HabibMustafaData?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}
/// Create a copy of HabibMustafaModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HabibMustafaDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $HabibMustafaDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of HabibMustafaModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [HabibMustafaModel].
extension HabibMustafaModelPatterns on HabibMustafaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HabibMustafaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HabibMustafaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HabibMustafaModel value)  $default,){
final _that = this;
switch (_that) {
case _HabibMustafaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HabibMustafaModel value)?  $default,){
final _that = this;
switch (_that) {
case _HabibMustafaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  HabibMustafaData? data,  Meta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HabibMustafaModel() when $default != null:
return $default(_that.status,_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  HabibMustafaData? data,  Meta? meta)  $default,) {final _that = this;
switch (_that) {
case _HabibMustafaModel():
return $default(_that.status,_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  HabibMustafaData? data,  Meta? meta)?  $default,) {final _that = this;
switch (_that) {
case _HabibMustafaModel() when $default != null:
return $default(_that.status,_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HabibMustafaModel implements HabibMustafaModel {
  const _HabibMustafaModel({this.status, this.data, this.meta});
  factory _HabibMustafaModel.fromJson(Map<String, dynamic> json) => _$HabibMustafaModelFromJson(json);

@override final  String? status;
@override final  HabibMustafaData? data;
@override final  Meta? meta;

/// Create a copy of HabibMustafaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HabibMustafaModelCopyWith<_HabibMustafaModel> get copyWith => __$HabibMustafaModelCopyWithImpl<_HabibMustafaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HabibMustafaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HabibMustafaModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,meta);

@override
String toString() {
  return 'HabibMustafaModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$HabibMustafaModelCopyWith<$Res> implements $HabibMustafaModelCopyWith<$Res> {
  factory _$HabibMustafaModelCopyWith(_HabibMustafaModel value, $Res Function(_HabibMustafaModel) _then) = __$HabibMustafaModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, HabibMustafaData? data, Meta? meta
});


@override $HabibMustafaDataCopyWith<$Res>? get data;@override $MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$HabibMustafaModelCopyWithImpl<$Res>
    implements _$HabibMustafaModelCopyWith<$Res> {
  __$HabibMustafaModelCopyWithImpl(this._self, this._then);

  final _HabibMustafaModel _self;
  final $Res Function(_HabibMustafaModel) _then;

/// Create a copy of HabibMustafaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_HabibMustafaModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HabibMustafaData?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}

/// Create a copy of HabibMustafaModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HabibMustafaDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $HabibMustafaDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of HabibMustafaModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$HabibMustafaData {

@JsonKey(name: 'sub_categories') List<SubCategory>? get subCategories;
/// Create a copy of HabibMustafaData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HabibMustafaDataCopyWith<HabibMustafaData> get copyWith => _$HabibMustafaDataCopyWithImpl<HabibMustafaData>(this as HabibMustafaData, _$identity);

  /// Serializes this HabibMustafaData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HabibMustafaData&&const DeepCollectionEquality().equals(other.subCategories, subCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(subCategories));

@override
String toString() {
  return 'HabibMustafaData(subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class $HabibMustafaDataCopyWith<$Res>  {
  factory $HabibMustafaDataCopyWith(HabibMustafaData value, $Res Function(HabibMustafaData) _then) = _$HabibMustafaDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sub_categories') List<SubCategory>? subCategories
});




}
/// @nodoc
class _$HabibMustafaDataCopyWithImpl<$Res>
    implements $HabibMustafaDataCopyWith<$Res> {
  _$HabibMustafaDataCopyWithImpl(this._self, this._then);

  final HabibMustafaData _self;
  final $Res Function(HabibMustafaData) _then;

/// Create a copy of HabibMustafaData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subCategories = freezed,}) {
  return _then(_self.copyWith(
subCategories: freezed == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<SubCategory>?,
  ));
}

}


/// Adds pattern-matching-related methods to [HabibMustafaData].
extension HabibMustafaDataPatterns on HabibMustafaData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HabibMustafaData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HabibMustafaData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HabibMustafaData value)  $default,){
final _that = this;
switch (_that) {
case _HabibMustafaData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HabibMustafaData value)?  $default,){
final _that = this;
switch (_that) {
case _HabibMustafaData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sub_categories')  List<SubCategory>? subCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HabibMustafaData() when $default != null:
return $default(_that.subCategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sub_categories')  List<SubCategory>? subCategories)  $default,) {final _that = this;
switch (_that) {
case _HabibMustafaData():
return $default(_that.subCategories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sub_categories')  List<SubCategory>? subCategories)?  $default,) {final _that = this;
switch (_that) {
case _HabibMustafaData() when $default != null:
return $default(_that.subCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HabibMustafaData implements HabibMustafaData {
  const _HabibMustafaData({@JsonKey(name: 'sub_categories') final  List<SubCategory>? subCategories}): _subCategories = subCategories;
  factory _HabibMustafaData.fromJson(Map<String, dynamic> json) => _$HabibMustafaDataFromJson(json);

 final  List<SubCategory>? _subCategories;
@override@JsonKey(name: 'sub_categories') List<SubCategory>? get subCategories {
  final value = _subCategories;
  if (value == null) return null;
  if (_subCategories is EqualUnmodifiableListView) return _subCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HabibMustafaData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HabibMustafaDataCopyWith<_HabibMustafaData> get copyWith => __$HabibMustafaDataCopyWithImpl<_HabibMustafaData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HabibMustafaDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HabibMustafaData&&const DeepCollectionEquality().equals(other._subCategories, _subCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_subCategories));

@override
String toString() {
  return 'HabibMustafaData(subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class _$HabibMustafaDataCopyWith<$Res> implements $HabibMustafaDataCopyWith<$Res> {
  factory _$HabibMustafaDataCopyWith(_HabibMustafaData value, $Res Function(_HabibMustafaData) _then) = __$HabibMustafaDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sub_categories') List<SubCategory>? subCategories
});




}
/// @nodoc
class __$HabibMustafaDataCopyWithImpl<$Res>
    implements _$HabibMustafaDataCopyWith<$Res> {
  __$HabibMustafaDataCopyWithImpl(this._self, this._then);

  final _HabibMustafaData _self;
  final $Res Function(_HabibMustafaData) _then;

/// Create a copy of HabibMustafaData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subCategories = freezed,}) {
  return _then(_HabibMustafaData(
subCategories: freezed == subCategories ? _self._subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<SubCategory>?,
  ));
}


}


/// @nodoc
mixin _$Meta {

@JsonKey(name: 'pagination_params') PaginationParams? get paginationParams;@JsonKey(name: 'response_info') ResponseInfo? get responseInfo;
/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaCopyWith<Meta> get copyWith => _$MetaCopyWithImpl<Meta>(this as Meta, _$identity);

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Meta&&(identical(other.paginationParams, paginationParams) || other.paginationParams == paginationParams)&&(identical(other.responseInfo, responseInfo) || other.responseInfo == responseInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paginationParams,responseInfo);

@override
String toString() {
  return 'Meta(paginationParams: $paginationParams, responseInfo: $responseInfo)';
}


}

/// @nodoc
abstract mixin class $MetaCopyWith<$Res>  {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) _then) = _$MetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'pagination_params') PaginationParams? paginationParams,@JsonKey(name: 'response_info') ResponseInfo? responseInfo
});


$PaginationParamsCopyWith<$Res>? get paginationParams;$ResponseInfoCopyWith<$Res>? get responseInfo;

}
/// @nodoc
class _$MetaCopyWithImpl<$Res>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._self, this._then);

  final Meta _self;
  final $Res Function(Meta) _then;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paginationParams = freezed,Object? responseInfo = freezed,}) {
  return _then(_self.copyWith(
paginationParams: freezed == paginationParams ? _self.paginationParams : paginationParams // ignore: cast_nullable_to_non_nullable
as PaginationParams?,responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as ResponseInfo?,
  ));
}
/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationParamsCopyWith<$Res>? get paginationParams {
    if (_self.paginationParams == null) {
    return null;
  }

  return $PaginationParamsCopyWith<$Res>(_self.paginationParams!, (value) {
    return _then(_self.copyWith(paginationParams: value));
  });
}/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseInfoCopyWith<$Res>? get responseInfo {
    if (_self.responseInfo == null) {
    return null;
  }

  return $ResponseInfoCopyWith<$Res>(_self.responseInfo!, (value) {
    return _then(_self.copyWith(responseInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [Meta].
extension MetaPatterns on Meta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Meta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Meta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Meta value)  $default,){
final _that = this;
switch (_that) {
case _Meta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Meta value)?  $default,){
final _that = this;
switch (_that) {
case _Meta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'pagination_params')  PaginationParams? paginationParams, @JsonKey(name: 'response_info')  ResponseInfo? responseInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Meta() when $default != null:
return $default(_that.paginationParams,_that.responseInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'pagination_params')  PaginationParams? paginationParams, @JsonKey(name: 'response_info')  ResponseInfo? responseInfo)  $default,) {final _that = this;
switch (_that) {
case _Meta():
return $default(_that.paginationParams,_that.responseInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'pagination_params')  PaginationParams? paginationParams, @JsonKey(name: 'response_info')  ResponseInfo? responseInfo)?  $default,) {final _that = this;
switch (_that) {
case _Meta() when $default != null:
return $default(_that.paginationParams,_that.responseInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Meta implements Meta {
  const _Meta({@JsonKey(name: 'pagination_params') this.paginationParams, @JsonKey(name: 'response_info') this.responseInfo});
  factory _Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

@override@JsonKey(name: 'pagination_params') final  PaginationParams? paginationParams;
@override@JsonKey(name: 'response_info') final  ResponseInfo? responseInfo;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaCopyWith<_Meta> get copyWith => __$MetaCopyWithImpl<_Meta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Meta&&(identical(other.paginationParams, paginationParams) || other.paginationParams == paginationParams)&&(identical(other.responseInfo, responseInfo) || other.responseInfo == responseInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paginationParams,responseInfo);

@override
String toString() {
  return 'Meta(paginationParams: $paginationParams, responseInfo: $responseInfo)';
}


}

/// @nodoc
abstract mixin class _$MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$MetaCopyWith(_Meta value, $Res Function(_Meta) _then) = __$MetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'pagination_params') PaginationParams? paginationParams,@JsonKey(name: 'response_info') ResponseInfo? responseInfo
});


@override $PaginationParamsCopyWith<$Res>? get paginationParams;@override $ResponseInfoCopyWith<$Res>? get responseInfo;

}
/// @nodoc
class __$MetaCopyWithImpl<$Res>
    implements _$MetaCopyWith<$Res> {
  __$MetaCopyWithImpl(this._self, this._then);

  final _Meta _self;
  final $Res Function(_Meta) _then;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paginationParams = freezed,Object? responseInfo = freezed,}) {
  return _then(_Meta(
paginationParams: freezed == paginationParams ? _self.paginationParams : paginationParams // ignore: cast_nullable_to_non_nullable
as PaginationParams?,responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as ResponseInfo?,
  ));
}

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationParamsCopyWith<$Res>? get paginationParams {
    if (_self.paginationParams == null) {
    return null;
  }

  return $PaginationParamsCopyWith<$Res>(_self.paginationParams!, (value) {
    return _then(_self.copyWith(paginationParams: value));
  });
}/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseInfoCopyWith<$Res>? get responseInfo {
    if (_self.responseInfo == null) {
    return null;
  }

  return $ResponseInfoCopyWith<$Res>(_self.responseInfo!, (value) {
    return _then(_self.copyWith(responseInfo: value));
  });
}
}


/// @nodoc
mixin _$PaginationParams {

@JsonKey(name: 'articles_per_page') String? get articlesPerPage;@JsonKey(name: 'categories_per_page') String? get categoriesPerPage;@JsonKey(name: 'articles_page') String? get articlesPage;@JsonKey(name: 'categories_page') String? get categoriesPage;
/// Create a copy of PaginationParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationParamsCopyWith<PaginationParams> get copyWith => _$PaginationParamsCopyWithImpl<PaginationParams>(this as PaginationParams, _$identity);

  /// Serializes this PaginationParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationParams&&(identical(other.articlesPerPage, articlesPerPage) || other.articlesPerPage == articlesPerPage)&&(identical(other.categoriesPerPage, categoriesPerPage) || other.categoriesPerPage == categoriesPerPage)&&(identical(other.articlesPage, articlesPage) || other.articlesPage == articlesPage)&&(identical(other.categoriesPage, categoriesPage) || other.categoriesPage == categoriesPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articlesPerPage,categoriesPerPage,articlesPage,categoriesPage);

@override
String toString() {
  return 'PaginationParams(articlesPerPage: $articlesPerPage, categoriesPerPage: $categoriesPerPage, articlesPage: $articlesPage, categoriesPage: $categoriesPage)';
}


}

/// @nodoc
abstract mixin class $PaginationParamsCopyWith<$Res>  {
  factory $PaginationParamsCopyWith(PaginationParams value, $Res Function(PaginationParams) _then) = _$PaginationParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'articles_per_page') String? articlesPerPage,@JsonKey(name: 'categories_per_page') String? categoriesPerPage,@JsonKey(name: 'articles_page') String? articlesPage,@JsonKey(name: 'categories_page') String? categoriesPage
});




}
/// @nodoc
class _$PaginationParamsCopyWithImpl<$Res>
    implements $PaginationParamsCopyWith<$Res> {
  _$PaginationParamsCopyWithImpl(this._self, this._then);

  final PaginationParams _self;
  final $Res Function(PaginationParams) _then;

/// Create a copy of PaginationParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articlesPerPage = freezed,Object? categoriesPerPage = freezed,Object? articlesPage = freezed,Object? categoriesPage = freezed,}) {
  return _then(_self.copyWith(
articlesPerPage: freezed == articlesPerPage ? _self.articlesPerPage : articlesPerPage // ignore: cast_nullable_to_non_nullable
as String?,categoriesPerPage: freezed == categoriesPerPage ? _self.categoriesPerPage : categoriesPerPage // ignore: cast_nullable_to_non_nullable
as String?,articlesPage: freezed == articlesPage ? _self.articlesPage : articlesPage // ignore: cast_nullable_to_non_nullable
as String?,categoriesPage: freezed == categoriesPage ? _self.categoriesPage : categoriesPage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationParams].
extension PaginationParamsPatterns on PaginationParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationParams value)  $default,){
final _that = this;
switch (_that) {
case _PaginationParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationParams value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'articles_per_page')  String? articlesPerPage, @JsonKey(name: 'categories_per_page')  String? categoriesPerPage, @JsonKey(name: 'articles_page')  String? articlesPage, @JsonKey(name: 'categories_page')  String? categoriesPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationParams() when $default != null:
return $default(_that.articlesPerPage,_that.categoriesPerPage,_that.articlesPage,_that.categoriesPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'articles_per_page')  String? articlesPerPage, @JsonKey(name: 'categories_per_page')  String? categoriesPerPage, @JsonKey(name: 'articles_page')  String? articlesPage, @JsonKey(name: 'categories_page')  String? categoriesPage)  $default,) {final _that = this;
switch (_that) {
case _PaginationParams():
return $default(_that.articlesPerPage,_that.categoriesPerPage,_that.articlesPage,_that.categoriesPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'articles_per_page')  String? articlesPerPage, @JsonKey(name: 'categories_per_page')  String? categoriesPerPage, @JsonKey(name: 'articles_page')  String? articlesPage, @JsonKey(name: 'categories_page')  String? categoriesPage)?  $default,) {final _that = this;
switch (_that) {
case _PaginationParams() when $default != null:
return $default(_that.articlesPerPage,_that.categoriesPerPage,_that.articlesPage,_that.categoriesPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationParams implements PaginationParams {
  const _PaginationParams({@JsonKey(name: 'articles_per_page') this.articlesPerPage, @JsonKey(name: 'categories_per_page') this.categoriesPerPage, @JsonKey(name: 'articles_page') this.articlesPage, @JsonKey(name: 'categories_page') this.categoriesPage});
  factory _PaginationParams.fromJson(Map<String, dynamic> json) => _$PaginationParamsFromJson(json);

@override@JsonKey(name: 'articles_per_page') final  String? articlesPerPage;
@override@JsonKey(name: 'categories_per_page') final  String? categoriesPerPage;
@override@JsonKey(name: 'articles_page') final  String? articlesPage;
@override@JsonKey(name: 'categories_page') final  String? categoriesPage;

/// Create a copy of PaginationParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationParamsCopyWith<_PaginationParams> get copyWith => __$PaginationParamsCopyWithImpl<_PaginationParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationParams&&(identical(other.articlesPerPage, articlesPerPage) || other.articlesPerPage == articlesPerPage)&&(identical(other.categoriesPerPage, categoriesPerPage) || other.categoriesPerPage == categoriesPerPage)&&(identical(other.articlesPage, articlesPage) || other.articlesPage == articlesPage)&&(identical(other.categoriesPage, categoriesPage) || other.categoriesPage == categoriesPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articlesPerPage,categoriesPerPage,articlesPage,categoriesPage);

@override
String toString() {
  return 'PaginationParams(articlesPerPage: $articlesPerPage, categoriesPerPage: $categoriesPerPage, articlesPage: $articlesPage, categoriesPage: $categoriesPage)';
}


}

/// @nodoc
abstract mixin class _$PaginationParamsCopyWith<$Res> implements $PaginationParamsCopyWith<$Res> {
  factory _$PaginationParamsCopyWith(_PaginationParams value, $Res Function(_PaginationParams) _then) = __$PaginationParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'articles_per_page') String? articlesPerPage,@JsonKey(name: 'categories_per_page') String? categoriesPerPage,@JsonKey(name: 'articles_page') String? articlesPage,@JsonKey(name: 'categories_page') String? categoriesPage
});




}
/// @nodoc
class __$PaginationParamsCopyWithImpl<$Res>
    implements _$PaginationParamsCopyWith<$Res> {
  __$PaginationParamsCopyWithImpl(this._self, this._then);

  final _PaginationParams _self;
  final $Res Function(_PaginationParams) _then;

/// Create a copy of PaginationParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articlesPerPage = freezed,Object? categoriesPerPage = freezed,Object? articlesPage = freezed,Object? categoriesPage = freezed,}) {
  return _then(_PaginationParams(
articlesPerPage: freezed == articlesPerPage ? _self.articlesPerPage : articlesPerPage // ignore: cast_nullable_to_non_nullable
as String?,categoriesPerPage: freezed == categoriesPerPage ? _self.categoriesPerPage : categoriesPerPage // ignore: cast_nullable_to_non_nullable
as String?,articlesPage: freezed == articlesPage ? _self.articlesPage : articlesPage // ignore: cast_nullable_to_non_nullable
as String?,categoriesPage: freezed == categoriesPage ? _self.categoriesPage : categoriesPage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ResponseInfo {

 String? get timestamp;@JsonKey(name: 'api_version') String? get apiVersion; String? get endpoint;@JsonKey(name: 'content_type') String? get contentType;
/// Create a copy of ResponseInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseInfoCopyWith<ResponseInfo> get copyWith => _$ResponseInfoCopyWithImpl<ResponseInfo>(this as ResponseInfo, _$identity);

  /// Serializes this ResponseInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseInfo&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,apiVersion,endpoint,contentType);

@override
String toString() {
  return 'ResponseInfo(timestamp: $timestamp, apiVersion: $apiVersion, endpoint: $endpoint, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class $ResponseInfoCopyWith<$Res>  {
  factory $ResponseInfoCopyWith(ResponseInfo value, $Res Function(ResponseInfo) _then) = _$ResponseInfoCopyWithImpl;
@useResult
$Res call({
 String? timestamp,@JsonKey(name: 'api_version') String? apiVersion, String? endpoint,@JsonKey(name: 'content_type') String? contentType
});




}
/// @nodoc
class _$ResponseInfoCopyWithImpl<$Res>
    implements $ResponseInfoCopyWith<$Res> {
  _$ResponseInfoCopyWithImpl(this._self, this._then);

  final ResponseInfo _self;
  final $Res Function(ResponseInfo) _then;

/// Create a copy of ResponseInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = freezed,Object? apiVersion = freezed,Object? endpoint = freezed,Object? contentType = freezed,}) {
  return _then(_self.copyWith(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,apiVersion: freezed == apiVersion ? _self.apiVersion : apiVersion // ignore: cast_nullable_to_non_nullable
as String?,endpoint: freezed == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResponseInfo].
extension ResponseInfoPatterns on ResponseInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponseInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponseInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponseInfo value)  $default,){
final _that = this;
switch (_that) {
case _ResponseInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponseInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ResponseInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? timestamp, @JsonKey(name: 'api_version')  String? apiVersion,  String? endpoint, @JsonKey(name: 'content_type')  String? contentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponseInfo() when $default != null:
return $default(_that.timestamp,_that.apiVersion,_that.endpoint,_that.contentType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? timestamp, @JsonKey(name: 'api_version')  String? apiVersion,  String? endpoint, @JsonKey(name: 'content_type')  String? contentType)  $default,) {final _that = this;
switch (_that) {
case _ResponseInfo():
return $default(_that.timestamp,_that.apiVersion,_that.endpoint,_that.contentType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? timestamp, @JsonKey(name: 'api_version')  String? apiVersion,  String? endpoint, @JsonKey(name: 'content_type')  String? contentType)?  $default,) {final _that = this;
switch (_that) {
case _ResponseInfo() when $default != null:
return $default(_that.timestamp,_that.apiVersion,_that.endpoint,_that.contentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResponseInfo implements ResponseInfo {
  const _ResponseInfo({this.timestamp, @JsonKey(name: 'api_version') this.apiVersion, this.endpoint, @JsonKey(name: 'content_type') this.contentType});
  factory _ResponseInfo.fromJson(Map<String, dynamic> json) => _$ResponseInfoFromJson(json);

@override final  String? timestamp;
@override@JsonKey(name: 'api_version') final  String? apiVersion;
@override final  String? endpoint;
@override@JsonKey(name: 'content_type') final  String? contentType;

/// Create a copy of ResponseInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseInfoCopyWith<_ResponseInfo> get copyWith => __$ResponseInfoCopyWithImpl<_ResponseInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponseInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseInfo&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,apiVersion,endpoint,contentType);

@override
String toString() {
  return 'ResponseInfo(timestamp: $timestamp, apiVersion: $apiVersion, endpoint: $endpoint, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class _$ResponseInfoCopyWith<$Res> implements $ResponseInfoCopyWith<$Res> {
  factory _$ResponseInfoCopyWith(_ResponseInfo value, $Res Function(_ResponseInfo) _then) = __$ResponseInfoCopyWithImpl;
@override @useResult
$Res call({
 String? timestamp,@JsonKey(name: 'api_version') String? apiVersion, String? endpoint,@JsonKey(name: 'content_type') String? contentType
});




}
/// @nodoc
class __$ResponseInfoCopyWithImpl<$Res>
    implements _$ResponseInfoCopyWith<$Res> {
  __$ResponseInfoCopyWithImpl(this._self, this._then);

  final _ResponseInfo _self;
  final $Res Function(_ResponseInfo) _then;

/// Create a copy of ResponseInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = freezed,Object? apiVersion = freezed,Object? endpoint = freezed,Object? contentType = freezed,}) {
  return _then(_ResponseInfo(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,apiVersion: freezed == apiVersion ? _self.apiVersion : apiVersion // ignore: cast_nullable_to_non_nullable
as String?,endpoint: freezed == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SubCategory {

@JsonKey(name: 'cat_id') int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_menus') String? get catMenus;@JsonKey(name: 'cat_pos') String? get catPos;@JsonKey(name: 'cat_in_sub_menu') String? get catInSubMenu;@JsonKey(name: 'articles') ArticlesWrapper? get articles;
/// Create a copy of SubCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryCopyWith<SubCategory> get copyWith => _$SubCategoryCopyWithImpl<SubCategory>(this as SubCategory, _$identity);

  /// Serializes this SubCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catInSubMenu, catInSubMenu) || other.catInSubMenu == catInSubMenu)&&(identical(other.articles, articles) || other.articles == articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catMenus,catPos,catInSubMenu,articles);

@override
String toString() {
  return 'SubCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catMenus: $catMenus, catPos: $catPos, catInSubMenu: $catInSubMenu, articles: $articles)';
}


}

/// @nodoc
abstract mixin class $SubCategoryCopyWith<$Res>  {
  factory $SubCategoryCopyWith(SubCategory value, $Res Function(SubCategory) _then) = _$SubCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_menus') String? catMenus,@JsonKey(name: 'cat_pos') String? catPos,@JsonKey(name: 'cat_in_sub_menu') String? catInSubMenu,@JsonKey(name: 'articles') ArticlesWrapper? articles
});


$ArticlesWrapperCopyWith<$Res>? get articles;

}
/// @nodoc
class _$SubCategoryCopyWithImpl<$Res>
    implements $SubCategoryCopyWith<$Res> {
  _$SubCategoryCopyWithImpl(this._self, this._then);

  final SubCategory _self;
  final $Res Function(SubCategory) _then;

/// Create a copy of SubCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catMenus = freezed,Object? catPos = freezed,Object? catInSubMenu = freezed,Object? articles = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catMenus: freezed == catMenus ? _self.catMenus : catMenus // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,catInSubMenu: freezed == catInSubMenu ? _self.catInSubMenu : catInSubMenu // ignore: cast_nullable_to_non_nullable
as String?,articles: freezed == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as ArticlesWrapper?,
  ));
}
/// Create a copy of SubCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticlesWrapperCopyWith<$Res>? get articles {
    if (_self.articles == null) {
    return null;
  }

  return $ArticlesWrapperCopyWith<$Res>(_self.articles!, (value) {
    return _then(_self.copyWith(articles: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubCategory].
extension SubCategoryPatterns on SubCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubCategory value)  $default,){
final _that = this;
switch (_that) {
case _SubCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubCategory value)?  $default,){
final _that = this;
switch (_that) {
case _SubCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_in_sub_menu')  String? catInSubMenu, @JsonKey(name: 'articles')  ArticlesWrapper? articles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catMenus,_that.catPos,_that.catInSubMenu,_that.articles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_in_sub_menu')  String? catInSubMenu, @JsonKey(name: 'articles')  ArticlesWrapper? articles)  $default,) {final _that = this;
switch (_that) {
case _SubCategory():
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catMenus,_that.catPos,_that.catInSubMenu,_that.articles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_in_sub_menu')  String? catInSubMenu, @JsonKey(name: 'articles')  ArticlesWrapper? articles)?  $default,) {final _that = this;
switch (_that) {
case _SubCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catMenus,_that.catPos,_that.catInSubMenu,_that.articles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubCategory implements SubCategory {
  const _SubCategory({@JsonKey(name: 'cat_id') this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_menus') this.catMenus, @JsonKey(name: 'cat_pos') this.catPos, @JsonKey(name: 'cat_in_sub_menu') this.catInSubMenu, @JsonKey(name: 'articles') this.articles});
  factory _SubCategory.fromJson(Map<String, dynamic> json) => _$SubCategoryFromJson(json);

@override@JsonKey(name: 'cat_id') final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_menus') final  String? catMenus;
@override@JsonKey(name: 'cat_pos') final  String? catPos;
@override@JsonKey(name: 'cat_in_sub_menu') final  String? catInSubMenu;
@override@JsonKey(name: 'articles') final  ArticlesWrapper? articles;

/// Create a copy of SubCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubCategoryCopyWith<_SubCategory> get copyWith => __$SubCategoryCopyWithImpl<_SubCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catInSubMenu, catInSubMenu) || other.catInSubMenu == catInSubMenu)&&(identical(other.articles, articles) || other.articles == articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catMenus,catPos,catInSubMenu,articles);

@override
String toString() {
  return 'SubCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catMenus: $catMenus, catPos: $catPos, catInSubMenu: $catInSubMenu, articles: $articles)';
}


}

/// @nodoc
abstract mixin class _$SubCategoryCopyWith<$Res> implements $SubCategoryCopyWith<$Res> {
  factory _$SubCategoryCopyWith(_SubCategory value, $Res Function(_SubCategory) _then) = __$SubCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_menus') String? catMenus,@JsonKey(name: 'cat_pos') String? catPos,@JsonKey(name: 'cat_in_sub_menu') String? catInSubMenu,@JsonKey(name: 'articles') ArticlesWrapper? articles
});


@override $ArticlesWrapperCopyWith<$Res>? get articles;

}
/// @nodoc
class __$SubCategoryCopyWithImpl<$Res>
    implements _$SubCategoryCopyWith<$Res> {
  __$SubCategoryCopyWithImpl(this._self, this._then);

  final _SubCategory _self;
  final $Res Function(_SubCategory) _then;

/// Create a copy of SubCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catMenus = freezed,Object? catPos = freezed,Object? catInSubMenu = freezed,Object? articles = freezed,}) {
  return _then(_SubCategory(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catMenus: freezed == catMenus ? _self.catMenus : catMenus // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,catInSubMenu: freezed == catInSubMenu ? _self.catInSubMenu : catInSubMenu // ignore: cast_nullable_to_non_nullable
as String?,articles: freezed == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as ArticlesWrapper?,
  ));
}

/// Create a copy of SubCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticlesWrapperCopyWith<$Res>? get articles {
    if (_self.articles == null) {
    return null;
  }

  return $ArticlesWrapperCopyWith<$Res>(_self.articles!, (value) {
    return _then(_self.copyWith(articles: value));
  });
}
}


/// @nodoc
mixin _$ArticlesWrapper {

@JsonKey(name: 'data') List<HabibArticle>? get data;@JsonKey(name: 'pagination') Pagination? get pagination;
/// Create a copy of ArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticlesWrapperCopyWith<ArticlesWrapper> get copyWith => _$ArticlesWrapperCopyWithImpl<ArticlesWrapper>(this as ArticlesWrapper, _$identity);

  /// Serializes this ArticlesWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticlesWrapper&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'ArticlesWrapper(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $ArticlesWrapperCopyWith<$Res>  {
  factory $ArticlesWrapperCopyWith(ArticlesWrapper value, $Res Function(ArticlesWrapper) _then) = _$ArticlesWrapperCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<HabibArticle>? data,@JsonKey(name: 'pagination') Pagination? pagination
});


$PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$ArticlesWrapperCopyWithImpl<$Res>
    implements $ArticlesWrapperCopyWith<$Res> {
  _$ArticlesWrapperCopyWithImpl(this._self, this._then);

  final ArticlesWrapper _self;
  final $Res Function(ArticlesWrapper) _then;

/// Create a copy of ArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<HabibArticle>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}
/// Create a copy of ArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [ArticlesWrapper].
extension ArticlesWrapperPatterns on ArticlesWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticlesWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticlesWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticlesWrapper value)  $default,){
final _that = this;
switch (_that) {
case _ArticlesWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticlesWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _ArticlesWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<HabibArticle>? data, @JsonKey(name: 'pagination')  Pagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticlesWrapper() when $default != null:
return $default(_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<HabibArticle>? data, @JsonKey(name: 'pagination')  Pagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _ArticlesWrapper():
return $default(_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<HabibArticle>? data, @JsonKey(name: 'pagination')  Pagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _ArticlesWrapper() when $default != null:
return $default(_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticlesWrapper implements ArticlesWrapper {
  const _ArticlesWrapper({@JsonKey(name: 'data') final  List<HabibArticle>? data, @JsonKey(name: 'pagination') this.pagination}): _data = data;
  factory _ArticlesWrapper.fromJson(Map<String, dynamic> json) => _$ArticlesWrapperFromJson(json);

 final  List<HabibArticle>? _data;
@override@JsonKey(name: 'data') List<HabibArticle>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'pagination') final  Pagination? pagination;

/// Create a copy of ArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticlesWrapperCopyWith<_ArticlesWrapper> get copyWith => __$ArticlesWrapperCopyWithImpl<_ArticlesWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticlesWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticlesWrapper&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'ArticlesWrapper(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$ArticlesWrapperCopyWith<$Res> implements $ArticlesWrapperCopyWith<$Res> {
  factory _$ArticlesWrapperCopyWith(_ArticlesWrapper value, $Res Function(_ArticlesWrapper) _then) = __$ArticlesWrapperCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<HabibArticle>? data,@JsonKey(name: 'pagination') Pagination? pagination
});


@override $PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$ArticlesWrapperCopyWithImpl<$Res>
    implements _$ArticlesWrapperCopyWith<$Res> {
  __$ArticlesWrapperCopyWithImpl(this._self, this._then);

  final _ArticlesWrapper _self;
  final $Res Function(_ArticlesWrapper) _then;

/// Create a copy of ArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_ArticlesWrapper(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<HabibArticle>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}

/// Create a copy of ArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$HabibArticle {

@JsonKey(name: 'article_id') int? get articleId;@JsonKey(name: 'article_title') String? get articleTitle;@JsonKey(name: 'article_summary') String? get articleSummary;@JsonKey(name: 'article_des') String? get articleDes;@JsonKey(name: 'article_cat_id') String? get articleCatId;@JsonKey(name: 'article_pic') String? get articlePic;@JsonKey(name: 'article_visitor') String? get articleVisitor;@JsonKey(name: 'article_date') String? get articleDate;@JsonKey(name: 'article_content') String? get articleContent; Category? get category;
/// Create a copy of HabibArticle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HabibArticleCopyWith<HabibArticle> get copyWith => _$HabibArticleCopyWithImpl<HabibArticle>(this as HabibArticle, _$identity);

  /// Serializes this HabibArticle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HabibArticle&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articleContent, articleContent) || other.articleContent == articleContent)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleSummary,articleDes,articleCatId,articlePic,articleVisitor,articleDate,articleContent,category);

@override
String toString() {
  return 'HabibArticle(articleId: $articleId, articleTitle: $articleTitle, articleSummary: $articleSummary, articleDes: $articleDes, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articleDate: $articleDate, articleContent: $articleContent, category: $category)';
}


}

/// @nodoc
abstract mixin class $HabibArticleCopyWith<$Res>  {
  factory $HabibArticleCopyWith(HabibArticle value, $Res Function(HabibArticle) _then) = _$HabibArticleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'article_id') int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_cat_id') String? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor') String? articleVisitor,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_content') String? articleContent, Category? category
});


$CategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$HabibArticleCopyWithImpl<$Res>
    implements $HabibArticleCopyWith<$Res> {
  _$HabibArticleCopyWithImpl(this._self, this._then);

  final HabibArticle _self;
  final $Res Function(HabibArticle) _then;

/// Create a copy of HabibArticle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleSummary = freezed,Object? articleDes = freezed,Object? articleCatId = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articleDate = freezed,Object? articleContent = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
articleId: freezed == articleId ? _self.articleId : articleId // ignore: cast_nullable_to_non_nullable
as int?,articleTitle: freezed == articleTitle ? _self.articleTitle : articleTitle // ignore: cast_nullable_to_non_nullable
as String?,articleSummary: freezed == articleSummary ? _self.articleSummary : articleSummary // ignore: cast_nullable_to_non_nullable
as String?,articleDes: freezed == articleDes ? _self.articleDes : articleDes // ignore: cast_nullable_to_non_nullable
as String?,articleCatId: freezed == articleCatId ? _self.articleCatId : articleCatId // ignore: cast_nullable_to_non_nullable
as String?,articlePic: freezed == articlePic ? _self.articlePic : articlePic // ignore: cast_nullable_to_non_nullable
as String?,articleVisitor: freezed == articleVisitor ? _self.articleVisitor : articleVisitor // ignore: cast_nullable_to_non_nullable
as String?,articleDate: freezed == articleDate ? _self.articleDate : articleDate // ignore: cast_nullable_to_non_nullable
as String?,articleContent: freezed == articleContent ? _self.articleContent : articleContent // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,
  ));
}
/// Create a copy of HabibArticle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [HabibArticle].
extension HabibArticlePatterns on HabibArticle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HabibArticle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HabibArticle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HabibArticle value)  $default,){
final _that = this;
switch (_that) {
case _HabibArticle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HabibArticle value)?  $default,){
final _that = this;
switch (_that) {
case _HabibArticle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_content')  String? articleContent,  Category? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HabibArticle() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleDes,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articleDate,_that.articleContent,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_content')  String? articleContent,  Category? category)  $default,) {final _that = this;
switch (_that) {
case _HabibArticle():
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleDes,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articleDate,_that.articleContent,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_content')  String? articleContent,  Category? category)?  $default,) {final _that = this;
switch (_that) {
case _HabibArticle() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleDes,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articleDate,_that.articleContent,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HabibArticle implements HabibArticle {
  const _HabibArticle({@JsonKey(name: 'article_id') this.articleId, @JsonKey(name: 'article_title') this.articleTitle, @JsonKey(name: 'article_summary') this.articleSummary, @JsonKey(name: 'article_des') this.articleDes, @JsonKey(name: 'article_cat_id') this.articleCatId, @JsonKey(name: 'article_pic') this.articlePic, @JsonKey(name: 'article_visitor') this.articleVisitor, @JsonKey(name: 'article_date') this.articleDate, @JsonKey(name: 'article_content') this.articleContent, this.category});
  factory _HabibArticle.fromJson(Map<String, dynamic> json) => _$HabibArticleFromJson(json);

@override@JsonKey(name: 'article_id') final  int? articleId;
@override@JsonKey(name: 'article_title') final  String? articleTitle;
@override@JsonKey(name: 'article_summary') final  String? articleSummary;
@override@JsonKey(name: 'article_des') final  String? articleDes;
@override@JsonKey(name: 'article_cat_id') final  String? articleCatId;
@override@JsonKey(name: 'article_pic') final  String? articlePic;
@override@JsonKey(name: 'article_visitor') final  String? articleVisitor;
@override@JsonKey(name: 'article_date') final  String? articleDate;
@override@JsonKey(name: 'article_content') final  String? articleContent;
@override final  Category? category;

/// Create a copy of HabibArticle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HabibArticleCopyWith<_HabibArticle> get copyWith => __$HabibArticleCopyWithImpl<_HabibArticle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HabibArticleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HabibArticle&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articleContent, articleContent) || other.articleContent == articleContent)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleSummary,articleDes,articleCatId,articlePic,articleVisitor,articleDate,articleContent,category);

@override
String toString() {
  return 'HabibArticle(articleId: $articleId, articleTitle: $articleTitle, articleSummary: $articleSummary, articleDes: $articleDes, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articleDate: $articleDate, articleContent: $articleContent, category: $category)';
}


}

/// @nodoc
abstract mixin class _$HabibArticleCopyWith<$Res> implements $HabibArticleCopyWith<$Res> {
  factory _$HabibArticleCopyWith(_HabibArticle value, $Res Function(_HabibArticle) _then) = __$HabibArticleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'article_id') int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_cat_id') String? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor') String? articleVisitor,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_content') String? articleContent, Category? category
});


@override $CategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$HabibArticleCopyWithImpl<$Res>
    implements _$HabibArticleCopyWith<$Res> {
  __$HabibArticleCopyWithImpl(this._self, this._then);

  final _HabibArticle _self;
  final $Res Function(_HabibArticle) _then;

/// Create a copy of HabibArticle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleSummary = freezed,Object? articleDes = freezed,Object? articleCatId = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articleDate = freezed,Object? articleContent = freezed,Object? category = freezed,}) {
  return _then(_HabibArticle(
articleId: freezed == articleId ? _self.articleId : articleId // ignore: cast_nullable_to_non_nullable
as int?,articleTitle: freezed == articleTitle ? _self.articleTitle : articleTitle // ignore: cast_nullable_to_non_nullable
as String?,articleSummary: freezed == articleSummary ? _self.articleSummary : articleSummary // ignore: cast_nullable_to_non_nullable
as String?,articleDes: freezed == articleDes ? _self.articleDes : articleDes // ignore: cast_nullable_to_non_nullable
as String?,articleCatId: freezed == articleCatId ? _self.articleCatId : articleCatId // ignore: cast_nullable_to_non_nullable
as String?,articlePic: freezed == articlePic ? _self.articlePic : articlePic // ignore: cast_nullable_to_non_nullable
as String?,articleVisitor: freezed == articleVisitor ? _self.articleVisitor : articleVisitor // ignore: cast_nullable_to_non_nullable
as String?,articleDate: freezed == articleDate ? _self.articleDate : articleDate // ignore: cast_nullable_to_non_nullable
as String?,articleContent: freezed == articleContent ? _self.articleContent : articleContent // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,
  ));
}

/// Create a copy of HabibArticle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$Category {

@JsonKey(name: 'cat_id') int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle);

@override
String toString() {
  return 'Category(catId: $catId, catTitle: $catTitle)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_title') String? catTitle
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catTitle = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.catId,_that.catTitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.catId,_that.catTitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.catId,_that.catTitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Category implements Category {
  const _Category({@JsonKey(name: 'cat_id') this.catId, @JsonKey(name: 'cat_title') this.catTitle});
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override@JsonKey(name: 'cat_id') final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle);

@override
String toString() {
  return 'Category(catId: $catId, catTitle: $catTitle)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_title') String? catTitle
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,}) {
  return _then(_Category(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Pagination {

@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'last_page') int? get lastPage;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'total') int? get total;@JsonKey(name: 'from') int? get from;@JsonKey(name: 'to') int? get to;
/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationCopyWith<Pagination> get copyWith => _$PaginationCopyWithImpl<Pagination>(this as Pagination, _$identity);

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,lastPage,perPage,total,from,to);

@override
String toString() {
  return 'Pagination(currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $PaginationCopyWith<$Res>  {
  factory $PaginationCopyWith(Pagination value, $Res Function(Pagination) _then) = _$PaginationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'total') int? total,@JsonKey(name: 'from') int? from,@JsonKey(name: 'to') int? to
});




}
/// @nodoc
class _$PaginationCopyWithImpl<$Res>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._self, this._then);

  final Pagination _self;
  final $Res Function(Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? lastPage = freezed,Object? perPage = freezed,Object? total = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Pagination].
extension PaginationPatterns on Pagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pagination value)  $default,){
final _that = this;
switch (_that) {
case _Pagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pagination value)?  $default,){
final _that = this;
switch (_that) {
case _Pagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total')  int? total, @JsonKey(name: 'from')  int? from, @JsonKey(name: 'to')  int? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.currentPage,_that.lastPage,_that.perPage,_that.total,_that.from,_that.to);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total')  int? total, @JsonKey(name: 'from')  int? from, @JsonKey(name: 'to')  int? to)  $default,) {final _that = this;
switch (_that) {
case _Pagination():
return $default(_that.currentPage,_that.lastPage,_that.perPage,_that.total,_that.from,_that.to);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total')  int? total, @JsonKey(name: 'from')  int? from, @JsonKey(name: 'to')  int? to)?  $default,) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.currentPage,_that.lastPage,_that.perPage,_that.total,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pagination implements Pagination {
  const _Pagination({@JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'last_page') this.lastPage, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'total') this.total, @JsonKey(name: 'from') this.from, @JsonKey(name: 'to') this.to});
  factory _Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);

@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'last_page') final  int? lastPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'total') final  int? total;
@override@JsonKey(name: 'from') final  int? from;
@override@JsonKey(name: 'to') final  int? to;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationCopyWith<_Pagination> get copyWith => __$PaginationCopyWithImpl<_Pagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,lastPage,perPage,total,from,to);

@override
String toString() {
  return 'Pagination(currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$PaginationCopyWith<$Res> implements $PaginationCopyWith<$Res> {
  factory _$PaginationCopyWith(_Pagination value, $Res Function(_Pagination) _then) = __$PaginationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'total') int? total,@JsonKey(name: 'from') int? from,@JsonKey(name: 'to') int? to
});




}
/// @nodoc
class __$PaginationCopyWithImpl<$Res>
    implements _$PaginationCopyWith<$Res> {
  __$PaginationCopyWithImpl(this._self, this._then);

  final _Pagination _self;
  final $Res Function(_Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? lastPage = freezed,Object? perPage = freezed,Object? total = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_Pagination(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$CategoryArticlesModel {

 String? get status; CategoryArticlesData? get data;
/// Create a copy of CategoryArticlesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryArticlesModelCopyWith<CategoryArticlesModel> get copyWith => _$CategoryArticlesModelCopyWithImpl<CategoryArticlesModel>(this as CategoryArticlesModel, _$identity);

  /// Serializes this CategoryArticlesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryArticlesModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'CategoryArticlesModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $CategoryArticlesModelCopyWith<$Res>  {
  factory $CategoryArticlesModelCopyWith(CategoryArticlesModel value, $Res Function(CategoryArticlesModel) _then) = _$CategoryArticlesModelCopyWithImpl;
@useResult
$Res call({
 String? status, CategoryArticlesData? data
});


$CategoryArticlesDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$CategoryArticlesModelCopyWithImpl<$Res>
    implements $CategoryArticlesModelCopyWith<$Res> {
  _$CategoryArticlesModelCopyWithImpl(this._self, this._then);

  final CategoryArticlesModel _self;
  final $Res Function(CategoryArticlesModel) _then;

/// Create a copy of CategoryArticlesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CategoryArticlesData?,
  ));
}
/// Create a copy of CategoryArticlesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryArticlesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CategoryArticlesDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryArticlesModel].
extension CategoryArticlesModelPatterns on CategoryArticlesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryArticlesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryArticlesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryArticlesModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryArticlesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryArticlesModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryArticlesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  CategoryArticlesData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryArticlesModel() when $default != null:
return $default(_that.status,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  CategoryArticlesData? data)  $default,) {final _that = this;
switch (_that) {
case _CategoryArticlesModel():
return $default(_that.status,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  CategoryArticlesData? data)?  $default,) {final _that = this;
switch (_that) {
case _CategoryArticlesModel() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryArticlesModel implements CategoryArticlesModel {
  const _CategoryArticlesModel({this.status, this.data});
  factory _CategoryArticlesModel.fromJson(Map<String, dynamic> json) => _$CategoryArticlesModelFromJson(json);

@override final  String? status;
@override final  CategoryArticlesData? data;

/// Create a copy of CategoryArticlesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryArticlesModelCopyWith<_CategoryArticlesModel> get copyWith => __$CategoryArticlesModelCopyWithImpl<_CategoryArticlesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryArticlesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryArticlesModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'CategoryArticlesModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CategoryArticlesModelCopyWith<$Res> implements $CategoryArticlesModelCopyWith<$Res> {
  factory _$CategoryArticlesModelCopyWith(_CategoryArticlesModel value, $Res Function(_CategoryArticlesModel) _then) = __$CategoryArticlesModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, CategoryArticlesData? data
});


@override $CategoryArticlesDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$CategoryArticlesModelCopyWithImpl<$Res>
    implements _$CategoryArticlesModelCopyWith<$Res> {
  __$CategoryArticlesModelCopyWithImpl(this._self, this._then);

  final _CategoryArticlesModel _self;
  final $Res Function(_CategoryArticlesModel) _then;

/// Create a copy of CategoryArticlesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,}) {
  return _then(_CategoryArticlesModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CategoryArticlesData?,
  ));
}

/// Create a copy of CategoryArticlesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryArticlesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CategoryArticlesDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CategoryArticlesData {

 List<CategoryWithArticles>? get categories;@JsonKey(name: 'is_multiple_categories') bool? get isMultipleCategories;
/// Create a copy of CategoryArticlesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryArticlesDataCopyWith<CategoryArticlesData> get copyWith => _$CategoryArticlesDataCopyWithImpl<CategoryArticlesData>(this as CategoryArticlesData, _$identity);

  /// Serializes this CategoryArticlesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryArticlesData&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.isMultipleCategories, isMultipleCategories) || other.isMultipleCategories == isMultipleCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),isMultipleCategories);

@override
String toString() {
  return 'CategoryArticlesData(categories: $categories, isMultipleCategories: $isMultipleCategories)';
}


}

/// @nodoc
abstract mixin class $CategoryArticlesDataCopyWith<$Res>  {
  factory $CategoryArticlesDataCopyWith(CategoryArticlesData value, $Res Function(CategoryArticlesData) _then) = _$CategoryArticlesDataCopyWithImpl;
@useResult
$Res call({
 List<CategoryWithArticles>? categories,@JsonKey(name: 'is_multiple_categories') bool? isMultipleCategories
});




}
/// @nodoc
class _$CategoryArticlesDataCopyWithImpl<$Res>
    implements $CategoryArticlesDataCopyWith<$Res> {
  _$CategoryArticlesDataCopyWithImpl(this._self, this._then);

  final CategoryArticlesData _self;
  final $Res Function(CategoryArticlesData) _then;

/// Create a copy of CategoryArticlesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = freezed,Object? isMultipleCategories = freezed,}) {
  return _then(_self.copyWith(
categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryWithArticles>?,isMultipleCategories: freezed == isMultipleCategories ? _self.isMultipleCategories : isMultipleCategories // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryArticlesData].
extension CategoryArticlesDataPatterns on CategoryArticlesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryArticlesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryArticlesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryArticlesData value)  $default,){
final _that = this;
switch (_that) {
case _CategoryArticlesData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryArticlesData value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryArticlesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryWithArticles>? categories, @JsonKey(name: 'is_multiple_categories')  bool? isMultipleCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryArticlesData() when $default != null:
return $default(_that.categories,_that.isMultipleCategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryWithArticles>? categories, @JsonKey(name: 'is_multiple_categories')  bool? isMultipleCategories)  $default,) {final _that = this;
switch (_that) {
case _CategoryArticlesData():
return $default(_that.categories,_that.isMultipleCategories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryWithArticles>? categories, @JsonKey(name: 'is_multiple_categories')  bool? isMultipleCategories)?  $default,) {final _that = this;
switch (_that) {
case _CategoryArticlesData() when $default != null:
return $default(_that.categories,_that.isMultipleCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryArticlesData implements CategoryArticlesData {
  const _CategoryArticlesData({final  List<CategoryWithArticles>? categories, @JsonKey(name: 'is_multiple_categories') this.isMultipleCategories}): _categories = categories;
  factory _CategoryArticlesData.fromJson(Map<String, dynamic> json) => _$CategoryArticlesDataFromJson(json);

 final  List<CategoryWithArticles>? _categories;
@override List<CategoryWithArticles>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'is_multiple_categories') final  bool? isMultipleCategories;

/// Create a copy of CategoryArticlesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryArticlesDataCopyWith<_CategoryArticlesData> get copyWith => __$CategoryArticlesDataCopyWithImpl<_CategoryArticlesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryArticlesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryArticlesData&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.isMultipleCategories, isMultipleCategories) || other.isMultipleCategories == isMultipleCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),isMultipleCategories);

@override
String toString() {
  return 'CategoryArticlesData(categories: $categories, isMultipleCategories: $isMultipleCategories)';
}


}

/// @nodoc
abstract mixin class _$CategoryArticlesDataCopyWith<$Res> implements $CategoryArticlesDataCopyWith<$Res> {
  factory _$CategoryArticlesDataCopyWith(_CategoryArticlesData value, $Res Function(_CategoryArticlesData) _then) = __$CategoryArticlesDataCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryWithArticles>? categories,@JsonKey(name: 'is_multiple_categories') bool? isMultipleCategories
});




}
/// @nodoc
class __$CategoryArticlesDataCopyWithImpl<$Res>
    implements _$CategoryArticlesDataCopyWith<$Res> {
  __$CategoryArticlesDataCopyWithImpl(this._self, this._then);

  final _CategoryArticlesData _self;
  final $Res Function(_CategoryArticlesData) _then;

/// Create a copy of CategoryArticlesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = freezed,Object? isMultipleCategories = freezed,}) {
  return _then(_CategoryArticlesData(
categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryWithArticles>?,isMultipleCategories: freezed == isMultipleCategories ? _self.isMultipleCategories : isMultipleCategories // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$CategoryWithArticles {

@JsonKey(name: 'cat_id') int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos') String? get catPos; dynamic get parent; List<dynamic>? get children; List<HabibArticle>? get articles; Pagination? get pagination;
/// Create a copy of CategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryWithArticlesCopyWith<CategoryWithArticles> get copyWith => _$CategoryWithArticlesCopyWithImpl<CategoryWithArticles>(this as CategoryWithArticles, _$identity);

  /// Serializes this CategoryWithArticles to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryWithArticles&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other.children, children)&&const DeepCollectionEquality().equals(other.articles, articles)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(children),const DeepCollectionEquality().hash(articles),pagination);

@override
String toString() {
  return 'CategoryWithArticles(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, parent: $parent, children: $children, articles: $articles, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $CategoryWithArticlesCopyWith<$Res>  {
  factory $CategoryWithArticlesCopyWith(CategoryWithArticles value, $Res Function(CategoryWithArticles) _then) = _$CategoryWithArticlesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos') String? catPos, dynamic parent, List<dynamic>? children, List<HabibArticle>? articles, Pagination? pagination
});


$PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$CategoryWithArticlesCopyWithImpl<$Res>
    implements $CategoryWithArticlesCopyWith<$Res> {
  _$CategoryWithArticlesCopyWithImpl(this._self, this._then);

  final CategoryWithArticles _self;
  final $Res Function(CategoryWithArticles) _then;

/// Create a copy of CategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? parent = freezed,Object? children = freezed,Object? articles = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as dynamic,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,articles: freezed == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<HabibArticle>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}
/// Create a copy of CategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryWithArticles].
extension CategoryWithArticlesPatterns on CategoryWithArticles {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryWithArticles value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryWithArticles() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryWithArticles value)  $default,){
final _that = this;
switch (_that) {
case _CategoryWithArticles():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryWithArticles value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryWithArticles() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')  String? catPos,  dynamic parent,  List<dynamic>? children,  List<HabibArticle>? articles,  Pagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryWithArticles() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.parent,_that.children,_that.articles,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')  String? catPos,  dynamic parent,  List<dynamic>? children,  List<HabibArticle>? articles,  Pagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _CategoryWithArticles():
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.parent,_that.children,_that.articles,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')  String? catPos,  dynamic parent,  List<dynamic>? children,  List<HabibArticle>? articles,  Pagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _CategoryWithArticles() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.parent,_that.children,_that.articles,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryWithArticles implements CategoryWithArticles {
  const _CategoryWithArticles({@JsonKey(name: 'cat_id') this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos') this.catPos, this.parent, final  List<dynamic>? children, final  List<HabibArticle>? articles, this.pagination}): _children = children,_articles = articles;
  factory _CategoryWithArticles.fromJson(Map<String, dynamic> json) => _$CategoryWithArticlesFromJson(json);

@override@JsonKey(name: 'cat_id') final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_pos') final  String? catPos;
@override final  dynamic parent;
 final  List<dynamic>? _children;
@override List<dynamic>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<HabibArticle>? _articles;
@override List<HabibArticle>? get articles {
  final value = _articles;
  if (value == null) return null;
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Pagination? pagination;

/// Create a copy of CategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryWithArticlesCopyWith<_CategoryWithArticles> get copyWith => __$CategoryWithArticlesCopyWithImpl<_CategoryWithArticles>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryWithArticlesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryWithArticles&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other._children, _children)&&const DeepCollectionEquality().equals(other._articles, _articles)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(_children),const DeepCollectionEquality().hash(_articles),pagination);

@override
String toString() {
  return 'CategoryWithArticles(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, parent: $parent, children: $children, articles: $articles, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$CategoryWithArticlesCopyWith<$Res> implements $CategoryWithArticlesCopyWith<$Res> {
  factory _$CategoryWithArticlesCopyWith(_CategoryWithArticles value, $Res Function(_CategoryWithArticles) _then) = __$CategoryWithArticlesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos') String? catPos, dynamic parent, List<dynamic>? children, List<HabibArticle>? articles, Pagination? pagination
});


@override $PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$CategoryWithArticlesCopyWithImpl<$Res>
    implements _$CategoryWithArticlesCopyWith<$Res> {
  __$CategoryWithArticlesCopyWithImpl(this._self, this._then);

  final _CategoryWithArticles _self;
  final $Res Function(_CategoryWithArticles) _then;

/// Create a copy of CategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? parent = freezed,Object? children = freezed,Object? articles = freezed,Object? pagination = freezed,}) {
  return _then(_CategoryWithArticles(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as dynamic,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,articles: freezed == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<HabibArticle>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}

/// Create a copy of CategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$ArticleDetailModel {

 String? get status; ArticleDetailData? get data; ArticleDetailMeta? get meta;
/// Create a copy of ArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleDetailModelCopyWith<ArticleDetailModel> get copyWith => _$ArticleDetailModelCopyWithImpl<ArticleDetailModel>(this as ArticleDetailModel, _$identity);

  /// Serializes this ArticleDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleDetailModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,meta);

@override
String toString() {
  return 'ArticleDetailModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ArticleDetailModelCopyWith<$Res>  {
  factory $ArticleDetailModelCopyWith(ArticleDetailModel value, $Res Function(ArticleDetailModel) _then) = _$ArticleDetailModelCopyWithImpl;
@useResult
$Res call({
 String? status, ArticleDetailData? data, ArticleDetailMeta? meta
});


$ArticleDetailDataCopyWith<$Res>? get data;$ArticleDetailMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ArticleDetailModelCopyWithImpl<$Res>
    implements $ArticleDetailModelCopyWith<$Res> {
  _$ArticleDetailModelCopyWithImpl(this._self, this._then);

  final ArticleDetailModel _self;
  final $Res Function(ArticleDetailModel) _then;

/// Create a copy of ArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ArticleDetailData?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ArticleDetailMeta?,
  ));
}
/// Create a copy of ArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticleDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ArticleDetailDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of ArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticleDetailMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $ArticleDetailMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ArticleDetailModel].
extension ArticleDetailModelPatterns on ArticleDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticleDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticleDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticleDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _ArticleDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticleDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _ArticleDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  ArticleDetailData? data,  ArticleDetailMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleDetailModel() when $default != null:
return $default(_that.status,_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  ArticleDetailData? data,  ArticleDetailMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailModel():
return $default(_that.status,_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  ArticleDetailData? data,  ArticleDetailMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailModel() when $default != null:
return $default(_that.status,_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleDetailModel implements ArticleDetailModel {
  const _ArticleDetailModel({this.status, this.data, this.meta});
  factory _ArticleDetailModel.fromJson(Map<String, dynamic> json) => _$ArticleDetailModelFromJson(json);

@override final  String? status;
@override final  ArticleDetailData? data;
@override final  ArticleDetailMeta? meta;

/// Create a copy of ArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleDetailModelCopyWith<_ArticleDetailModel> get copyWith => __$ArticleDetailModelCopyWithImpl<_ArticleDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleDetailModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,meta);

@override
String toString() {
  return 'ArticleDetailModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ArticleDetailModelCopyWith<$Res> implements $ArticleDetailModelCopyWith<$Res> {
  factory _$ArticleDetailModelCopyWith(_ArticleDetailModel value, $Res Function(_ArticleDetailModel) _then) = __$ArticleDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, ArticleDetailData? data, ArticleDetailMeta? meta
});


@override $ArticleDetailDataCopyWith<$Res>? get data;@override $ArticleDetailMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ArticleDetailModelCopyWithImpl<$Res>
    implements _$ArticleDetailModelCopyWith<$Res> {
  __$ArticleDetailModelCopyWithImpl(this._self, this._then);

  final _ArticleDetailModel _self;
  final $Res Function(_ArticleDetailModel) _then;

/// Create a copy of ArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ArticleDetailModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ArticleDetailData?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ArticleDetailMeta?,
  ));
}

/// Create a copy of ArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticleDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ArticleDetailDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of ArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticleDetailMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $ArticleDetailMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ArticleDetailData {

@JsonKey(name: 'article_id') int? get articleId;@JsonKey(name: 'article_cat_id') String? get articleCatId;@JsonKey(name: 'article_title') String? get articleTitle;@JsonKey(name: 'article_ts') String? get articleTs;@JsonKey(name: 'article_summary') String? get articleSummary;@JsonKey(name: 'article_pic') String? get articlePic;@JsonKey(name: 'article_des') String? get articleDes;@JsonKey(name: 'article_pic_pos') String? get articlePicPos;@JsonKey(name: 'article_visitor') String? get articleVisitor;@JsonKey(name: 'article_is_new') String? get articleIsNew;@JsonKey(name: 'article_priority') String? get articlePriority;@JsonKey(name: 'article_active_vote') String? get articleActiveVote;@JsonKey(name: 'article_active_hint') String? get articleActiveHint;@JsonKey(name: 'article_active') String? get articleActive;@JsonKey(name: 'article_date') String? get articleDate;@JsonKey(name: 'article_pic_active') String? get articlePicActive;@JsonKey(name: 'article_last_article') String? get articleLastArticle;@JsonKey(name: 'article_publisher_id') String? get articlePublisherId;@JsonKey(name: 'article_source') String? get articleSource;@JsonKey(name: 'article_source_url') String? get articleSourceUrl;@JsonKey(name: 'article_youtube_id') String? get articleYoutubeId;@JsonKey(name: 'article_file') String? get articleFile;@JsonKey(name: 'article_user_add_hint_nsup') String? get articleUserAddHintNsup; ArticleDetailCategory? get category;
/// Create a copy of ArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleDetailDataCopyWith<ArticleDetailData> get copyWith => _$ArticleDetailDataCopyWithImpl<ArticleDetailData>(this as ArticleDetailData, _$identity);

  /// Serializes this ArticleDetailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleDetailData&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleTs, articleTs) || other.articleTs == articleTs)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articlePicPos, articlePicPos) || other.articlePicPos == articlePicPos)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articleIsNew, articleIsNew) || other.articleIsNew == articleIsNew)&&(identical(other.articlePriority, articlePriority) || other.articlePriority == articlePriority)&&(identical(other.articleActiveVote, articleActiveVote) || other.articleActiveVote == articleActiveVote)&&(identical(other.articleActiveHint, articleActiveHint) || other.articleActiveHint == articleActiveHint)&&(identical(other.articleActive, articleActive) || other.articleActive == articleActive)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articlePicActive, articlePicActive) || other.articlePicActive == articlePicActive)&&(identical(other.articleLastArticle, articleLastArticle) || other.articleLastArticle == articleLastArticle)&&(identical(other.articlePublisherId, articlePublisherId) || other.articlePublisherId == articlePublisherId)&&(identical(other.articleSource, articleSource) || other.articleSource == articleSource)&&(identical(other.articleSourceUrl, articleSourceUrl) || other.articleSourceUrl == articleSourceUrl)&&(identical(other.articleYoutubeId, articleYoutubeId) || other.articleYoutubeId == articleYoutubeId)&&(identical(other.articleFile, articleFile) || other.articleFile == articleFile)&&(identical(other.articleUserAddHintNsup, articleUserAddHintNsup) || other.articleUserAddHintNsup == articleUserAddHintNsup)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,articleId,articleCatId,articleTitle,articleTs,articleSummary,articlePic,articleDes,articlePicPos,articleVisitor,articleIsNew,articlePriority,articleActiveVote,articleActiveHint,articleActive,articleDate,articlePicActive,articleLastArticle,articlePublisherId,articleSource,articleSourceUrl,articleYoutubeId,articleFile,articleUserAddHintNsup,category]);

@override
String toString() {
  return 'ArticleDetailData(articleId: $articleId, articleCatId: $articleCatId, articleTitle: $articleTitle, articleTs: $articleTs, articleSummary: $articleSummary, articlePic: $articlePic, articleDes: $articleDes, articlePicPos: $articlePicPos, articleVisitor: $articleVisitor, articleIsNew: $articleIsNew, articlePriority: $articlePriority, articleActiveVote: $articleActiveVote, articleActiveHint: $articleActiveHint, articleActive: $articleActive, articleDate: $articleDate, articlePicActive: $articlePicActive, articleLastArticle: $articleLastArticle, articlePublisherId: $articlePublisherId, articleSource: $articleSource, articleSourceUrl: $articleSourceUrl, articleYoutubeId: $articleYoutubeId, articleFile: $articleFile, articleUserAddHintNsup: $articleUserAddHintNsup, category: $category)';
}


}

/// @nodoc
abstract mixin class $ArticleDetailDataCopyWith<$Res>  {
  factory $ArticleDetailDataCopyWith(ArticleDetailData value, $Res Function(ArticleDetailData) _then) = _$ArticleDetailDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'article_id') int? articleId,@JsonKey(name: 'article_cat_id') String? articleCatId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_ts') String? articleTs,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_pic_pos') String? articlePicPos,@JsonKey(name: 'article_visitor') String? articleVisitor,@JsonKey(name: 'article_is_new') String? articleIsNew,@JsonKey(name: 'article_priority') String? articlePriority,@JsonKey(name: 'article_active_vote') String? articleActiveVote,@JsonKey(name: 'article_active_hint') String? articleActiveHint,@JsonKey(name: 'article_active') String? articleActive,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_pic_active') String? articlePicActive,@JsonKey(name: 'article_last_article') String? articleLastArticle,@JsonKey(name: 'article_publisher_id') String? articlePublisherId,@JsonKey(name: 'article_source') String? articleSource,@JsonKey(name: 'article_source_url') String? articleSourceUrl,@JsonKey(name: 'article_youtube_id') String? articleYoutubeId,@JsonKey(name: 'article_file') String? articleFile,@JsonKey(name: 'article_user_add_hint_nsup') String? articleUserAddHintNsup, ArticleDetailCategory? category
});


$ArticleDetailCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$ArticleDetailDataCopyWithImpl<$Res>
    implements $ArticleDetailDataCopyWith<$Res> {
  _$ArticleDetailDataCopyWithImpl(this._self, this._then);

  final ArticleDetailData _self;
  final $Res Function(ArticleDetailData) _then;

/// Create a copy of ArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articleId = freezed,Object? articleCatId = freezed,Object? articleTitle = freezed,Object? articleTs = freezed,Object? articleSummary = freezed,Object? articlePic = freezed,Object? articleDes = freezed,Object? articlePicPos = freezed,Object? articleVisitor = freezed,Object? articleIsNew = freezed,Object? articlePriority = freezed,Object? articleActiveVote = freezed,Object? articleActiveHint = freezed,Object? articleActive = freezed,Object? articleDate = freezed,Object? articlePicActive = freezed,Object? articleLastArticle = freezed,Object? articlePublisherId = freezed,Object? articleSource = freezed,Object? articleSourceUrl = freezed,Object? articleYoutubeId = freezed,Object? articleFile = freezed,Object? articleUserAddHintNsup = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
articleId: freezed == articleId ? _self.articleId : articleId // ignore: cast_nullable_to_non_nullable
as int?,articleCatId: freezed == articleCatId ? _self.articleCatId : articleCatId // ignore: cast_nullable_to_non_nullable
as String?,articleTitle: freezed == articleTitle ? _self.articleTitle : articleTitle // ignore: cast_nullable_to_non_nullable
as String?,articleTs: freezed == articleTs ? _self.articleTs : articleTs // ignore: cast_nullable_to_non_nullable
as String?,articleSummary: freezed == articleSummary ? _self.articleSummary : articleSummary // ignore: cast_nullable_to_non_nullable
as String?,articlePic: freezed == articlePic ? _self.articlePic : articlePic // ignore: cast_nullable_to_non_nullable
as String?,articleDes: freezed == articleDes ? _self.articleDes : articleDes // ignore: cast_nullable_to_non_nullable
as String?,articlePicPos: freezed == articlePicPos ? _self.articlePicPos : articlePicPos // ignore: cast_nullable_to_non_nullable
as String?,articleVisitor: freezed == articleVisitor ? _self.articleVisitor : articleVisitor // ignore: cast_nullable_to_non_nullable
as String?,articleIsNew: freezed == articleIsNew ? _self.articleIsNew : articleIsNew // ignore: cast_nullable_to_non_nullable
as String?,articlePriority: freezed == articlePriority ? _self.articlePriority : articlePriority // ignore: cast_nullable_to_non_nullable
as String?,articleActiveVote: freezed == articleActiveVote ? _self.articleActiveVote : articleActiveVote // ignore: cast_nullable_to_non_nullable
as String?,articleActiveHint: freezed == articleActiveHint ? _self.articleActiveHint : articleActiveHint // ignore: cast_nullable_to_non_nullable
as String?,articleActive: freezed == articleActive ? _self.articleActive : articleActive // ignore: cast_nullable_to_non_nullable
as String?,articleDate: freezed == articleDate ? _self.articleDate : articleDate // ignore: cast_nullable_to_non_nullable
as String?,articlePicActive: freezed == articlePicActive ? _self.articlePicActive : articlePicActive // ignore: cast_nullable_to_non_nullable
as String?,articleLastArticle: freezed == articleLastArticle ? _self.articleLastArticle : articleLastArticle // ignore: cast_nullable_to_non_nullable
as String?,articlePublisherId: freezed == articlePublisherId ? _self.articlePublisherId : articlePublisherId // ignore: cast_nullable_to_non_nullable
as String?,articleSource: freezed == articleSource ? _self.articleSource : articleSource // ignore: cast_nullable_to_non_nullable
as String?,articleSourceUrl: freezed == articleSourceUrl ? _self.articleSourceUrl : articleSourceUrl // ignore: cast_nullable_to_non_nullable
as String?,articleYoutubeId: freezed == articleYoutubeId ? _self.articleYoutubeId : articleYoutubeId // ignore: cast_nullable_to_non_nullable
as String?,articleFile: freezed == articleFile ? _self.articleFile : articleFile // ignore: cast_nullable_to_non_nullable
as String?,articleUserAddHintNsup: freezed == articleUserAddHintNsup ? _self.articleUserAddHintNsup : articleUserAddHintNsup // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ArticleDetailCategory?,
  ));
}
/// Create a copy of ArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticleDetailCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $ArticleDetailCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [ArticleDetailData].
extension ArticleDetailDataPatterns on ArticleDetailData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticleDetailData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticleDetailData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticleDetailData value)  $default,){
final _that = this;
switch (_that) {
case _ArticleDetailData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticleDetailData value)?  $default,){
final _that = this;
switch (_that) {
case _ArticleDetailData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_ts')  String? articleTs, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_pic_pos')  String? articlePicPos, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_is_new')  String? articleIsNew, @JsonKey(name: 'article_priority')  String? articlePriority, @JsonKey(name: 'article_active_vote')  String? articleActiveVote, @JsonKey(name: 'article_active_hint')  String? articleActiveHint, @JsonKey(name: 'article_active')  String? articleActive, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_pic_active')  String? articlePicActive, @JsonKey(name: 'article_last_article')  String? articleLastArticle, @JsonKey(name: 'article_publisher_id')  String? articlePublisherId, @JsonKey(name: 'article_source')  String? articleSource, @JsonKey(name: 'article_source_url')  String? articleSourceUrl, @JsonKey(name: 'article_youtube_id')  String? articleYoutubeId, @JsonKey(name: 'article_file')  String? articleFile, @JsonKey(name: 'article_user_add_hint_nsup')  String? articleUserAddHintNsup,  ArticleDetailCategory? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleDetailData() when $default != null:
return $default(_that.articleId,_that.articleCatId,_that.articleTitle,_that.articleTs,_that.articleSummary,_that.articlePic,_that.articleDes,_that.articlePicPos,_that.articleVisitor,_that.articleIsNew,_that.articlePriority,_that.articleActiveVote,_that.articleActiveHint,_that.articleActive,_that.articleDate,_that.articlePicActive,_that.articleLastArticle,_that.articlePublisherId,_that.articleSource,_that.articleSourceUrl,_that.articleYoutubeId,_that.articleFile,_that.articleUserAddHintNsup,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_ts')  String? articleTs, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_pic_pos')  String? articlePicPos, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_is_new')  String? articleIsNew, @JsonKey(name: 'article_priority')  String? articlePriority, @JsonKey(name: 'article_active_vote')  String? articleActiveVote, @JsonKey(name: 'article_active_hint')  String? articleActiveHint, @JsonKey(name: 'article_active')  String? articleActive, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_pic_active')  String? articlePicActive, @JsonKey(name: 'article_last_article')  String? articleLastArticle, @JsonKey(name: 'article_publisher_id')  String? articlePublisherId, @JsonKey(name: 'article_source')  String? articleSource, @JsonKey(name: 'article_source_url')  String? articleSourceUrl, @JsonKey(name: 'article_youtube_id')  String? articleYoutubeId, @JsonKey(name: 'article_file')  String? articleFile, @JsonKey(name: 'article_user_add_hint_nsup')  String? articleUserAddHintNsup,  ArticleDetailCategory? category)  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailData():
return $default(_that.articleId,_that.articleCatId,_that.articleTitle,_that.articleTs,_that.articleSummary,_that.articlePic,_that.articleDes,_that.articlePicPos,_that.articleVisitor,_that.articleIsNew,_that.articlePriority,_that.articleActiveVote,_that.articleActiveHint,_that.articleActive,_that.articleDate,_that.articlePicActive,_that.articleLastArticle,_that.articlePublisherId,_that.articleSource,_that.articleSourceUrl,_that.articleYoutubeId,_that.articleFile,_that.articleUserAddHintNsup,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_ts')  String? articleTs, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_pic_pos')  String? articlePicPos, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_is_new')  String? articleIsNew, @JsonKey(name: 'article_priority')  String? articlePriority, @JsonKey(name: 'article_active_vote')  String? articleActiveVote, @JsonKey(name: 'article_active_hint')  String? articleActiveHint, @JsonKey(name: 'article_active')  String? articleActive, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_pic_active')  String? articlePicActive, @JsonKey(name: 'article_last_article')  String? articleLastArticle, @JsonKey(name: 'article_publisher_id')  String? articlePublisherId, @JsonKey(name: 'article_source')  String? articleSource, @JsonKey(name: 'article_source_url')  String? articleSourceUrl, @JsonKey(name: 'article_youtube_id')  String? articleYoutubeId, @JsonKey(name: 'article_file')  String? articleFile, @JsonKey(name: 'article_user_add_hint_nsup')  String? articleUserAddHintNsup,  ArticleDetailCategory? category)?  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailData() when $default != null:
return $default(_that.articleId,_that.articleCatId,_that.articleTitle,_that.articleTs,_that.articleSummary,_that.articlePic,_that.articleDes,_that.articlePicPos,_that.articleVisitor,_that.articleIsNew,_that.articlePriority,_that.articleActiveVote,_that.articleActiveHint,_that.articleActive,_that.articleDate,_that.articlePicActive,_that.articleLastArticle,_that.articlePublisherId,_that.articleSource,_that.articleSourceUrl,_that.articleYoutubeId,_that.articleFile,_that.articleUserAddHintNsup,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleDetailData implements ArticleDetailData {
  const _ArticleDetailData({@JsonKey(name: 'article_id') this.articleId, @JsonKey(name: 'article_cat_id') this.articleCatId, @JsonKey(name: 'article_title') this.articleTitle, @JsonKey(name: 'article_ts') this.articleTs, @JsonKey(name: 'article_summary') this.articleSummary, @JsonKey(name: 'article_pic') this.articlePic, @JsonKey(name: 'article_des') this.articleDes, @JsonKey(name: 'article_pic_pos') this.articlePicPos, @JsonKey(name: 'article_visitor') this.articleVisitor, @JsonKey(name: 'article_is_new') this.articleIsNew, @JsonKey(name: 'article_priority') this.articlePriority, @JsonKey(name: 'article_active_vote') this.articleActiveVote, @JsonKey(name: 'article_active_hint') this.articleActiveHint, @JsonKey(name: 'article_active') this.articleActive, @JsonKey(name: 'article_date') this.articleDate, @JsonKey(name: 'article_pic_active') this.articlePicActive, @JsonKey(name: 'article_last_article') this.articleLastArticle, @JsonKey(name: 'article_publisher_id') this.articlePublisherId, @JsonKey(name: 'article_source') this.articleSource, @JsonKey(name: 'article_source_url') this.articleSourceUrl, @JsonKey(name: 'article_youtube_id') this.articleYoutubeId, @JsonKey(name: 'article_file') this.articleFile, @JsonKey(name: 'article_user_add_hint_nsup') this.articleUserAddHintNsup, this.category});
  factory _ArticleDetailData.fromJson(Map<String, dynamic> json) => _$ArticleDetailDataFromJson(json);

@override@JsonKey(name: 'article_id') final  int? articleId;
@override@JsonKey(name: 'article_cat_id') final  String? articleCatId;
@override@JsonKey(name: 'article_title') final  String? articleTitle;
@override@JsonKey(name: 'article_ts') final  String? articleTs;
@override@JsonKey(name: 'article_summary') final  String? articleSummary;
@override@JsonKey(name: 'article_pic') final  String? articlePic;
@override@JsonKey(name: 'article_des') final  String? articleDes;
@override@JsonKey(name: 'article_pic_pos') final  String? articlePicPos;
@override@JsonKey(name: 'article_visitor') final  String? articleVisitor;
@override@JsonKey(name: 'article_is_new') final  String? articleIsNew;
@override@JsonKey(name: 'article_priority') final  String? articlePriority;
@override@JsonKey(name: 'article_active_vote') final  String? articleActiveVote;
@override@JsonKey(name: 'article_active_hint') final  String? articleActiveHint;
@override@JsonKey(name: 'article_active') final  String? articleActive;
@override@JsonKey(name: 'article_date') final  String? articleDate;
@override@JsonKey(name: 'article_pic_active') final  String? articlePicActive;
@override@JsonKey(name: 'article_last_article') final  String? articleLastArticle;
@override@JsonKey(name: 'article_publisher_id') final  String? articlePublisherId;
@override@JsonKey(name: 'article_source') final  String? articleSource;
@override@JsonKey(name: 'article_source_url') final  String? articleSourceUrl;
@override@JsonKey(name: 'article_youtube_id') final  String? articleYoutubeId;
@override@JsonKey(name: 'article_file') final  String? articleFile;
@override@JsonKey(name: 'article_user_add_hint_nsup') final  String? articleUserAddHintNsup;
@override final  ArticleDetailCategory? category;

/// Create a copy of ArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleDetailDataCopyWith<_ArticleDetailData> get copyWith => __$ArticleDetailDataCopyWithImpl<_ArticleDetailData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleDetailDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleDetailData&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleTs, articleTs) || other.articleTs == articleTs)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articlePicPos, articlePicPos) || other.articlePicPos == articlePicPos)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articleIsNew, articleIsNew) || other.articleIsNew == articleIsNew)&&(identical(other.articlePriority, articlePriority) || other.articlePriority == articlePriority)&&(identical(other.articleActiveVote, articleActiveVote) || other.articleActiveVote == articleActiveVote)&&(identical(other.articleActiveHint, articleActiveHint) || other.articleActiveHint == articleActiveHint)&&(identical(other.articleActive, articleActive) || other.articleActive == articleActive)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articlePicActive, articlePicActive) || other.articlePicActive == articlePicActive)&&(identical(other.articleLastArticle, articleLastArticle) || other.articleLastArticle == articleLastArticle)&&(identical(other.articlePublisherId, articlePublisherId) || other.articlePublisherId == articlePublisherId)&&(identical(other.articleSource, articleSource) || other.articleSource == articleSource)&&(identical(other.articleSourceUrl, articleSourceUrl) || other.articleSourceUrl == articleSourceUrl)&&(identical(other.articleYoutubeId, articleYoutubeId) || other.articleYoutubeId == articleYoutubeId)&&(identical(other.articleFile, articleFile) || other.articleFile == articleFile)&&(identical(other.articleUserAddHintNsup, articleUserAddHintNsup) || other.articleUserAddHintNsup == articleUserAddHintNsup)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,articleId,articleCatId,articleTitle,articleTs,articleSummary,articlePic,articleDes,articlePicPos,articleVisitor,articleIsNew,articlePriority,articleActiveVote,articleActiveHint,articleActive,articleDate,articlePicActive,articleLastArticle,articlePublisherId,articleSource,articleSourceUrl,articleYoutubeId,articleFile,articleUserAddHintNsup,category]);

@override
String toString() {
  return 'ArticleDetailData(articleId: $articleId, articleCatId: $articleCatId, articleTitle: $articleTitle, articleTs: $articleTs, articleSummary: $articleSummary, articlePic: $articlePic, articleDes: $articleDes, articlePicPos: $articlePicPos, articleVisitor: $articleVisitor, articleIsNew: $articleIsNew, articlePriority: $articlePriority, articleActiveVote: $articleActiveVote, articleActiveHint: $articleActiveHint, articleActive: $articleActive, articleDate: $articleDate, articlePicActive: $articlePicActive, articleLastArticle: $articleLastArticle, articlePublisherId: $articlePublisherId, articleSource: $articleSource, articleSourceUrl: $articleSourceUrl, articleYoutubeId: $articleYoutubeId, articleFile: $articleFile, articleUserAddHintNsup: $articleUserAddHintNsup, category: $category)';
}


}

/// @nodoc
abstract mixin class _$ArticleDetailDataCopyWith<$Res> implements $ArticleDetailDataCopyWith<$Res> {
  factory _$ArticleDetailDataCopyWith(_ArticleDetailData value, $Res Function(_ArticleDetailData) _then) = __$ArticleDetailDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'article_id') int? articleId,@JsonKey(name: 'article_cat_id') String? articleCatId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_ts') String? articleTs,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_pic_pos') String? articlePicPos,@JsonKey(name: 'article_visitor') String? articleVisitor,@JsonKey(name: 'article_is_new') String? articleIsNew,@JsonKey(name: 'article_priority') String? articlePriority,@JsonKey(name: 'article_active_vote') String? articleActiveVote,@JsonKey(name: 'article_active_hint') String? articleActiveHint,@JsonKey(name: 'article_active') String? articleActive,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_pic_active') String? articlePicActive,@JsonKey(name: 'article_last_article') String? articleLastArticle,@JsonKey(name: 'article_publisher_id') String? articlePublisherId,@JsonKey(name: 'article_source') String? articleSource,@JsonKey(name: 'article_source_url') String? articleSourceUrl,@JsonKey(name: 'article_youtube_id') String? articleYoutubeId,@JsonKey(name: 'article_file') String? articleFile,@JsonKey(name: 'article_user_add_hint_nsup') String? articleUserAddHintNsup, ArticleDetailCategory? category
});


@override $ArticleDetailCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$ArticleDetailDataCopyWithImpl<$Res>
    implements _$ArticleDetailDataCopyWith<$Res> {
  __$ArticleDetailDataCopyWithImpl(this._self, this._then);

  final _ArticleDetailData _self;
  final $Res Function(_ArticleDetailData) _then;

/// Create a copy of ArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articleId = freezed,Object? articleCatId = freezed,Object? articleTitle = freezed,Object? articleTs = freezed,Object? articleSummary = freezed,Object? articlePic = freezed,Object? articleDes = freezed,Object? articlePicPos = freezed,Object? articleVisitor = freezed,Object? articleIsNew = freezed,Object? articlePriority = freezed,Object? articleActiveVote = freezed,Object? articleActiveHint = freezed,Object? articleActive = freezed,Object? articleDate = freezed,Object? articlePicActive = freezed,Object? articleLastArticle = freezed,Object? articlePublisherId = freezed,Object? articleSource = freezed,Object? articleSourceUrl = freezed,Object? articleYoutubeId = freezed,Object? articleFile = freezed,Object? articleUserAddHintNsup = freezed,Object? category = freezed,}) {
  return _then(_ArticleDetailData(
articleId: freezed == articleId ? _self.articleId : articleId // ignore: cast_nullable_to_non_nullable
as int?,articleCatId: freezed == articleCatId ? _self.articleCatId : articleCatId // ignore: cast_nullable_to_non_nullable
as String?,articleTitle: freezed == articleTitle ? _self.articleTitle : articleTitle // ignore: cast_nullable_to_non_nullable
as String?,articleTs: freezed == articleTs ? _self.articleTs : articleTs // ignore: cast_nullable_to_non_nullable
as String?,articleSummary: freezed == articleSummary ? _self.articleSummary : articleSummary // ignore: cast_nullable_to_non_nullable
as String?,articlePic: freezed == articlePic ? _self.articlePic : articlePic // ignore: cast_nullable_to_non_nullable
as String?,articleDes: freezed == articleDes ? _self.articleDes : articleDes // ignore: cast_nullable_to_non_nullable
as String?,articlePicPos: freezed == articlePicPos ? _self.articlePicPos : articlePicPos // ignore: cast_nullable_to_non_nullable
as String?,articleVisitor: freezed == articleVisitor ? _self.articleVisitor : articleVisitor // ignore: cast_nullable_to_non_nullable
as String?,articleIsNew: freezed == articleIsNew ? _self.articleIsNew : articleIsNew // ignore: cast_nullable_to_non_nullable
as String?,articlePriority: freezed == articlePriority ? _self.articlePriority : articlePriority // ignore: cast_nullable_to_non_nullable
as String?,articleActiveVote: freezed == articleActiveVote ? _self.articleActiveVote : articleActiveVote // ignore: cast_nullable_to_non_nullable
as String?,articleActiveHint: freezed == articleActiveHint ? _self.articleActiveHint : articleActiveHint // ignore: cast_nullable_to_non_nullable
as String?,articleActive: freezed == articleActive ? _self.articleActive : articleActive // ignore: cast_nullable_to_non_nullable
as String?,articleDate: freezed == articleDate ? _self.articleDate : articleDate // ignore: cast_nullable_to_non_nullable
as String?,articlePicActive: freezed == articlePicActive ? _self.articlePicActive : articlePicActive // ignore: cast_nullable_to_non_nullable
as String?,articleLastArticle: freezed == articleLastArticle ? _self.articleLastArticle : articleLastArticle // ignore: cast_nullable_to_non_nullable
as String?,articlePublisherId: freezed == articlePublisherId ? _self.articlePublisherId : articlePublisherId // ignore: cast_nullable_to_non_nullable
as String?,articleSource: freezed == articleSource ? _self.articleSource : articleSource // ignore: cast_nullable_to_non_nullable
as String?,articleSourceUrl: freezed == articleSourceUrl ? _self.articleSourceUrl : articleSourceUrl // ignore: cast_nullable_to_non_nullable
as String?,articleYoutubeId: freezed == articleYoutubeId ? _self.articleYoutubeId : articleYoutubeId // ignore: cast_nullable_to_non_nullable
as String?,articleFile: freezed == articleFile ? _self.articleFile : articleFile // ignore: cast_nullable_to_non_nullable
as String?,articleUserAddHintNsup: freezed == articleUserAddHintNsup ? _self.articleUserAddHintNsup : articleUserAddHintNsup // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ArticleDetailCategory?,
  ));
}

/// Create a copy of ArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticleDetailCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $ArticleDetailCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$ArticleDetailCategory {

@JsonKey(name: 'cat_id') int? get catId;@JsonKey(name: 'cat_father_id') String? get catFatherId;@JsonKey(name: 'cat_menus') String? get catMenus;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_sup') String? get catSup;@JsonKey(name: 'cat_date') String? get catDate;@JsonKey(name: 'cat_pic_active') String? get catPicActive;@JsonKey(name: 'cat_lan') String? get catLan;@JsonKey(name: 'cat_pos') String? get catPos;@JsonKey(name: 'cat_active') String? get catActive;@JsonKey(name: 'cat_show_menu') String? get catShowMenu;@JsonKey(name: 'cat_show_main') String? get catShowMain;@JsonKey(name: 'cat_agent') String? get catAgent;@JsonKey(name: 'cat_in_sub_menu') String? get catInSubMenu;
/// Create a copy of ArticleDetailCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleDetailCategoryCopyWith<ArticleDetailCategory> get copyWith => _$ArticleDetailCategoryCopyWithImpl<ArticleDetailCategory>(this as ArticleDetailCategory, _$identity);

  /// Serializes this ArticleDetailCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleDetailCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catSup, catSup) || other.catSup == catSup)&&(identical(other.catDate, catDate) || other.catDate == catDate)&&(identical(other.catPicActive, catPicActive) || other.catPicActive == catPicActive)&&(identical(other.catLan, catLan) || other.catLan == catLan)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&(identical(other.catShowMenu, catShowMenu) || other.catShowMenu == catShowMenu)&&(identical(other.catShowMain, catShowMain) || other.catShowMain == catShowMain)&&(identical(other.catAgent, catAgent) || other.catAgent == catAgent)&&(identical(other.catInSubMenu, catInSubMenu) || other.catInSubMenu == catInSubMenu));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catMenus,catTitle,catNote,catPic,catSup,catDate,catPicActive,catLan,catPos,catActive,catShowMenu,catShowMain,catAgent,catInSubMenu);

@override
String toString() {
  return 'ArticleDetailCategory(catId: $catId, catFatherId: $catFatherId, catMenus: $catMenus, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catSup: $catSup, catDate: $catDate, catPicActive: $catPicActive, catLan: $catLan, catPos: $catPos, catActive: $catActive, catShowMenu: $catShowMenu, catShowMain: $catShowMain, catAgent: $catAgent, catInSubMenu: $catInSubMenu)';
}


}

/// @nodoc
abstract mixin class $ArticleDetailCategoryCopyWith<$Res>  {
  factory $ArticleDetailCategoryCopyWith(ArticleDetailCategory value, $Res Function(ArticleDetailCategory) _then) = _$ArticleDetailCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_father_id') String? catFatherId,@JsonKey(name: 'cat_menus') String? catMenus,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_sup') String? catSup,@JsonKey(name: 'cat_date') String? catDate,@JsonKey(name: 'cat_pic_active') String? catPicActive,@JsonKey(name: 'cat_lan') String? catLan,@JsonKey(name: 'cat_pos') String? catPos,@JsonKey(name: 'cat_active') String? catActive,@JsonKey(name: 'cat_show_menu') String? catShowMenu,@JsonKey(name: 'cat_show_main') String? catShowMain,@JsonKey(name: 'cat_agent') String? catAgent,@JsonKey(name: 'cat_in_sub_menu') String? catInSubMenu
});




}
/// @nodoc
class _$ArticleDetailCategoryCopyWithImpl<$Res>
    implements $ArticleDetailCategoryCopyWith<$Res> {
  _$ArticleDetailCategoryCopyWithImpl(this._self, this._then);

  final ArticleDetailCategory _self;
  final $Res Function(ArticleDetailCategory) _then;

/// Create a copy of ArticleDetailCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catFatherId = freezed,Object? catMenus = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catSup = freezed,Object? catDate = freezed,Object? catPicActive = freezed,Object? catLan = freezed,Object? catPos = freezed,Object? catActive = freezed,Object? catShowMenu = freezed,Object? catShowMain = freezed,Object? catAgent = freezed,Object? catInSubMenu = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catFatherId: freezed == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as String?,catMenus: freezed == catMenus ? _self.catMenus : catMenus // ignore: cast_nullable_to_non_nullable
as String?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catSup: freezed == catSup ? _self.catSup : catSup // ignore: cast_nullable_to_non_nullable
as String?,catDate: freezed == catDate ? _self.catDate : catDate // ignore: cast_nullable_to_non_nullable
as String?,catPicActive: freezed == catPicActive ? _self.catPicActive : catPicActive // ignore: cast_nullable_to_non_nullable
as String?,catLan: freezed == catLan ? _self.catLan : catLan // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,catActive: freezed == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as String?,catShowMenu: freezed == catShowMenu ? _self.catShowMenu : catShowMenu // ignore: cast_nullable_to_non_nullable
as String?,catShowMain: freezed == catShowMain ? _self.catShowMain : catShowMain // ignore: cast_nullable_to_non_nullable
as String?,catAgent: freezed == catAgent ? _self.catAgent : catAgent // ignore: cast_nullable_to_non_nullable
as String?,catInSubMenu: freezed == catInSubMenu ? _self.catInSubMenu : catInSubMenu // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticleDetailCategory].
extension ArticleDetailCategoryPatterns on ArticleDetailCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticleDetailCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticleDetailCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticleDetailCategory value)  $default,){
final _that = this;
switch (_that) {
case _ArticleDetailCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticleDetailCategory value)?  $default,){
final _that = this;
switch (_that) {
case _ArticleDetailCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_father_id')  String? catFatherId, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_sup')  String? catSup, @JsonKey(name: 'cat_date')  String? catDate, @JsonKey(name: 'cat_pic_active')  String? catPicActive, @JsonKey(name: 'cat_lan')  String? catLan, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_active')  String? catActive, @JsonKey(name: 'cat_show_menu')  String? catShowMenu, @JsonKey(name: 'cat_show_main')  String? catShowMain, @JsonKey(name: 'cat_agent')  String? catAgent, @JsonKey(name: 'cat_in_sub_menu')  String? catInSubMenu)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleDetailCategory() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catMenus,_that.catTitle,_that.catNote,_that.catPic,_that.catSup,_that.catDate,_that.catPicActive,_that.catLan,_that.catPos,_that.catActive,_that.catShowMenu,_that.catShowMain,_that.catAgent,_that.catInSubMenu);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_father_id')  String? catFatherId, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_sup')  String? catSup, @JsonKey(name: 'cat_date')  String? catDate, @JsonKey(name: 'cat_pic_active')  String? catPicActive, @JsonKey(name: 'cat_lan')  String? catLan, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_active')  String? catActive, @JsonKey(name: 'cat_show_menu')  String? catShowMenu, @JsonKey(name: 'cat_show_main')  String? catShowMain, @JsonKey(name: 'cat_agent')  String? catAgent, @JsonKey(name: 'cat_in_sub_menu')  String? catInSubMenu)  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailCategory():
return $default(_that.catId,_that.catFatherId,_that.catMenus,_that.catTitle,_that.catNote,_that.catPic,_that.catSup,_that.catDate,_that.catPicActive,_that.catLan,_that.catPos,_that.catActive,_that.catShowMenu,_that.catShowMain,_that.catAgent,_that.catInSubMenu);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_father_id')  String? catFatherId, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_sup')  String? catSup, @JsonKey(name: 'cat_date')  String? catDate, @JsonKey(name: 'cat_pic_active')  String? catPicActive, @JsonKey(name: 'cat_lan')  String? catLan, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_active')  String? catActive, @JsonKey(name: 'cat_show_menu')  String? catShowMenu, @JsonKey(name: 'cat_show_main')  String? catShowMain, @JsonKey(name: 'cat_agent')  String? catAgent, @JsonKey(name: 'cat_in_sub_menu')  String? catInSubMenu)?  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailCategory() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catMenus,_that.catTitle,_that.catNote,_that.catPic,_that.catSup,_that.catDate,_that.catPicActive,_that.catLan,_that.catPos,_that.catActive,_that.catShowMenu,_that.catShowMain,_that.catAgent,_that.catInSubMenu);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleDetailCategory implements ArticleDetailCategory {
  const _ArticleDetailCategory({@JsonKey(name: 'cat_id') this.catId, @JsonKey(name: 'cat_father_id') this.catFatherId, @JsonKey(name: 'cat_menus') this.catMenus, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_sup') this.catSup, @JsonKey(name: 'cat_date') this.catDate, @JsonKey(name: 'cat_pic_active') this.catPicActive, @JsonKey(name: 'cat_lan') this.catLan, @JsonKey(name: 'cat_pos') this.catPos, @JsonKey(name: 'cat_active') this.catActive, @JsonKey(name: 'cat_show_menu') this.catShowMenu, @JsonKey(name: 'cat_show_main') this.catShowMain, @JsonKey(name: 'cat_agent') this.catAgent, @JsonKey(name: 'cat_in_sub_menu') this.catInSubMenu});
  factory _ArticleDetailCategory.fromJson(Map<String, dynamic> json) => _$ArticleDetailCategoryFromJson(json);

@override@JsonKey(name: 'cat_id') final  int? catId;
@override@JsonKey(name: 'cat_father_id') final  String? catFatherId;
@override@JsonKey(name: 'cat_menus') final  String? catMenus;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_sup') final  String? catSup;
@override@JsonKey(name: 'cat_date') final  String? catDate;
@override@JsonKey(name: 'cat_pic_active') final  String? catPicActive;
@override@JsonKey(name: 'cat_lan') final  String? catLan;
@override@JsonKey(name: 'cat_pos') final  String? catPos;
@override@JsonKey(name: 'cat_active') final  String? catActive;
@override@JsonKey(name: 'cat_show_menu') final  String? catShowMenu;
@override@JsonKey(name: 'cat_show_main') final  String? catShowMain;
@override@JsonKey(name: 'cat_agent') final  String? catAgent;
@override@JsonKey(name: 'cat_in_sub_menu') final  String? catInSubMenu;

/// Create a copy of ArticleDetailCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleDetailCategoryCopyWith<_ArticleDetailCategory> get copyWith => __$ArticleDetailCategoryCopyWithImpl<_ArticleDetailCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleDetailCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleDetailCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catSup, catSup) || other.catSup == catSup)&&(identical(other.catDate, catDate) || other.catDate == catDate)&&(identical(other.catPicActive, catPicActive) || other.catPicActive == catPicActive)&&(identical(other.catLan, catLan) || other.catLan == catLan)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&(identical(other.catShowMenu, catShowMenu) || other.catShowMenu == catShowMenu)&&(identical(other.catShowMain, catShowMain) || other.catShowMain == catShowMain)&&(identical(other.catAgent, catAgent) || other.catAgent == catAgent)&&(identical(other.catInSubMenu, catInSubMenu) || other.catInSubMenu == catInSubMenu));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catMenus,catTitle,catNote,catPic,catSup,catDate,catPicActive,catLan,catPos,catActive,catShowMenu,catShowMain,catAgent,catInSubMenu);

@override
String toString() {
  return 'ArticleDetailCategory(catId: $catId, catFatherId: $catFatherId, catMenus: $catMenus, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catSup: $catSup, catDate: $catDate, catPicActive: $catPicActive, catLan: $catLan, catPos: $catPos, catActive: $catActive, catShowMenu: $catShowMenu, catShowMain: $catShowMain, catAgent: $catAgent, catInSubMenu: $catInSubMenu)';
}


}

/// @nodoc
abstract mixin class _$ArticleDetailCategoryCopyWith<$Res> implements $ArticleDetailCategoryCopyWith<$Res> {
  factory _$ArticleDetailCategoryCopyWith(_ArticleDetailCategory value, $Res Function(_ArticleDetailCategory) _then) = __$ArticleDetailCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_father_id') String? catFatherId,@JsonKey(name: 'cat_menus') String? catMenus,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_sup') String? catSup,@JsonKey(name: 'cat_date') String? catDate,@JsonKey(name: 'cat_pic_active') String? catPicActive,@JsonKey(name: 'cat_lan') String? catLan,@JsonKey(name: 'cat_pos') String? catPos,@JsonKey(name: 'cat_active') String? catActive,@JsonKey(name: 'cat_show_menu') String? catShowMenu,@JsonKey(name: 'cat_show_main') String? catShowMain,@JsonKey(name: 'cat_agent') String? catAgent,@JsonKey(name: 'cat_in_sub_menu') String? catInSubMenu
});




}
/// @nodoc
class __$ArticleDetailCategoryCopyWithImpl<$Res>
    implements _$ArticleDetailCategoryCopyWith<$Res> {
  __$ArticleDetailCategoryCopyWithImpl(this._self, this._then);

  final _ArticleDetailCategory _self;
  final $Res Function(_ArticleDetailCategory) _then;

/// Create a copy of ArticleDetailCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catFatherId = freezed,Object? catMenus = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catSup = freezed,Object? catDate = freezed,Object? catPicActive = freezed,Object? catLan = freezed,Object? catPos = freezed,Object? catActive = freezed,Object? catShowMenu = freezed,Object? catShowMain = freezed,Object? catAgent = freezed,Object? catInSubMenu = freezed,}) {
  return _then(_ArticleDetailCategory(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catFatherId: freezed == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as String?,catMenus: freezed == catMenus ? _self.catMenus : catMenus // ignore: cast_nullable_to_non_nullable
as String?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catSup: freezed == catSup ? _self.catSup : catSup // ignore: cast_nullable_to_non_nullable
as String?,catDate: freezed == catDate ? _self.catDate : catDate // ignore: cast_nullable_to_non_nullable
as String?,catPicActive: freezed == catPicActive ? _self.catPicActive : catPicActive // ignore: cast_nullable_to_non_nullable
as String?,catLan: freezed == catLan ? _self.catLan : catLan // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,catActive: freezed == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as String?,catShowMenu: freezed == catShowMenu ? _self.catShowMenu : catShowMenu // ignore: cast_nullable_to_non_nullable
as String?,catShowMain: freezed == catShowMain ? _self.catShowMain : catShowMain // ignore: cast_nullable_to_non_nullable
as String?,catAgent: freezed == catAgent ? _self.catAgent : catAgent // ignore: cast_nullable_to_non_nullable
as String?,catInSubMenu: freezed == catInSubMenu ? _self.catInSubMenu : catInSubMenu // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ArticleDetailMeta {

@JsonKey(name: 'response_info') ArticleDetailResponseInfo? get responseInfo;
/// Create a copy of ArticleDetailMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleDetailMetaCopyWith<ArticleDetailMeta> get copyWith => _$ArticleDetailMetaCopyWithImpl<ArticleDetailMeta>(this as ArticleDetailMeta, _$identity);

  /// Serializes this ArticleDetailMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleDetailMeta&&(identical(other.responseInfo, responseInfo) || other.responseInfo == responseInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,responseInfo);

@override
String toString() {
  return 'ArticleDetailMeta(responseInfo: $responseInfo)';
}


}

/// @nodoc
abstract mixin class $ArticleDetailMetaCopyWith<$Res>  {
  factory $ArticleDetailMetaCopyWith(ArticleDetailMeta value, $Res Function(ArticleDetailMeta) _then) = _$ArticleDetailMetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'response_info') ArticleDetailResponseInfo? responseInfo
});


$ArticleDetailResponseInfoCopyWith<$Res>? get responseInfo;

}
/// @nodoc
class _$ArticleDetailMetaCopyWithImpl<$Res>
    implements $ArticleDetailMetaCopyWith<$Res> {
  _$ArticleDetailMetaCopyWithImpl(this._self, this._then);

  final ArticleDetailMeta _self;
  final $Res Function(ArticleDetailMeta) _then;

/// Create a copy of ArticleDetailMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? responseInfo = freezed,}) {
  return _then(_self.copyWith(
responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as ArticleDetailResponseInfo?,
  ));
}
/// Create a copy of ArticleDetailMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticleDetailResponseInfoCopyWith<$Res>? get responseInfo {
    if (_self.responseInfo == null) {
    return null;
  }

  return $ArticleDetailResponseInfoCopyWith<$Res>(_self.responseInfo!, (value) {
    return _then(_self.copyWith(responseInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [ArticleDetailMeta].
extension ArticleDetailMetaPatterns on ArticleDetailMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticleDetailMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticleDetailMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticleDetailMeta value)  $default,){
final _that = this;
switch (_that) {
case _ArticleDetailMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticleDetailMeta value)?  $default,){
final _that = this;
switch (_that) {
case _ArticleDetailMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response_info')  ArticleDetailResponseInfo? responseInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleDetailMeta() when $default != null:
return $default(_that.responseInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response_info')  ArticleDetailResponseInfo? responseInfo)  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailMeta():
return $default(_that.responseInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response_info')  ArticleDetailResponseInfo? responseInfo)?  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailMeta() when $default != null:
return $default(_that.responseInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleDetailMeta implements ArticleDetailMeta {
  const _ArticleDetailMeta({@JsonKey(name: 'response_info') this.responseInfo});
  factory _ArticleDetailMeta.fromJson(Map<String, dynamic> json) => _$ArticleDetailMetaFromJson(json);

@override@JsonKey(name: 'response_info') final  ArticleDetailResponseInfo? responseInfo;

/// Create a copy of ArticleDetailMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleDetailMetaCopyWith<_ArticleDetailMeta> get copyWith => __$ArticleDetailMetaCopyWithImpl<_ArticleDetailMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleDetailMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleDetailMeta&&(identical(other.responseInfo, responseInfo) || other.responseInfo == responseInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,responseInfo);

@override
String toString() {
  return 'ArticleDetailMeta(responseInfo: $responseInfo)';
}


}

/// @nodoc
abstract mixin class _$ArticleDetailMetaCopyWith<$Res> implements $ArticleDetailMetaCopyWith<$Res> {
  factory _$ArticleDetailMetaCopyWith(_ArticleDetailMeta value, $Res Function(_ArticleDetailMeta) _then) = __$ArticleDetailMetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'response_info') ArticleDetailResponseInfo? responseInfo
});


@override $ArticleDetailResponseInfoCopyWith<$Res>? get responseInfo;

}
/// @nodoc
class __$ArticleDetailMetaCopyWithImpl<$Res>
    implements _$ArticleDetailMetaCopyWith<$Res> {
  __$ArticleDetailMetaCopyWithImpl(this._self, this._then);

  final _ArticleDetailMeta _self;
  final $Res Function(_ArticleDetailMeta) _then;

/// Create a copy of ArticleDetailMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? responseInfo = freezed,}) {
  return _then(_ArticleDetailMeta(
responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as ArticleDetailResponseInfo?,
  ));
}

/// Create a copy of ArticleDetailMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticleDetailResponseInfoCopyWith<$Res>? get responseInfo {
    if (_self.responseInfo == null) {
    return null;
  }

  return $ArticleDetailResponseInfoCopyWith<$Res>(_self.responseInfo!, (value) {
    return _then(_self.copyWith(responseInfo: value));
  });
}
}


/// @nodoc
mixin _$ArticleDetailResponseInfo {

 String? get timestamp;@JsonKey(name: 'api_version') String? get apiVersion; String? get endpoint;@JsonKey(name: 'content_type') String? get contentType;
/// Create a copy of ArticleDetailResponseInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleDetailResponseInfoCopyWith<ArticleDetailResponseInfo> get copyWith => _$ArticleDetailResponseInfoCopyWithImpl<ArticleDetailResponseInfo>(this as ArticleDetailResponseInfo, _$identity);

  /// Serializes this ArticleDetailResponseInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleDetailResponseInfo&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,apiVersion,endpoint,contentType);

@override
String toString() {
  return 'ArticleDetailResponseInfo(timestamp: $timestamp, apiVersion: $apiVersion, endpoint: $endpoint, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class $ArticleDetailResponseInfoCopyWith<$Res>  {
  factory $ArticleDetailResponseInfoCopyWith(ArticleDetailResponseInfo value, $Res Function(ArticleDetailResponseInfo) _then) = _$ArticleDetailResponseInfoCopyWithImpl;
@useResult
$Res call({
 String? timestamp,@JsonKey(name: 'api_version') String? apiVersion, String? endpoint,@JsonKey(name: 'content_type') String? contentType
});




}
/// @nodoc
class _$ArticleDetailResponseInfoCopyWithImpl<$Res>
    implements $ArticleDetailResponseInfoCopyWith<$Res> {
  _$ArticleDetailResponseInfoCopyWithImpl(this._self, this._then);

  final ArticleDetailResponseInfo _self;
  final $Res Function(ArticleDetailResponseInfo) _then;

/// Create a copy of ArticleDetailResponseInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = freezed,Object? apiVersion = freezed,Object? endpoint = freezed,Object? contentType = freezed,}) {
  return _then(_self.copyWith(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,apiVersion: freezed == apiVersion ? _self.apiVersion : apiVersion // ignore: cast_nullable_to_non_nullable
as String?,endpoint: freezed == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticleDetailResponseInfo].
extension ArticleDetailResponseInfoPatterns on ArticleDetailResponseInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticleDetailResponseInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticleDetailResponseInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticleDetailResponseInfo value)  $default,){
final _that = this;
switch (_that) {
case _ArticleDetailResponseInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticleDetailResponseInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ArticleDetailResponseInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? timestamp, @JsonKey(name: 'api_version')  String? apiVersion,  String? endpoint, @JsonKey(name: 'content_type')  String? contentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleDetailResponseInfo() when $default != null:
return $default(_that.timestamp,_that.apiVersion,_that.endpoint,_that.contentType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? timestamp, @JsonKey(name: 'api_version')  String? apiVersion,  String? endpoint, @JsonKey(name: 'content_type')  String? contentType)  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailResponseInfo():
return $default(_that.timestamp,_that.apiVersion,_that.endpoint,_that.contentType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? timestamp, @JsonKey(name: 'api_version')  String? apiVersion,  String? endpoint, @JsonKey(name: 'content_type')  String? contentType)?  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailResponseInfo() when $default != null:
return $default(_that.timestamp,_that.apiVersion,_that.endpoint,_that.contentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleDetailResponseInfo implements ArticleDetailResponseInfo {
  const _ArticleDetailResponseInfo({this.timestamp, @JsonKey(name: 'api_version') this.apiVersion, this.endpoint, @JsonKey(name: 'content_type') this.contentType});
  factory _ArticleDetailResponseInfo.fromJson(Map<String, dynamic> json) => _$ArticleDetailResponseInfoFromJson(json);

@override final  String? timestamp;
@override@JsonKey(name: 'api_version') final  String? apiVersion;
@override final  String? endpoint;
@override@JsonKey(name: 'content_type') final  String? contentType;

/// Create a copy of ArticleDetailResponseInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleDetailResponseInfoCopyWith<_ArticleDetailResponseInfo> get copyWith => __$ArticleDetailResponseInfoCopyWithImpl<_ArticleDetailResponseInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleDetailResponseInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleDetailResponseInfo&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,apiVersion,endpoint,contentType);

@override
String toString() {
  return 'ArticleDetailResponseInfo(timestamp: $timestamp, apiVersion: $apiVersion, endpoint: $endpoint, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class _$ArticleDetailResponseInfoCopyWith<$Res> implements $ArticleDetailResponseInfoCopyWith<$Res> {
  factory _$ArticleDetailResponseInfoCopyWith(_ArticleDetailResponseInfo value, $Res Function(_ArticleDetailResponseInfo) _then) = __$ArticleDetailResponseInfoCopyWithImpl;
@override @useResult
$Res call({
 String? timestamp,@JsonKey(name: 'api_version') String? apiVersion, String? endpoint,@JsonKey(name: 'content_type') String? contentType
});




}
/// @nodoc
class __$ArticleDetailResponseInfoCopyWithImpl<$Res>
    implements _$ArticleDetailResponseInfoCopyWith<$Res> {
  __$ArticleDetailResponseInfoCopyWithImpl(this._self, this._then);

  final _ArticleDetailResponseInfo _self;
  final $Res Function(_ArticleDetailResponseInfo) _then;

/// Create a copy of ArticleDetailResponseInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = freezed,Object? apiVersion = freezed,Object? endpoint = freezed,Object? contentType = freezed,}) {
  return _then(_ArticleDetailResponseInfo(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,apiVersion: freezed == apiVersion ? _self.apiVersion : apiVersion // ignore: cast_nullable_to_non_nullable
as String?,endpoint: freezed == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
