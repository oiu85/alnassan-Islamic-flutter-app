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

@JsonKey(name: 'sub_categories') SubCategoriesWrapper? get subCategories;
/// Create a copy of HabibMustafaData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HabibMustafaDataCopyWith<HabibMustafaData> get copyWith => _$HabibMustafaDataCopyWithImpl<HabibMustafaData>(this as HabibMustafaData, _$identity);

  /// Serializes this HabibMustafaData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HabibMustafaData&&(identical(other.subCategories, subCategories) || other.subCategories == subCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subCategories);

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
@JsonKey(name: 'sub_categories') SubCategoriesWrapper? subCategories
});


$SubCategoriesWrapperCopyWith<$Res>? get subCategories;

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
as SubCategoriesWrapper?,
  ));
}
/// Create a copy of HabibMustafaData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubCategoriesWrapperCopyWith<$Res>? get subCategories {
    if (_self.subCategories == null) {
    return null;
  }

  return $SubCategoriesWrapperCopyWith<$Res>(_self.subCategories!, (value) {
    return _then(_self.copyWith(subCategories: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sub_categories')  SubCategoriesWrapper? subCategories)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sub_categories')  SubCategoriesWrapper? subCategories)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sub_categories')  SubCategoriesWrapper? subCategories)?  $default,) {final _that = this;
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
  const _HabibMustafaData({@JsonKey(name: 'sub_categories') this.subCategories});
  factory _HabibMustafaData.fromJson(Map<String, dynamic> json) => _$HabibMustafaDataFromJson(json);

@override@JsonKey(name: 'sub_categories') final  SubCategoriesWrapper? subCategories;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HabibMustafaData&&(identical(other.subCategories, subCategories) || other.subCategories == subCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subCategories);

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
@JsonKey(name: 'sub_categories') SubCategoriesWrapper? subCategories
});


@override $SubCategoriesWrapperCopyWith<$Res>? get subCategories;

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
subCategories: freezed == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as SubCategoriesWrapper?,
  ));
}

/// Create a copy of HabibMustafaData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubCategoriesWrapperCopyWith<$Res>? get subCategories {
    if (_self.subCategories == null) {
    return null;
  }

  return $SubCategoriesWrapperCopyWith<$Res>(_self.subCategories!, (value) {
    return _then(_self.copyWith(subCategories: value));
  });
}
}


/// @nodoc
mixin _$SubCategoriesWrapper {

@JsonKey(name: 'data') List<SubCategory>? get data;@JsonKey(name: 'pagination') Pagination? get pagination;
/// Create a copy of SubCategoriesWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoriesWrapperCopyWith<SubCategoriesWrapper> get copyWith => _$SubCategoriesWrapperCopyWithImpl<SubCategoriesWrapper>(this as SubCategoriesWrapper, _$identity);

  /// Serializes this SubCategoriesWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoriesWrapper&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'SubCategoriesWrapper(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $SubCategoriesWrapperCopyWith<$Res>  {
  factory $SubCategoriesWrapperCopyWith(SubCategoriesWrapper value, $Res Function(SubCategoriesWrapper) _then) = _$SubCategoriesWrapperCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<SubCategory>? data,@JsonKey(name: 'pagination') Pagination? pagination
});


$PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$SubCategoriesWrapperCopyWithImpl<$Res>
    implements $SubCategoriesWrapperCopyWith<$Res> {
  _$SubCategoriesWrapperCopyWithImpl(this._self, this._then);

  final SubCategoriesWrapper _self;
  final $Res Function(SubCategoriesWrapper) _then;

/// Create a copy of SubCategoriesWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<SubCategory>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}
/// Create a copy of SubCategoriesWrapper
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


/// Adds pattern-matching-related methods to [SubCategoriesWrapper].
extension SubCategoriesWrapperPatterns on SubCategoriesWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubCategoriesWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubCategoriesWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubCategoriesWrapper value)  $default,){
final _that = this;
switch (_that) {
case _SubCategoriesWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubCategoriesWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _SubCategoriesWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<SubCategory>? data, @JsonKey(name: 'pagination')  Pagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubCategoriesWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<SubCategory>? data, @JsonKey(name: 'pagination')  Pagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _SubCategoriesWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<SubCategory>? data, @JsonKey(name: 'pagination')  Pagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _SubCategoriesWrapper() when $default != null:
return $default(_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubCategoriesWrapper implements SubCategoriesWrapper {
  const _SubCategoriesWrapper({@JsonKey(name: 'data') final  List<SubCategory>? data, @JsonKey(name: 'pagination') this.pagination}): _data = data;
  factory _SubCategoriesWrapper.fromJson(Map<String, dynamic> json) => _$SubCategoriesWrapperFromJson(json);

 final  List<SubCategory>? _data;
@override@JsonKey(name: 'data') List<SubCategory>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'pagination') final  Pagination? pagination;

/// Create a copy of SubCategoriesWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubCategoriesWrapperCopyWith<_SubCategoriesWrapper> get copyWith => __$SubCategoriesWrapperCopyWithImpl<_SubCategoriesWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubCategoriesWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubCategoriesWrapper&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'SubCategoriesWrapper(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$SubCategoriesWrapperCopyWith<$Res> implements $SubCategoriesWrapperCopyWith<$Res> {
  factory _$SubCategoriesWrapperCopyWith(_SubCategoriesWrapper value, $Res Function(_SubCategoriesWrapper) _then) = __$SubCategoriesWrapperCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<SubCategory>? data,@JsonKey(name: 'pagination') Pagination? pagination
});


@override $PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$SubCategoriesWrapperCopyWithImpl<$Res>
    implements _$SubCategoriesWrapperCopyWith<$Res> {
  __$SubCategoriesWrapperCopyWithImpl(this._self, this._then);

  final _SubCategoriesWrapper _self;
  final $Res Function(_SubCategoriesWrapper) _then;

/// Create a copy of SubCategoriesWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_SubCategoriesWrapper(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<SubCategory>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}

/// Create a copy of SubCategoriesWrapper
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

@JsonKey(name: 'cat_id') int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_menus') String? get catMenus;@JsonKey(name: 'cat_pos') String? get catPos;@JsonKey(name: 'cat_in_sub_menu') String? get catInSubMenu;@JsonKey(name: 'articles') List<HabibArticle>? get articles;
/// Create a copy of SubCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryCopyWith<SubCategory> get copyWith => _$SubCategoryCopyWithImpl<SubCategory>(this as SubCategory, _$identity);

  /// Serializes this SubCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catInSubMenu, catInSubMenu) || other.catInSubMenu == catInSubMenu)&&const DeepCollectionEquality().equals(other.articles, articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catMenus,catPos,catInSubMenu,const DeepCollectionEquality().hash(articles));

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
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_menus') String? catMenus,@JsonKey(name: 'cat_pos') String? catPos,@JsonKey(name: 'cat_in_sub_menu') String? catInSubMenu,@JsonKey(name: 'articles') List<HabibArticle>? articles
});




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
as List<HabibArticle>?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_in_sub_menu')  String? catInSubMenu, @JsonKey(name: 'articles')  List<HabibArticle>? articles)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_in_sub_menu')  String? catInSubMenu, @JsonKey(name: 'articles')  List<HabibArticle>? articles)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_in_sub_menu')  String? catInSubMenu, @JsonKey(name: 'articles')  List<HabibArticle>? articles)?  $default,) {final _that = this;
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
  const _SubCategory({@JsonKey(name: 'cat_id') this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_menus') this.catMenus, @JsonKey(name: 'cat_pos') this.catPos, @JsonKey(name: 'cat_in_sub_menu') this.catInSubMenu, @JsonKey(name: 'articles') final  List<HabibArticle>? articles}): _articles = articles;
  factory _SubCategory.fromJson(Map<String, dynamic> json) => _$SubCategoryFromJson(json);

@override@JsonKey(name: 'cat_id') final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_menus') final  String? catMenus;
@override@JsonKey(name: 'cat_pos') final  String? catPos;
@override@JsonKey(name: 'cat_in_sub_menu') final  String? catInSubMenu;
 final  List<HabibArticle>? _articles;
@override@JsonKey(name: 'articles') List<HabibArticle>? get articles {
  final value = _articles;
  if (value == null) return null;
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catInSubMenu, catInSubMenu) || other.catInSubMenu == catInSubMenu)&&const DeepCollectionEquality().equals(other._articles, _articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catMenus,catPos,catInSubMenu,const DeepCollectionEquality().hash(_articles));

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
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_menus') String? catMenus,@JsonKey(name: 'cat_pos') String? catPos,@JsonKey(name: 'cat_in_sub_menu') String? catInSubMenu,@JsonKey(name: 'articles') List<HabibArticle>? articles
});




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
as String?,articles: freezed == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<HabibArticle>?,
  ));
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

// dart format on
