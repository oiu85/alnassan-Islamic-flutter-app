// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advisory_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvisoryCategoriesModel {

 String? get status; AdvisoryCategoriesData? get data; Pagination? get pagination; Meta? get meta;
/// Create a copy of AdvisoryCategoriesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdvisoryCategoriesModelCopyWith<AdvisoryCategoriesModel> get copyWith => _$AdvisoryCategoriesModelCopyWithImpl<AdvisoryCategoriesModel>(this as AdvisoryCategoriesModel, _$identity);

  /// Serializes this AdvisoryCategoriesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdvisoryCategoriesModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,pagination,meta);

@override
String toString() {
  return 'AdvisoryCategoriesModel(status: $status, data: $data, pagination: $pagination, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $AdvisoryCategoriesModelCopyWith<$Res>  {
  factory $AdvisoryCategoriesModelCopyWith(AdvisoryCategoriesModel value, $Res Function(AdvisoryCategoriesModel) _then) = _$AdvisoryCategoriesModelCopyWithImpl;
@useResult
$Res call({
 String? status, AdvisoryCategoriesData? data, Pagination? pagination, Meta? meta
});


$AdvisoryCategoriesDataCopyWith<$Res>? get data;$PaginationCopyWith<$Res>? get pagination;$MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$AdvisoryCategoriesModelCopyWithImpl<$Res>
    implements $AdvisoryCategoriesModelCopyWith<$Res> {
  _$AdvisoryCategoriesModelCopyWithImpl(this._self, this._then);

  final AdvisoryCategoriesModel _self;
  final $Res Function(AdvisoryCategoriesModel) _then;

/// Create a copy of AdvisoryCategoriesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,Object? pagination = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AdvisoryCategoriesData?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}
/// Create a copy of AdvisoryCategoriesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdvisoryCategoriesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AdvisoryCategoriesDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of AdvisoryCategoriesModel
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
}/// Create a copy of AdvisoryCategoriesModel
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


/// Adds pattern-matching-related methods to [AdvisoryCategoriesModel].
extension AdvisoryCategoriesModelPatterns on AdvisoryCategoriesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdvisoryCategoriesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdvisoryCategoriesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdvisoryCategoriesModel value)  $default,){
final _that = this;
switch (_that) {
case _AdvisoryCategoriesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdvisoryCategoriesModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdvisoryCategoriesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  AdvisoryCategoriesData? data,  Pagination? pagination,  Meta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdvisoryCategoriesModel() when $default != null:
return $default(_that.status,_that.data,_that.pagination,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  AdvisoryCategoriesData? data,  Pagination? pagination,  Meta? meta)  $default,) {final _that = this;
switch (_that) {
case _AdvisoryCategoriesModel():
return $default(_that.status,_that.data,_that.pagination,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  AdvisoryCategoriesData? data,  Pagination? pagination,  Meta? meta)?  $default,) {final _that = this;
switch (_that) {
case _AdvisoryCategoriesModel() when $default != null:
return $default(_that.status,_that.data,_that.pagination,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdvisoryCategoriesModel implements AdvisoryCategoriesModel {
  const _AdvisoryCategoriesModel({this.status, this.data, this.pagination, this.meta});
  factory _AdvisoryCategoriesModel.fromJson(Map<String, dynamic> json) => _$AdvisoryCategoriesModelFromJson(json);

@override final  String? status;
@override final  AdvisoryCategoriesData? data;
@override final  Pagination? pagination;
@override final  Meta? meta;

/// Create a copy of AdvisoryCategoriesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdvisoryCategoriesModelCopyWith<_AdvisoryCategoriesModel> get copyWith => __$AdvisoryCategoriesModelCopyWithImpl<_AdvisoryCategoriesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdvisoryCategoriesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdvisoryCategoriesModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,pagination,meta);

@override
String toString() {
  return 'AdvisoryCategoriesModel(status: $status, data: $data, pagination: $pagination, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$AdvisoryCategoriesModelCopyWith<$Res> implements $AdvisoryCategoriesModelCopyWith<$Res> {
  factory _$AdvisoryCategoriesModelCopyWith(_AdvisoryCategoriesModel value, $Res Function(_AdvisoryCategoriesModel) _then) = __$AdvisoryCategoriesModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, AdvisoryCategoriesData? data, Pagination? pagination, Meta? meta
});


@override $AdvisoryCategoriesDataCopyWith<$Res>? get data;@override $PaginationCopyWith<$Res>? get pagination;@override $MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$AdvisoryCategoriesModelCopyWithImpl<$Res>
    implements _$AdvisoryCategoriesModelCopyWith<$Res> {
  __$AdvisoryCategoriesModelCopyWithImpl(this._self, this._then);

  final _AdvisoryCategoriesModel _self;
  final $Res Function(_AdvisoryCategoriesModel) _then;

/// Create a copy of AdvisoryCategoriesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,Object? pagination = freezed,Object? meta = freezed,}) {
  return _then(_AdvisoryCategoriesModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AdvisoryCategoriesData?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}

/// Create a copy of AdvisoryCategoriesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdvisoryCategoriesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AdvisoryCategoriesDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of AdvisoryCategoriesModel
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
}/// Create a copy of AdvisoryCategoriesModel
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
mixin _$AdvisoryCategoriesData {

@JsonKey(name: 'parent_categories') List<ParentCategory>? get parentCategories;
/// Create a copy of AdvisoryCategoriesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdvisoryCategoriesDataCopyWith<AdvisoryCategoriesData> get copyWith => _$AdvisoryCategoriesDataCopyWithImpl<AdvisoryCategoriesData>(this as AdvisoryCategoriesData, _$identity);

  /// Serializes this AdvisoryCategoriesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdvisoryCategoriesData&&const DeepCollectionEquality().equals(other.parentCategories, parentCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(parentCategories));

@override
String toString() {
  return 'AdvisoryCategoriesData(parentCategories: $parentCategories)';
}


}

/// @nodoc
abstract mixin class $AdvisoryCategoriesDataCopyWith<$Res>  {
  factory $AdvisoryCategoriesDataCopyWith(AdvisoryCategoriesData value, $Res Function(AdvisoryCategoriesData) _then) = _$AdvisoryCategoriesDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parent_categories') List<ParentCategory>? parentCategories
});




}
/// @nodoc
class _$AdvisoryCategoriesDataCopyWithImpl<$Res>
    implements $AdvisoryCategoriesDataCopyWith<$Res> {
  _$AdvisoryCategoriesDataCopyWithImpl(this._self, this._then);

  final AdvisoryCategoriesData _self;
  final $Res Function(AdvisoryCategoriesData) _then;

/// Create a copy of AdvisoryCategoriesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parentCategories = freezed,}) {
  return _then(_self.copyWith(
parentCategories: freezed == parentCategories ? _self.parentCategories : parentCategories // ignore: cast_nullable_to_non_nullable
as List<ParentCategory>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdvisoryCategoriesData].
extension AdvisoryCategoriesDataPatterns on AdvisoryCategoriesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdvisoryCategoriesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdvisoryCategoriesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdvisoryCategoriesData value)  $default,){
final _that = this;
switch (_that) {
case _AdvisoryCategoriesData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdvisoryCategoriesData value)?  $default,){
final _that = this;
switch (_that) {
case _AdvisoryCategoriesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_categories')  List<ParentCategory>? parentCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdvisoryCategoriesData() when $default != null:
return $default(_that.parentCategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_categories')  List<ParentCategory>? parentCategories)  $default,) {final _that = this;
switch (_that) {
case _AdvisoryCategoriesData():
return $default(_that.parentCategories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parent_categories')  List<ParentCategory>? parentCategories)?  $default,) {final _that = this;
switch (_that) {
case _AdvisoryCategoriesData() when $default != null:
return $default(_that.parentCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdvisoryCategoriesData implements AdvisoryCategoriesData {
  const _AdvisoryCategoriesData({@JsonKey(name: 'parent_categories') final  List<ParentCategory>? parentCategories}): _parentCategories = parentCategories;
  factory _AdvisoryCategoriesData.fromJson(Map<String, dynamic> json) => _$AdvisoryCategoriesDataFromJson(json);

 final  List<ParentCategory>? _parentCategories;
@override@JsonKey(name: 'parent_categories') List<ParentCategory>? get parentCategories {
  final value = _parentCategories;
  if (value == null) return null;
  if (_parentCategories is EqualUnmodifiableListView) return _parentCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AdvisoryCategoriesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdvisoryCategoriesDataCopyWith<_AdvisoryCategoriesData> get copyWith => __$AdvisoryCategoriesDataCopyWithImpl<_AdvisoryCategoriesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdvisoryCategoriesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdvisoryCategoriesData&&const DeepCollectionEquality().equals(other._parentCategories, _parentCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_parentCategories));

@override
String toString() {
  return 'AdvisoryCategoriesData(parentCategories: $parentCategories)';
}


}

/// @nodoc
abstract mixin class _$AdvisoryCategoriesDataCopyWith<$Res> implements $AdvisoryCategoriesDataCopyWith<$Res> {
  factory _$AdvisoryCategoriesDataCopyWith(_AdvisoryCategoriesData value, $Res Function(_AdvisoryCategoriesData) _then) = __$AdvisoryCategoriesDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parent_categories') List<ParentCategory>? parentCategories
});




}
/// @nodoc
class __$AdvisoryCategoriesDataCopyWithImpl<$Res>
    implements _$AdvisoryCategoriesDataCopyWith<$Res> {
  __$AdvisoryCategoriesDataCopyWithImpl(this._self, this._then);

  final _AdvisoryCategoriesData _self;
  final $Res Function(_AdvisoryCategoriesData) _then;

/// Create a copy of AdvisoryCategoriesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parentCategories = freezed,}) {
  return _then(_AdvisoryCategoriesData(
parentCategories: freezed == parentCategories ? _self._parentCategories : parentCategories // ignore: cast_nullable_to_non_nullable
as List<ParentCategory>?,
  ));
}


}


/// @nodoc
mixin _$ParentCategory {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_father_id') String? get catFatherId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos') String? get catPos;@JsonKey(name: 'cat_active') String? get catActive;
/// Create a copy of ParentCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParentCategoryCopyWith<ParentCategory> get copyWith => _$ParentCategoryCopyWithImpl<ParentCategory>(this as ParentCategory, _$identity);

  /// Serializes this ParentCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParentCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catTitle,catNote,catPic,catPos,catActive);

@override
String toString() {
  return 'ParentCategory(catId: $catId, catFatherId: $catFatherId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catActive: $catActive)';
}


}

/// @nodoc
abstract mixin class $ParentCategoryCopyWith<$Res>  {
  factory $ParentCategoryCopyWith(ParentCategory value, $Res Function(ParentCategory) _then) = _$ParentCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_father_id') String? catFatherId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos') String? catPos,@JsonKey(name: 'cat_active') String? catActive
});




}
/// @nodoc
class _$ParentCategoryCopyWithImpl<$Res>
    implements $ParentCategoryCopyWith<$Res> {
  _$ParentCategoryCopyWithImpl(this._self, this._then);

  final ParentCategory _self;
  final $Res Function(ParentCategory) _then;

/// Create a copy of ParentCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catFatherId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? catActive = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catFatherId: freezed == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as String?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,catActive: freezed == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParentCategory].
extension ParentCategoryPatterns on ParentCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParentCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParentCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParentCategory value)  $default,){
final _that = this;
switch (_that) {
case _ParentCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParentCategory value)?  $default,){
final _that = this;
switch (_that) {
case _ParentCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_father_id')  String? catFatherId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_active')  String? catActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParentCategory() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_father_id')  String? catFatherId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_active')  String? catActive)  $default,) {final _that = this;
switch (_that) {
case _ParentCategory():
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_father_id')  String? catFatherId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_active')  String? catActive)?  $default,) {final _that = this;
switch (_that) {
case _ParentCategory() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParentCategory implements ParentCategory {
  const _ParentCategory({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_father_id') this.catFatherId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos') this.catPos, @JsonKey(name: 'cat_active') this.catActive});
  factory _ParentCategory.fromJson(Map<String, dynamic> json) => _$ParentCategoryFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
@override@JsonKey(name: 'cat_father_id') final  String? catFatherId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_pos') final  String? catPos;
@override@JsonKey(name: 'cat_active') final  String? catActive;

/// Create a copy of ParentCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParentCategoryCopyWith<_ParentCategory> get copyWith => __$ParentCategoryCopyWithImpl<_ParentCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParentCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParentCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catTitle,catNote,catPic,catPos,catActive);

@override
String toString() {
  return 'ParentCategory(catId: $catId, catFatherId: $catFatherId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catActive: $catActive)';
}


}

/// @nodoc
abstract mixin class _$ParentCategoryCopyWith<$Res> implements $ParentCategoryCopyWith<$Res> {
  factory _$ParentCategoryCopyWith(_ParentCategory value, $Res Function(_ParentCategory) _then) = __$ParentCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_father_id') String? catFatherId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos') String? catPos,@JsonKey(name: 'cat_active') String? catActive
});




}
/// @nodoc
class __$ParentCategoryCopyWithImpl<$Res>
    implements _$ParentCategoryCopyWith<$Res> {
  __$ParentCategoryCopyWithImpl(this._self, this._then);

  final _ParentCategory _self;
  final $Res Function(_ParentCategory) _then;

/// Create a copy of ParentCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catFatherId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? catActive = freezed,}) {
  return _then(_ParentCategory(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catFatherId: freezed == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as String?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,catActive: freezed == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Pagination {

 int? get total; int? get count;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'last_page') int? get lastPage; int? get from; int? get to;
/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationCopyWith<Pagination> get copyWith => _$PaginationCopyWithImpl<Pagination>(this as Pagination, _$identity);

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'Pagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $PaginationCopyWith<$Res>  {
  factory $PaginationCopyWith(Pagination value, $Res Function(Pagination) _then) = _$PaginationCopyWithImpl;
@useResult
$Res call({
 int? total, int? count,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage, int? from, int? to
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
@pragma('vm:prefer-inline') @override $Res call({Object? total = freezed,Object? count = freezed,Object? perPage = freezed,Object? currentPage = freezed,Object? lastPage = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? total,  int? count, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'last_page')  int? lastPage,  int? from,  int? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.total,_that.count,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? total,  int? count, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'last_page')  int? lastPage,  int? from,  int? to)  $default,) {final _that = this;
switch (_that) {
case _Pagination():
return $default(_that.total,_that.count,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? total,  int? count, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'last_page')  int? lastPage,  int? from,  int? to)?  $default,) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.total,_that.count,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pagination implements Pagination {
  const _Pagination({this.total, this.count, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'last_page') this.lastPage, this.from, this.to});
  factory _Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);

@override final  int? total;
@override final  int? count;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'last_page') final  int? lastPage;
@override final  int? from;
@override final  int? to;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'Pagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$PaginationCopyWith<$Res> implements $PaginationCopyWith<$Res> {
  factory _$PaginationCopyWith(_Pagination value, $Res Function(_Pagination) _then) = __$PaginationCopyWithImpl;
@override @useResult
$Res call({
 int? total, int? count,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage, int? from, int? to
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
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? count = freezed,Object? perPage = freezed,Object? currentPage = freezed,Object? lastPage = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_Pagination(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Meta {

 String? get structure;@JsonKey(name: 'children_included') bool? get childrenIncluded;@JsonKey(name: 'fatwas_included') bool? get fatwasIncluded;@JsonKey(name: 'total_parent_categories') int? get totalParentCategories;
/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaCopyWith<Meta> get copyWith => _$MetaCopyWithImpl<Meta>(this as Meta, _$identity);

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Meta&&(identical(other.structure, structure) || other.structure == structure)&&(identical(other.childrenIncluded, childrenIncluded) || other.childrenIncluded == childrenIncluded)&&(identical(other.fatwasIncluded, fatwasIncluded) || other.fatwasIncluded == fatwasIncluded)&&(identical(other.totalParentCategories, totalParentCategories) || other.totalParentCategories == totalParentCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,structure,childrenIncluded,fatwasIncluded,totalParentCategories);

@override
String toString() {
  return 'Meta(structure: $structure, childrenIncluded: $childrenIncluded, fatwasIncluded: $fatwasIncluded, totalParentCategories: $totalParentCategories)';
}


}

/// @nodoc
abstract mixin class $MetaCopyWith<$Res>  {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) _then) = _$MetaCopyWithImpl;
@useResult
$Res call({
 String? structure,@JsonKey(name: 'children_included') bool? childrenIncluded,@JsonKey(name: 'fatwas_included') bool? fatwasIncluded,@JsonKey(name: 'total_parent_categories') int? totalParentCategories
});




}
/// @nodoc
class _$MetaCopyWithImpl<$Res>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._self, this._then);

  final Meta _self;
  final $Res Function(Meta) _then;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? structure = freezed,Object? childrenIncluded = freezed,Object? fatwasIncluded = freezed,Object? totalParentCategories = freezed,}) {
  return _then(_self.copyWith(
structure: freezed == structure ? _self.structure : structure // ignore: cast_nullable_to_non_nullable
as String?,childrenIncluded: freezed == childrenIncluded ? _self.childrenIncluded : childrenIncluded // ignore: cast_nullable_to_non_nullable
as bool?,fatwasIncluded: freezed == fatwasIncluded ? _self.fatwasIncluded : fatwasIncluded // ignore: cast_nullable_to_non_nullable
as bool?,totalParentCategories: freezed == totalParentCategories ? _self.totalParentCategories : totalParentCategories // ignore: cast_nullable_to_non_nullable
as int?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? structure, @JsonKey(name: 'children_included')  bool? childrenIncluded, @JsonKey(name: 'fatwas_included')  bool? fatwasIncluded, @JsonKey(name: 'total_parent_categories')  int? totalParentCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Meta() when $default != null:
return $default(_that.structure,_that.childrenIncluded,_that.fatwasIncluded,_that.totalParentCategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? structure, @JsonKey(name: 'children_included')  bool? childrenIncluded, @JsonKey(name: 'fatwas_included')  bool? fatwasIncluded, @JsonKey(name: 'total_parent_categories')  int? totalParentCategories)  $default,) {final _that = this;
switch (_that) {
case _Meta():
return $default(_that.structure,_that.childrenIncluded,_that.fatwasIncluded,_that.totalParentCategories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? structure, @JsonKey(name: 'children_included')  bool? childrenIncluded, @JsonKey(name: 'fatwas_included')  bool? fatwasIncluded, @JsonKey(name: 'total_parent_categories')  int? totalParentCategories)?  $default,) {final _that = this;
switch (_that) {
case _Meta() when $default != null:
return $default(_that.structure,_that.childrenIncluded,_that.fatwasIncluded,_that.totalParentCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Meta implements Meta {
  const _Meta({this.structure, @JsonKey(name: 'children_included') this.childrenIncluded, @JsonKey(name: 'fatwas_included') this.fatwasIncluded, @JsonKey(name: 'total_parent_categories') this.totalParentCategories});
  factory _Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

@override final  String? structure;
@override@JsonKey(name: 'children_included') final  bool? childrenIncluded;
@override@JsonKey(name: 'fatwas_included') final  bool? fatwasIncluded;
@override@JsonKey(name: 'total_parent_categories') final  int? totalParentCategories;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Meta&&(identical(other.structure, structure) || other.structure == structure)&&(identical(other.childrenIncluded, childrenIncluded) || other.childrenIncluded == childrenIncluded)&&(identical(other.fatwasIncluded, fatwasIncluded) || other.fatwasIncluded == fatwasIncluded)&&(identical(other.totalParentCategories, totalParentCategories) || other.totalParentCategories == totalParentCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,structure,childrenIncluded,fatwasIncluded,totalParentCategories);

@override
String toString() {
  return 'Meta(structure: $structure, childrenIncluded: $childrenIncluded, fatwasIncluded: $fatwasIncluded, totalParentCategories: $totalParentCategories)';
}


}

/// @nodoc
abstract mixin class _$MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$MetaCopyWith(_Meta value, $Res Function(_Meta) _then) = __$MetaCopyWithImpl;
@override @useResult
$Res call({
 String? structure,@JsonKey(name: 'children_included') bool? childrenIncluded,@JsonKey(name: 'fatwas_included') bool? fatwasIncluded,@JsonKey(name: 'total_parent_categories') int? totalParentCategories
});




}
/// @nodoc
class __$MetaCopyWithImpl<$Res>
    implements _$MetaCopyWith<$Res> {
  __$MetaCopyWithImpl(this._self, this._then);

  final _Meta _self;
  final $Res Function(_Meta) _then;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? structure = freezed,Object? childrenIncluded = freezed,Object? fatwasIncluded = freezed,Object? totalParentCategories = freezed,}) {
  return _then(_Meta(
structure: freezed == structure ? _self.structure : structure // ignore: cast_nullable_to_non_nullable
as String?,childrenIncluded: freezed == childrenIncluded ? _self.childrenIncluded : childrenIncluded // ignore: cast_nullable_to_non_nullable
as bool?,fatwasIncluded: freezed == fatwasIncluded ? _self.fatwasIncluded : fatwasIncluded // ignore: cast_nullable_to_non_nullable
as bool?,totalParentCategories: freezed == totalParentCategories ? _self.totalParentCategories : totalParentCategories // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$AdvisoryModel {

 String? get status; List<AdvisoryItem>? get data;
/// Create a copy of AdvisoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdvisoryModelCopyWith<AdvisoryModel> get copyWith => _$AdvisoryModelCopyWithImpl<AdvisoryModel>(this as AdvisoryModel, _$identity);

  /// Serializes this AdvisoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdvisoryModel&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AdvisoryModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $AdvisoryModelCopyWith<$Res>  {
  factory $AdvisoryModelCopyWith(AdvisoryModel value, $Res Function(AdvisoryModel) _then) = _$AdvisoryModelCopyWithImpl;
@useResult
$Res call({
 String? status, List<AdvisoryItem>? data
});




}
/// @nodoc
class _$AdvisoryModelCopyWithImpl<$Res>
    implements $AdvisoryModelCopyWith<$Res> {
  _$AdvisoryModelCopyWithImpl(this._self, this._then);

  final AdvisoryModel _self;
  final $Res Function(AdvisoryModel) _then;

/// Create a copy of AdvisoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AdvisoryItem>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdvisoryModel].
extension AdvisoryModelPatterns on AdvisoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdvisoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdvisoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdvisoryModel value)  $default,){
final _that = this;
switch (_that) {
case _AdvisoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdvisoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdvisoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  List<AdvisoryItem>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdvisoryModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  List<AdvisoryItem>? data)  $default,) {final _that = this;
switch (_that) {
case _AdvisoryModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  List<AdvisoryItem>? data)?  $default,) {final _that = this;
switch (_that) {
case _AdvisoryModel() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdvisoryModel implements AdvisoryModel {
  const _AdvisoryModel({this.status, final  List<AdvisoryItem>? data}): _data = data;
  factory _AdvisoryModel.fromJson(Map<String, dynamic> json) => _$AdvisoryModelFromJson(json);

@override final  String? status;
 final  List<AdvisoryItem>? _data;
@override List<AdvisoryItem>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AdvisoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdvisoryModelCopyWith<_AdvisoryModel> get copyWith => __$AdvisoryModelCopyWithImpl<_AdvisoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdvisoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdvisoryModel&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'AdvisoryModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AdvisoryModelCopyWith<$Res> implements $AdvisoryModelCopyWith<$Res> {
  factory _$AdvisoryModelCopyWith(_AdvisoryModel value, $Res Function(_AdvisoryModel) _then) = __$AdvisoryModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, List<AdvisoryItem>? data
});




}
/// @nodoc
class __$AdvisoryModelCopyWithImpl<$Res>
    implements _$AdvisoryModelCopyWith<$Res> {
  __$AdvisoryModelCopyWithImpl(this._self, this._then);

  final _AdvisoryModel _self;
  final $Res Function(_AdvisoryModel) _then;

/// Create a copy of AdvisoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,}) {
  return _then(_AdvisoryModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AdvisoryItem>?,
  ));
}


}


/// @nodoc
mixin _$AdvisoryItem {

@JsonKey(name: 'advisory_id', fromJson: _stringToInt) int? get advisoryId;@JsonKey(name: 'advisory_cat_id') String? get advisoryCatId;@JsonKey(name: 'advisory_sound_id') String? get advisorySoundId;@JsonKey(name: 'advisory_title') String? get advisoryTitle;@JsonKey(name: 'advisory_question') String? get advisoryQuestion;@JsonKey(name: 'advisory_question_date') String? get advisoryQuestionDate;@JsonKey(name: 'advisory_answer') String? get advisoryAnswer;@JsonKey(name: 'advisory_answer_date') String? get advisoryAnswerDate;@JsonKey(name: 'advisory_visitor', fromJson: _stringToInt) int? get advisoryVisitor;@JsonKey(name: 'advisory_last_advisory') String? get advisoryLastAdvisory;@JsonKey(name: 'advisory_priority') String? get advisoryPriority;@JsonKey(name: 'advisory_active_vote') String? get advisoryActiveVote;@JsonKey(name: 'advisory_active_hint') String? get advisoryActiveHint;@JsonKey(name: 'advisory_pic') String? get advisoryPic;@JsonKey(name: 'advisory_pic_active') bool? get advisoryPicActive;@JsonKey(name: 'advisory_pic_pos') String? get advisoryPicPos;@JsonKey(name: 'advisory_sender_name') String? get advisorySenderName;@JsonKey(name: 'advisory_sender_email') String? get advisorySenderEmail;@JsonKey(name: 'advisory_publisher_id') String? get advisoryPublisherId;@JsonKey(name: 'advisory_source') String? get advisorySource;@JsonKey(name: 'advisory_source_url') String? get advisorySourceUrl;@JsonKey(name: 'advisory_youtube_id') String? get advisoryYoutubeId;@JsonKey(name: 'advisory_file') String? get advisoryFile;@JsonKey(name: 'advisory_user_add_hint_nsup') String? get advisoryUserAddHintNsup;@JsonKey(name: 'advisory_is_new') bool? get advisoryIsNew;@JsonKey(name: 'advisory_active') bool? get advisoryActive; AdvisoryCategory? get category;
/// Create a copy of AdvisoryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdvisoryItemCopyWith<AdvisoryItem> get copyWith => _$AdvisoryItemCopyWithImpl<AdvisoryItem>(this as AdvisoryItem, _$identity);

  /// Serializes this AdvisoryItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdvisoryItem&&(identical(other.advisoryId, advisoryId) || other.advisoryId == advisoryId)&&(identical(other.advisoryCatId, advisoryCatId) || other.advisoryCatId == advisoryCatId)&&(identical(other.advisorySoundId, advisorySoundId) || other.advisorySoundId == advisorySoundId)&&(identical(other.advisoryTitle, advisoryTitle) || other.advisoryTitle == advisoryTitle)&&(identical(other.advisoryQuestion, advisoryQuestion) || other.advisoryQuestion == advisoryQuestion)&&(identical(other.advisoryQuestionDate, advisoryQuestionDate) || other.advisoryQuestionDate == advisoryQuestionDate)&&(identical(other.advisoryAnswer, advisoryAnswer) || other.advisoryAnswer == advisoryAnswer)&&(identical(other.advisoryAnswerDate, advisoryAnswerDate) || other.advisoryAnswerDate == advisoryAnswerDate)&&(identical(other.advisoryVisitor, advisoryVisitor) || other.advisoryVisitor == advisoryVisitor)&&(identical(other.advisoryLastAdvisory, advisoryLastAdvisory) || other.advisoryLastAdvisory == advisoryLastAdvisory)&&(identical(other.advisoryPriority, advisoryPriority) || other.advisoryPriority == advisoryPriority)&&(identical(other.advisoryActiveVote, advisoryActiveVote) || other.advisoryActiveVote == advisoryActiveVote)&&(identical(other.advisoryActiveHint, advisoryActiveHint) || other.advisoryActiveHint == advisoryActiveHint)&&(identical(other.advisoryPic, advisoryPic) || other.advisoryPic == advisoryPic)&&(identical(other.advisoryPicActive, advisoryPicActive) || other.advisoryPicActive == advisoryPicActive)&&(identical(other.advisoryPicPos, advisoryPicPos) || other.advisoryPicPos == advisoryPicPos)&&(identical(other.advisorySenderName, advisorySenderName) || other.advisorySenderName == advisorySenderName)&&(identical(other.advisorySenderEmail, advisorySenderEmail) || other.advisorySenderEmail == advisorySenderEmail)&&(identical(other.advisoryPublisherId, advisoryPublisherId) || other.advisoryPublisherId == advisoryPublisherId)&&(identical(other.advisorySource, advisorySource) || other.advisorySource == advisorySource)&&(identical(other.advisorySourceUrl, advisorySourceUrl) || other.advisorySourceUrl == advisorySourceUrl)&&(identical(other.advisoryYoutubeId, advisoryYoutubeId) || other.advisoryYoutubeId == advisoryYoutubeId)&&(identical(other.advisoryFile, advisoryFile) || other.advisoryFile == advisoryFile)&&(identical(other.advisoryUserAddHintNsup, advisoryUserAddHintNsup) || other.advisoryUserAddHintNsup == advisoryUserAddHintNsup)&&(identical(other.advisoryIsNew, advisoryIsNew) || other.advisoryIsNew == advisoryIsNew)&&(identical(other.advisoryActive, advisoryActive) || other.advisoryActive == advisoryActive)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,advisoryId,advisoryCatId,advisorySoundId,advisoryTitle,advisoryQuestion,advisoryQuestionDate,advisoryAnswer,advisoryAnswerDate,advisoryVisitor,advisoryLastAdvisory,advisoryPriority,advisoryActiveVote,advisoryActiveHint,advisoryPic,advisoryPicActive,advisoryPicPos,advisorySenderName,advisorySenderEmail,advisoryPublisherId,advisorySource,advisorySourceUrl,advisoryYoutubeId,advisoryFile,advisoryUserAddHintNsup,advisoryIsNew,advisoryActive,category]);

@override
String toString() {
  return 'AdvisoryItem(advisoryId: $advisoryId, advisoryCatId: $advisoryCatId, advisorySoundId: $advisorySoundId, advisoryTitle: $advisoryTitle, advisoryQuestion: $advisoryQuestion, advisoryQuestionDate: $advisoryQuestionDate, advisoryAnswer: $advisoryAnswer, advisoryAnswerDate: $advisoryAnswerDate, advisoryVisitor: $advisoryVisitor, advisoryLastAdvisory: $advisoryLastAdvisory, advisoryPriority: $advisoryPriority, advisoryActiveVote: $advisoryActiveVote, advisoryActiveHint: $advisoryActiveHint, advisoryPic: $advisoryPic, advisoryPicActive: $advisoryPicActive, advisoryPicPos: $advisoryPicPos, advisorySenderName: $advisorySenderName, advisorySenderEmail: $advisorySenderEmail, advisoryPublisherId: $advisoryPublisherId, advisorySource: $advisorySource, advisorySourceUrl: $advisorySourceUrl, advisoryYoutubeId: $advisoryYoutubeId, advisoryFile: $advisoryFile, advisoryUserAddHintNsup: $advisoryUserAddHintNsup, advisoryIsNew: $advisoryIsNew, advisoryActive: $advisoryActive, category: $category)';
}


}

/// @nodoc
abstract mixin class $AdvisoryItemCopyWith<$Res>  {
  factory $AdvisoryItemCopyWith(AdvisoryItem value, $Res Function(AdvisoryItem) _then) = _$AdvisoryItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'advisory_id', fromJson: _stringToInt) int? advisoryId,@JsonKey(name: 'advisory_cat_id') String? advisoryCatId,@JsonKey(name: 'advisory_sound_id') String? advisorySoundId,@JsonKey(name: 'advisory_title') String? advisoryTitle,@JsonKey(name: 'advisory_question') String? advisoryQuestion,@JsonKey(name: 'advisory_question_date') String? advisoryQuestionDate,@JsonKey(name: 'advisory_answer') String? advisoryAnswer,@JsonKey(name: 'advisory_answer_date') String? advisoryAnswerDate,@JsonKey(name: 'advisory_visitor', fromJson: _stringToInt) int? advisoryVisitor,@JsonKey(name: 'advisory_last_advisory') String? advisoryLastAdvisory,@JsonKey(name: 'advisory_priority') String? advisoryPriority,@JsonKey(name: 'advisory_active_vote') String? advisoryActiveVote,@JsonKey(name: 'advisory_active_hint') String? advisoryActiveHint,@JsonKey(name: 'advisory_pic') String? advisoryPic,@JsonKey(name: 'advisory_pic_active') bool? advisoryPicActive,@JsonKey(name: 'advisory_pic_pos') String? advisoryPicPos,@JsonKey(name: 'advisory_sender_name') String? advisorySenderName,@JsonKey(name: 'advisory_sender_email') String? advisorySenderEmail,@JsonKey(name: 'advisory_publisher_id') String? advisoryPublisherId,@JsonKey(name: 'advisory_source') String? advisorySource,@JsonKey(name: 'advisory_source_url') String? advisorySourceUrl,@JsonKey(name: 'advisory_youtube_id') String? advisoryYoutubeId,@JsonKey(name: 'advisory_file') String? advisoryFile,@JsonKey(name: 'advisory_user_add_hint_nsup') String? advisoryUserAddHintNsup,@JsonKey(name: 'advisory_is_new') bool? advisoryIsNew,@JsonKey(name: 'advisory_active') bool? advisoryActive, AdvisoryCategory? category
});


$AdvisoryCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$AdvisoryItemCopyWithImpl<$Res>
    implements $AdvisoryItemCopyWith<$Res> {
  _$AdvisoryItemCopyWithImpl(this._self, this._then);

  final AdvisoryItem _self;
  final $Res Function(AdvisoryItem) _then;

/// Create a copy of AdvisoryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? advisoryId = freezed,Object? advisoryCatId = freezed,Object? advisorySoundId = freezed,Object? advisoryTitle = freezed,Object? advisoryQuestion = freezed,Object? advisoryQuestionDate = freezed,Object? advisoryAnswer = freezed,Object? advisoryAnswerDate = freezed,Object? advisoryVisitor = freezed,Object? advisoryLastAdvisory = freezed,Object? advisoryPriority = freezed,Object? advisoryActiveVote = freezed,Object? advisoryActiveHint = freezed,Object? advisoryPic = freezed,Object? advisoryPicActive = freezed,Object? advisoryPicPos = freezed,Object? advisorySenderName = freezed,Object? advisorySenderEmail = freezed,Object? advisoryPublisherId = freezed,Object? advisorySource = freezed,Object? advisorySourceUrl = freezed,Object? advisoryYoutubeId = freezed,Object? advisoryFile = freezed,Object? advisoryUserAddHintNsup = freezed,Object? advisoryIsNew = freezed,Object? advisoryActive = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
advisoryId: freezed == advisoryId ? _self.advisoryId : advisoryId // ignore: cast_nullable_to_non_nullable
as int?,advisoryCatId: freezed == advisoryCatId ? _self.advisoryCatId : advisoryCatId // ignore: cast_nullable_to_non_nullable
as String?,advisorySoundId: freezed == advisorySoundId ? _self.advisorySoundId : advisorySoundId // ignore: cast_nullable_to_non_nullable
as String?,advisoryTitle: freezed == advisoryTitle ? _self.advisoryTitle : advisoryTitle // ignore: cast_nullable_to_non_nullable
as String?,advisoryQuestion: freezed == advisoryQuestion ? _self.advisoryQuestion : advisoryQuestion // ignore: cast_nullable_to_non_nullable
as String?,advisoryQuestionDate: freezed == advisoryQuestionDate ? _self.advisoryQuestionDate : advisoryQuestionDate // ignore: cast_nullable_to_non_nullable
as String?,advisoryAnswer: freezed == advisoryAnswer ? _self.advisoryAnswer : advisoryAnswer // ignore: cast_nullable_to_non_nullable
as String?,advisoryAnswerDate: freezed == advisoryAnswerDate ? _self.advisoryAnswerDate : advisoryAnswerDate // ignore: cast_nullable_to_non_nullable
as String?,advisoryVisitor: freezed == advisoryVisitor ? _self.advisoryVisitor : advisoryVisitor // ignore: cast_nullable_to_non_nullable
as int?,advisoryLastAdvisory: freezed == advisoryLastAdvisory ? _self.advisoryLastAdvisory : advisoryLastAdvisory // ignore: cast_nullable_to_non_nullable
as String?,advisoryPriority: freezed == advisoryPriority ? _self.advisoryPriority : advisoryPriority // ignore: cast_nullable_to_non_nullable
as String?,advisoryActiveVote: freezed == advisoryActiveVote ? _self.advisoryActiveVote : advisoryActiveVote // ignore: cast_nullable_to_non_nullable
as String?,advisoryActiveHint: freezed == advisoryActiveHint ? _self.advisoryActiveHint : advisoryActiveHint // ignore: cast_nullable_to_non_nullable
as String?,advisoryPic: freezed == advisoryPic ? _self.advisoryPic : advisoryPic // ignore: cast_nullable_to_non_nullable
as String?,advisoryPicActive: freezed == advisoryPicActive ? _self.advisoryPicActive : advisoryPicActive // ignore: cast_nullable_to_non_nullable
as bool?,advisoryPicPos: freezed == advisoryPicPos ? _self.advisoryPicPos : advisoryPicPos // ignore: cast_nullable_to_non_nullable
as String?,advisorySenderName: freezed == advisorySenderName ? _self.advisorySenderName : advisorySenderName // ignore: cast_nullable_to_non_nullable
as String?,advisorySenderEmail: freezed == advisorySenderEmail ? _self.advisorySenderEmail : advisorySenderEmail // ignore: cast_nullable_to_non_nullable
as String?,advisoryPublisherId: freezed == advisoryPublisherId ? _self.advisoryPublisherId : advisoryPublisherId // ignore: cast_nullable_to_non_nullable
as String?,advisorySource: freezed == advisorySource ? _self.advisorySource : advisorySource // ignore: cast_nullable_to_non_nullable
as String?,advisorySourceUrl: freezed == advisorySourceUrl ? _self.advisorySourceUrl : advisorySourceUrl // ignore: cast_nullable_to_non_nullable
as String?,advisoryYoutubeId: freezed == advisoryYoutubeId ? _self.advisoryYoutubeId : advisoryYoutubeId // ignore: cast_nullable_to_non_nullable
as String?,advisoryFile: freezed == advisoryFile ? _self.advisoryFile : advisoryFile // ignore: cast_nullable_to_non_nullable
as String?,advisoryUserAddHintNsup: freezed == advisoryUserAddHintNsup ? _self.advisoryUserAddHintNsup : advisoryUserAddHintNsup // ignore: cast_nullable_to_non_nullable
as String?,advisoryIsNew: freezed == advisoryIsNew ? _self.advisoryIsNew : advisoryIsNew // ignore: cast_nullable_to_non_nullable
as bool?,advisoryActive: freezed == advisoryActive ? _self.advisoryActive : advisoryActive // ignore: cast_nullable_to_non_nullable
as bool?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as AdvisoryCategory?,
  ));
}
/// Create a copy of AdvisoryItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdvisoryCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $AdvisoryCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdvisoryItem].
extension AdvisoryItemPatterns on AdvisoryItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdvisoryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdvisoryItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdvisoryItem value)  $default,){
final _that = this;
switch (_that) {
case _AdvisoryItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdvisoryItem value)?  $default,){
final _that = this;
switch (_that) {
case _AdvisoryItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'advisory_id', fromJson: _stringToInt)  int? advisoryId, @JsonKey(name: 'advisory_cat_id')  String? advisoryCatId, @JsonKey(name: 'advisory_sound_id')  String? advisorySoundId, @JsonKey(name: 'advisory_title')  String? advisoryTitle, @JsonKey(name: 'advisory_question')  String? advisoryQuestion, @JsonKey(name: 'advisory_question_date')  String? advisoryQuestionDate, @JsonKey(name: 'advisory_answer')  String? advisoryAnswer, @JsonKey(name: 'advisory_answer_date')  String? advisoryAnswerDate, @JsonKey(name: 'advisory_visitor', fromJson: _stringToInt)  int? advisoryVisitor, @JsonKey(name: 'advisory_last_advisory')  String? advisoryLastAdvisory, @JsonKey(name: 'advisory_priority')  String? advisoryPriority, @JsonKey(name: 'advisory_active_vote')  String? advisoryActiveVote, @JsonKey(name: 'advisory_active_hint')  String? advisoryActiveHint, @JsonKey(name: 'advisory_pic')  String? advisoryPic, @JsonKey(name: 'advisory_pic_active')  bool? advisoryPicActive, @JsonKey(name: 'advisory_pic_pos')  String? advisoryPicPos, @JsonKey(name: 'advisory_sender_name')  String? advisorySenderName, @JsonKey(name: 'advisory_sender_email')  String? advisorySenderEmail, @JsonKey(name: 'advisory_publisher_id')  String? advisoryPublisherId, @JsonKey(name: 'advisory_source')  String? advisorySource, @JsonKey(name: 'advisory_source_url')  String? advisorySourceUrl, @JsonKey(name: 'advisory_youtube_id')  String? advisoryYoutubeId, @JsonKey(name: 'advisory_file')  String? advisoryFile, @JsonKey(name: 'advisory_user_add_hint_nsup')  String? advisoryUserAddHintNsup, @JsonKey(name: 'advisory_is_new')  bool? advisoryIsNew, @JsonKey(name: 'advisory_active')  bool? advisoryActive,  AdvisoryCategory? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdvisoryItem() when $default != null:
return $default(_that.advisoryId,_that.advisoryCatId,_that.advisorySoundId,_that.advisoryTitle,_that.advisoryQuestion,_that.advisoryQuestionDate,_that.advisoryAnswer,_that.advisoryAnswerDate,_that.advisoryVisitor,_that.advisoryLastAdvisory,_that.advisoryPriority,_that.advisoryActiveVote,_that.advisoryActiveHint,_that.advisoryPic,_that.advisoryPicActive,_that.advisoryPicPos,_that.advisorySenderName,_that.advisorySenderEmail,_that.advisoryPublisherId,_that.advisorySource,_that.advisorySourceUrl,_that.advisoryYoutubeId,_that.advisoryFile,_that.advisoryUserAddHintNsup,_that.advisoryIsNew,_that.advisoryActive,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'advisory_id', fromJson: _stringToInt)  int? advisoryId, @JsonKey(name: 'advisory_cat_id')  String? advisoryCatId, @JsonKey(name: 'advisory_sound_id')  String? advisorySoundId, @JsonKey(name: 'advisory_title')  String? advisoryTitle, @JsonKey(name: 'advisory_question')  String? advisoryQuestion, @JsonKey(name: 'advisory_question_date')  String? advisoryQuestionDate, @JsonKey(name: 'advisory_answer')  String? advisoryAnswer, @JsonKey(name: 'advisory_answer_date')  String? advisoryAnswerDate, @JsonKey(name: 'advisory_visitor', fromJson: _stringToInt)  int? advisoryVisitor, @JsonKey(name: 'advisory_last_advisory')  String? advisoryLastAdvisory, @JsonKey(name: 'advisory_priority')  String? advisoryPriority, @JsonKey(name: 'advisory_active_vote')  String? advisoryActiveVote, @JsonKey(name: 'advisory_active_hint')  String? advisoryActiveHint, @JsonKey(name: 'advisory_pic')  String? advisoryPic, @JsonKey(name: 'advisory_pic_active')  bool? advisoryPicActive, @JsonKey(name: 'advisory_pic_pos')  String? advisoryPicPos, @JsonKey(name: 'advisory_sender_name')  String? advisorySenderName, @JsonKey(name: 'advisory_sender_email')  String? advisorySenderEmail, @JsonKey(name: 'advisory_publisher_id')  String? advisoryPublisherId, @JsonKey(name: 'advisory_source')  String? advisorySource, @JsonKey(name: 'advisory_source_url')  String? advisorySourceUrl, @JsonKey(name: 'advisory_youtube_id')  String? advisoryYoutubeId, @JsonKey(name: 'advisory_file')  String? advisoryFile, @JsonKey(name: 'advisory_user_add_hint_nsup')  String? advisoryUserAddHintNsup, @JsonKey(name: 'advisory_is_new')  bool? advisoryIsNew, @JsonKey(name: 'advisory_active')  bool? advisoryActive,  AdvisoryCategory? category)  $default,) {final _that = this;
switch (_that) {
case _AdvisoryItem():
return $default(_that.advisoryId,_that.advisoryCatId,_that.advisorySoundId,_that.advisoryTitle,_that.advisoryQuestion,_that.advisoryQuestionDate,_that.advisoryAnswer,_that.advisoryAnswerDate,_that.advisoryVisitor,_that.advisoryLastAdvisory,_that.advisoryPriority,_that.advisoryActiveVote,_that.advisoryActiveHint,_that.advisoryPic,_that.advisoryPicActive,_that.advisoryPicPos,_that.advisorySenderName,_that.advisorySenderEmail,_that.advisoryPublisherId,_that.advisorySource,_that.advisorySourceUrl,_that.advisoryYoutubeId,_that.advisoryFile,_that.advisoryUserAddHintNsup,_that.advisoryIsNew,_that.advisoryActive,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'advisory_id', fromJson: _stringToInt)  int? advisoryId, @JsonKey(name: 'advisory_cat_id')  String? advisoryCatId, @JsonKey(name: 'advisory_sound_id')  String? advisorySoundId, @JsonKey(name: 'advisory_title')  String? advisoryTitle, @JsonKey(name: 'advisory_question')  String? advisoryQuestion, @JsonKey(name: 'advisory_question_date')  String? advisoryQuestionDate, @JsonKey(name: 'advisory_answer')  String? advisoryAnswer, @JsonKey(name: 'advisory_answer_date')  String? advisoryAnswerDate, @JsonKey(name: 'advisory_visitor', fromJson: _stringToInt)  int? advisoryVisitor, @JsonKey(name: 'advisory_last_advisory')  String? advisoryLastAdvisory, @JsonKey(name: 'advisory_priority')  String? advisoryPriority, @JsonKey(name: 'advisory_active_vote')  String? advisoryActiveVote, @JsonKey(name: 'advisory_active_hint')  String? advisoryActiveHint, @JsonKey(name: 'advisory_pic')  String? advisoryPic, @JsonKey(name: 'advisory_pic_active')  bool? advisoryPicActive, @JsonKey(name: 'advisory_pic_pos')  String? advisoryPicPos, @JsonKey(name: 'advisory_sender_name')  String? advisorySenderName, @JsonKey(name: 'advisory_sender_email')  String? advisorySenderEmail, @JsonKey(name: 'advisory_publisher_id')  String? advisoryPublisherId, @JsonKey(name: 'advisory_source')  String? advisorySource, @JsonKey(name: 'advisory_source_url')  String? advisorySourceUrl, @JsonKey(name: 'advisory_youtube_id')  String? advisoryYoutubeId, @JsonKey(name: 'advisory_file')  String? advisoryFile, @JsonKey(name: 'advisory_user_add_hint_nsup')  String? advisoryUserAddHintNsup, @JsonKey(name: 'advisory_is_new')  bool? advisoryIsNew, @JsonKey(name: 'advisory_active')  bool? advisoryActive,  AdvisoryCategory? category)?  $default,) {final _that = this;
switch (_that) {
case _AdvisoryItem() when $default != null:
return $default(_that.advisoryId,_that.advisoryCatId,_that.advisorySoundId,_that.advisoryTitle,_that.advisoryQuestion,_that.advisoryQuestionDate,_that.advisoryAnswer,_that.advisoryAnswerDate,_that.advisoryVisitor,_that.advisoryLastAdvisory,_that.advisoryPriority,_that.advisoryActiveVote,_that.advisoryActiveHint,_that.advisoryPic,_that.advisoryPicActive,_that.advisoryPicPos,_that.advisorySenderName,_that.advisorySenderEmail,_that.advisoryPublisherId,_that.advisorySource,_that.advisorySourceUrl,_that.advisoryYoutubeId,_that.advisoryFile,_that.advisoryUserAddHintNsup,_that.advisoryIsNew,_that.advisoryActive,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdvisoryItem implements AdvisoryItem {
  const _AdvisoryItem({@JsonKey(name: 'advisory_id', fromJson: _stringToInt) this.advisoryId, @JsonKey(name: 'advisory_cat_id') this.advisoryCatId, @JsonKey(name: 'advisory_sound_id') this.advisorySoundId, @JsonKey(name: 'advisory_title') this.advisoryTitle, @JsonKey(name: 'advisory_question') this.advisoryQuestion, @JsonKey(name: 'advisory_question_date') this.advisoryQuestionDate, @JsonKey(name: 'advisory_answer') this.advisoryAnswer, @JsonKey(name: 'advisory_answer_date') this.advisoryAnswerDate, @JsonKey(name: 'advisory_visitor', fromJson: _stringToInt) this.advisoryVisitor, @JsonKey(name: 'advisory_last_advisory') this.advisoryLastAdvisory, @JsonKey(name: 'advisory_priority') this.advisoryPriority, @JsonKey(name: 'advisory_active_vote') this.advisoryActiveVote, @JsonKey(name: 'advisory_active_hint') this.advisoryActiveHint, @JsonKey(name: 'advisory_pic') this.advisoryPic, @JsonKey(name: 'advisory_pic_active') this.advisoryPicActive, @JsonKey(name: 'advisory_pic_pos') this.advisoryPicPos, @JsonKey(name: 'advisory_sender_name') this.advisorySenderName, @JsonKey(name: 'advisory_sender_email') this.advisorySenderEmail, @JsonKey(name: 'advisory_publisher_id') this.advisoryPublisherId, @JsonKey(name: 'advisory_source') this.advisorySource, @JsonKey(name: 'advisory_source_url') this.advisorySourceUrl, @JsonKey(name: 'advisory_youtube_id') this.advisoryYoutubeId, @JsonKey(name: 'advisory_file') this.advisoryFile, @JsonKey(name: 'advisory_user_add_hint_nsup') this.advisoryUserAddHintNsup, @JsonKey(name: 'advisory_is_new') this.advisoryIsNew, @JsonKey(name: 'advisory_active') this.advisoryActive, this.category});
  factory _AdvisoryItem.fromJson(Map<String, dynamic> json) => _$AdvisoryItemFromJson(json);

@override@JsonKey(name: 'advisory_id', fromJson: _stringToInt) final  int? advisoryId;
@override@JsonKey(name: 'advisory_cat_id') final  String? advisoryCatId;
@override@JsonKey(name: 'advisory_sound_id') final  String? advisorySoundId;
@override@JsonKey(name: 'advisory_title') final  String? advisoryTitle;
@override@JsonKey(name: 'advisory_question') final  String? advisoryQuestion;
@override@JsonKey(name: 'advisory_question_date') final  String? advisoryQuestionDate;
@override@JsonKey(name: 'advisory_answer') final  String? advisoryAnswer;
@override@JsonKey(name: 'advisory_answer_date') final  String? advisoryAnswerDate;
@override@JsonKey(name: 'advisory_visitor', fromJson: _stringToInt) final  int? advisoryVisitor;
@override@JsonKey(name: 'advisory_last_advisory') final  String? advisoryLastAdvisory;
@override@JsonKey(name: 'advisory_priority') final  String? advisoryPriority;
@override@JsonKey(name: 'advisory_active_vote') final  String? advisoryActiveVote;
@override@JsonKey(name: 'advisory_active_hint') final  String? advisoryActiveHint;
@override@JsonKey(name: 'advisory_pic') final  String? advisoryPic;
@override@JsonKey(name: 'advisory_pic_active') final  bool? advisoryPicActive;
@override@JsonKey(name: 'advisory_pic_pos') final  String? advisoryPicPos;
@override@JsonKey(name: 'advisory_sender_name') final  String? advisorySenderName;
@override@JsonKey(name: 'advisory_sender_email') final  String? advisorySenderEmail;
@override@JsonKey(name: 'advisory_publisher_id') final  String? advisoryPublisherId;
@override@JsonKey(name: 'advisory_source') final  String? advisorySource;
@override@JsonKey(name: 'advisory_source_url') final  String? advisorySourceUrl;
@override@JsonKey(name: 'advisory_youtube_id') final  String? advisoryYoutubeId;
@override@JsonKey(name: 'advisory_file') final  String? advisoryFile;
@override@JsonKey(name: 'advisory_user_add_hint_nsup') final  String? advisoryUserAddHintNsup;
@override@JsonKey(name: 'advisory_is_new') final  bool? advisoryIsNew;
@override@JsonKey(name: 'advisory_active') final  bool? advisoryActive;
@override final  AdvisoryCategory? category;

/// Create a copy of AdvisoryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdvisoryItemCopyWith<_AdvisoryItem> get copyWith => __$AdvisoryItemCopyWithImpl<_AdvisoryItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdvisoryItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdvisoryItem&&(identical(other.advisoryId, advisoryId) || other.advisoryId == advisoryId)&&(identical(other.advisoryCatId, advisoryCatId) || other.advisoryCatId == advisoryCatId)&&(identical(other.advisorySoundId, advisorySoundId) || other.advisorySoundId == advisorySoundId)&&(identical(other.advisoryTitle, advisoryTitle) || other.advisoryTitle == advisoryTitle)&&(identical(other.advisoryQuestion, advisoryQuestion) || other.advisoryQuestion == advisoryQuestion)&&(identical(other.advisoryQuestionDate, advisoryQuestionDate) || other.advisoryQuestionDate == advisoryQuestionDate)&&(identical(other.advisoryAnswer, advisoryAnswer) || other.advisoryAnswer == advisoryAnswer)&&(identical(other.advisoryAnswerDate, advisoryAnswerDate) || other.advisoryAnswerDate == advisoryAnswerDate)&&(identical(other.advisoryVisitor, advisoryVisitor) || other.advisoryVisitor == advisoryVisitor)&&(identical(other.advisoryLastAdvisory, advisoryLastAdvisory) || other.advisoryLastAdvisory == advisoryLastAdvisory)&&(identical(other.advisoryPriority, advisoryPriority) || other.advisoryPriority == advisoryPriority)&&(identical(other.advisoryActiveVote, advisoryActiveVote) || other.advisoryActiveVote == advisoryActiveVote)&&(identical(other.advisoryActiveHint, advisoryActiveHint) || other.advisoryActiveHint == advisoryActiveHint)&&(identical(other.advisoryPic, advisoryPic) || other.advisoryPic == advisoryPic)&&(identical(other.advisoryPicActive, advisoryPicActive) || other.advisoryPicActive == advisoryPicActive)&&(identical(other.advisoryPicPos, advisoryPicPos) || other.advisoryPicPos == advisoryPicPos)&&(identical(other.advisorySenderName, advisorySenderName) || other.advisorySenderName == advisorySenderName)&&(identical(other.advisorySenderEmail, advisorySenderEmail) || other.advisorySenderEmail == advisorySenderEmail)&&(identical(other.advisoryPublisherId, advisoryPublisherId) || other.advisoryPublisherId == advisoryPublisherId)&&(identical(other.advisorySource, advisorySource) || other.advisorySource == advisorySource)&&(identical(other.advisorySourceUrl, advisorySourceUrl) || other.advisorySourceUrl == advisorySourceUrl)&&(identical(other.advisoryYoutubeId, advisoryYoutubeId) || other.advisoryYoutubeId == advisoryYoutubeId)&&(identical(other.advisoryFile, advisoryFile) || other.advisoryFile == advisoryFile)&&(identical(other.advisoryUserAddHintNsup, advisoryUserAddHintNsup) || other.advisoryUserAddHintNsup == advisoryUserAddHintNsup)&&(identical(other.advisoryIsNew, advisoryIsNew) || other.advisoryIsNew == advisoryIsNew)&&(identical(other.advisoryActive, advisoryActive) || other.advisoryActive == advisoryActive)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,advisoryId,advisoryCatId,advisorySoundId,advisoryTitle,advisoryQuestion,advisoryQuestionDate,advisoryAnswer,advisoryAnswerDate,advisoryVisitor,advisoryLastAdvisory,advisoryPriority,advisoryActiveVote,advisoryActiveHint,advisoryPic,advisoryPicActive,advisoryPicPos,advisorySenderName,advisorySenderEmail,advisoryPublisherId,advisorySource,advisorySourceUrl,advisoryYoutubeId,advisoryFile,advisoryUserAddHintNsup,advisoryIsNew,advisoryActive,category]);

@override
String toString() {
  return 'AdvisoryItem(advisoryId: $advisoryId, advisoryCatId: $advisoryCatId, advisorySoundId: $advisorySoundId, advisoryTitle: $advisoryTitle, advisoryQuestion: $advisoryQuestion, advisoryQuestionDate: $advisoryQuestionDate, advisoryAnswer: $advisoryAnswer, advisoryAnswerDate: $advisoryAnswerDate, advisoryVisitor: $advisoryVisitor, advisoryLastAdvisory: $advisoryLastAdvisory, advisoryPriority: $advisoryPriority, advisoryActiveVote: $advisoryActiveVote, advisoryActiveHint: $advisoryActiveHint, advisoryPic: $advisoryPic, advisoryPicActive: $advisoryPicActive, advisoryPicPos: $advisoryPicPos, advisorySenderName: $advisorySenderName, advisorySenderEmail: $advisorySenderEmail, advisoryPublisherId: $advisoryPublisherId, advisorySource: $advisorySource, advisorySourceUrl: $advisorySourceUrl, advisoryYoutubeId: $advisoryYoutubeId, advisoryFile: $advisoryFile, advisoryUserAddHintNsup: $advisoryUserAddHintNsup, advisoryIsNew: $advisoryIsNew, advisoryActive: $advisoryActive, category: $category)';
}


}

/// @nodoc
abstract mixin class _$AdvisoryItemCopyWith<$Res> implements $AdvisoryItemCopyWith<$Res> {
  factory _$AdvisoryItemCopyWith(_AdvisoryItem value, $Res Function(_AdvisoryItem) _then) = __$AdvisoryItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'advisory_id', fromJson: _stringToInt) int? advisoryId,@JsonKey(name: 'advisory_cat_id') String? advisoryCatId,@JsonKey(name: 'advisory_sound_id') String? advisorySoundId,@JsonKey(name: 'advisory_title') String? advisoryTitle,@JsonKey(name: 'advisory_question') String? advisoryQuestion,@JsonKey(name: 'advisory_question_date') String? advisoryQuestionDate,@JsonKey(name: 'advisory_answer') String? advisoryAnswer,@JsonKey(name: 'advisory_answer_date') String? advisoryAnswerDate,@JsonKey(name: 'advisory_visitor', fromJson: _stringToInt) int? advisoryVisitor,@JsonKey(name: 'advisory_last_advisory') String? advisoryLastAdvisory,@JsonKey(name: 'advisory_priority') String? advisoryPriority,@JsonKey(name: 'advisory_active_vote') String? advisoryActiveVote,@JsonKey(name: 'advisory_active_hint') String? advisoryActiveHint,@JsonKey(name: 'advisory_pic') String? advisoryPic,@JsonKey(name: 'advisory_pic_active') bool? advisoryPicActive,@JsonKey(name: 'advisory_pic_pos') String? advisoryPicPos,@JsonKey(name: 'advisory_sender_name') String? advisorySenderName,@JsonKey(name: 'advisory_sender_email') String? advisorySenderEmail,@JsonKey(name: 'advisory_publisher_id') String? advisoryPublisherId,@JsonKey(name: 'advisory_source') String? advisorySource,@JsonKey(name: 'advisory_source_url') String? advisorySourceUrl,@JsonKey(name: 'advisory_youtube_id') String? advisoryYoutubeId,@JsonKey(name: 'advisory_file') String? advisoryFile,@JsonKey(name: 'advisory_user_add_hint_nsup') String? advisoryUserAddHintNsup,@JsonKey(name: 'advisory_is_new') bool? advisoryIsNew,@JsonKey(name: 'advisory_active') bool? advisoryActive, AdvisoryCategory? category
});


@override $AdvisoryCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$AdvisoryItemCopyWithImpl<$Res>
    implements _$AdvisoryItemCopyWith<$Res> {
  __$AdvisoryItemCopyWithImpl(this._self, this._then);

  final _AdvisoryItem _self;
  final $Res Function(_AdvisoryItem) _then;

/// Create a copy of AdvisoryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? advisoryId = freezed,Object? advisoryCatId = freezed,Object? advisorySoundId = freezed,Object? advisoryTitle = freezed,Object? advisoryQuestion = freezed,Object? advisoryQuestionDate = freezed,Object? advisoryAnswer = freezed,Object? advisoryAnswerDate = freezed,Object? advisoryVisitor = freezed,Object? advisoryLastAdvisory = freezed,Object? advisoryPriority = freezed,Object? advisoryActiveVote = freezed,Object? advisoryActiveHint = freezed,Object? advisoryPic = freezed,Object? advisoryPicActive = freezed,Object? advisoryPicPos = freezed,Object? advisorySenderName = freezed,Object? advisorySenderEmail = freezed,Object? advisoryPublisherId = freezed,Object? advisorySource = freezed,Object? advisorySourceUrl = freezed,Object? advisoryYoutubeId = freezed,Object? advisoryFile = freezed,Object? advisoryUserAddHintNsup = freezed,Object? advisoryIsNew = freezed,Object? advisoryActive = freezed,Object? category = freezed,}) {
  return _then(_AdvisoryItem(
advisoryId: freezed == advisoryId ? _self.advisoryId : advisoryId // ignore: cast_nullable_to_non_nullable
as int?,advisoryCatId: freezed == advisoryCatId ? _self.advisoryCatId : advisoryCatId // ignore: cast_nullable_to_non_nullable
as String?,advisorySoundId: freezed == advisorySoundId ? _self.advisorySoundId : advisorySoundId // ignore: cast_nullable_to_non_nullable
as String?,advisoryTitle: freezed == advisoryTitle ? _self.advisoryTitle : advisoryTitle // ignore: cast_nullable_to_non_nullable
as String?,advisoryQuestion: freezed == advisoryQuestion ? _self.advisoryQuestion : advisoryQuestion // ignore: cast_nullable_to_non_nullable
as String?,advisoryQuestionDate: freezed == advisoryQuestionDate ? _self.advisoryQuestionDate : advisoryQuestionDate // ignore: cast_nullable_to_non_nullable
as String?,advisoryAnswer: freezed == advisoryAnswer ? _self.advisoryAnswer : advisoryAnswer // ignore: cast_nullable_to_non_nullable
as String?,advisoryAnswerDate: freezed == advisoryAnswerDate ? _self.advisoryAnswerDate : advisoryAnswerDate // ignore: cast_nullable_to_non_nullable
as String?,advisoryVisitor: freezed == advisoryVisitor ? _self.advisoryVisitor : advisoryVisitor // ignore: cast_nullable_to_non_nullable
as int?,advisoryLastAdvisory: freezed == advisoryLastAdvisory ? _self.advisoryLastAdvisory : advisoryLastAdvisory // ignore: cast_nullable_to_non_nullable
as String?,advisoryPriority: freezed == advisoryPriority ? _self.advisoryPriority : advisoryPriority // ignore: cast_nullable_to_non_nullable
as String?,advisoryActiveVote: freezed == advisoryActiveVote ? _self.advisoryActiveVote : advisoryActiveVote // ignore: cast_nullable_to_non_nullable
as String?,advisoryActiveHint: freezed == advisoryActiveHint ? _self.advisoryActiveHint : advisoryActiveHint // ignore: cast_nullable_to_non_nullable
as String?,advisoryPic: freezed == advisoryPic ? _self.advisoryPic : advisoryPic // ignore: cast_nullable_to_non_nullable
as String?,advisoryPicActive: freezed == advisoryPicActive ? _self.advisoryPicActive : advisoryPicActive // ignore: cast_nullable_to_non_nullable
as bool?,advisoryPicPos: freezed == advisoryPicPos ? _self.advisoryPicPos : advisoryPicPos // ignore: cast_nullable_to_non_nullable
as String?,advisorySenderName: freezed == advisorySenderName ? _self.advisorySenderName : advisorySenderName // ignore: cast_nullable_to_non_nullable
as String?,advisorySenderEmail: freezed == advisorySenderEmail ? _self.advisorySenderEmail : advisorySenderEmail // ignore: cast_nullable_to_non_nullable
as String?,advisoryPublisherId: freezed == advisoryPublisherId ? _self.advisoryPublisherId : advisoryPublisherId // ignore: cast_nullable_to_non_nullable
as String?,advisorySource: freezed == advisorySource ? _self.advisorySource : advisorySource // ignore: cast_nullable_to_non_nullable
as String?,advisorySourceUrl: freezed == advisorySourceUrl ? _self.advisorySourceUrl : advisorySourceUrl // ignore: cast_nullable_to_non_nullable
as String?,advisoryYoutubeId: freezed == advisoryYoutubeId ? _self.advisoryYoutubeId : advisoryYoutubeId // ignore: cast_nullable_to_non_nullable
as String?,advisoryFile: freezed == advisoryFile ? _self.advisoryFile : advisoryFile // ignore: cast_nullable_to_non_nullable
as String?,advisoryUserAddHintNsup: freezed == advisoryUserAddHintNsup ? _self.advisoryUserAddHintNsup : advisoryUserAddHintNsup // ignore: cast_nullable_to_non_nullable
as String?,advisoryIsNew: freezed == advisoryIsNew ? _self.advisoryIsNew : advisoryIsNew // ignore: cast_nullable_to_non_nullable
as bool?,advisoryActive: freezed == advisoryActive ? _self.advisoryActive : advisoryActive // ignore: cast_nullable_to_non_nullable
as bool?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as AdvisoryCategory?,
  ));
}

/// Create a copy of AdvisoryItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdvisoryCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $AdvisoryCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$AdvisoryCategory {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_father_id') String? get catFatherId;@JsonKey(name: 'cat_menus') String? get catMenus;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_sup') String? get catSup;@JsonKey(name: 'cat_date') String? get catDate;@JsonKey(name: 'cat_pic_active') String? get catPicActive;@JsonKey(name: 'cat_lan') String? get catLan;@JsonKey(name: 'cat_pos') String? get catPos;@JsonKey(name: 'cat_active') String? get catActive;@JsonKey(name: 'cat_show_menu') String? get catShowMenu;@JsonKey(name: 'cat_show_main') String? get catShowMain;@JsonKey(name: 'cat_agent') String? get catAgent;
/// Create a copy of AdvisoryCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdvisoryCategoryCopyWith<AdvisoryCategory> get copyWith => _$AdvisoryCategoryCopyWithImpl<AdvisoryCategory>(this as AdvisoryCategory, _$identity);

  /// Serializes this AdvisoryCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdvisoryCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catSup, catSup) || other.catSup == catSup)&&(identical(other.catDate, catDate) || other.catDate == catDate)&&(identical(other.catPicActive, catPicActive) || other.catPicActive == catPicActive)&&(identical(other.catLan, catLan) || other.catLan == catLan)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&(identical(other.catShowMenu, catShowMenu) || other.catShowMenu == catShowMenu)&&(identical(other.catShowMain, catShowMain) || other.catShowMain == catShowMain)&&(identical(other.catAgent, catAgent) || other.catAgent == catAgent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catMenus,catTitle,catNote,catPic,catSup,catDate,catPicActive,catLan,catPos,catActive,catShowMenu,catShowMain,catAgent);

@override
String toString() {
  return 'AdvisoryCategory(catId: $catId, catFatherId: $catFatherId, catMenus: $catMenus, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catSup: $catSup, catDate: $catDate, catPicActive: $catPicActive, catLan: $catLan, catPos: $catPos, catActive: $catActive, catShowMenu: $catShowMenu, catShowMain: $catShowMain, catAgent: $catAgent)';
}


}

/// @nodoc
abstract mixin class $AdvisoryCategoryCopyWith<$Res>  {
  factory $AdvisoryCategoryCopyWith(AdvisoryCategory value, $Res Function(AdvisoryCategory) _then) = _$AdvisoryCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_father_id') String? catFatherId,@JsonKey(name: 'cat_menus') String? catMenus,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_sup') String? catSup,@JsonKey(name: 'cat_date') String? catDate,@JsonKey(name: 'cat_pic_active') String? catPicActive,@JsonKey(name: 'cat_lan') String? catLan,@JsonKey(name: 'cat_pos') String? catPos,@JsonKey(name: 'cat_active') String? catActive,@JsonKey(name: 'cat_show_menu') String? catShowMenu,@JsonKey(name: 'cat_show_main') String? catShowMain,@JsonKey(name: 'cat_agent') String? catAgent
});




}
/// @nodoc
class _$AdvisoryCategoryCopyWithImpl<$Res>
    implements $AdvisoryCategoryCopyWith<$Res> {
  _$AdvisoryCategoryCopyWithImpl(this._self, this._then);

  final AdvisoryCategory _self;
  final $Res Function(AdvisoryCategory) _then;

/// Create a copy of AdvisoryCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catFatherId = freezed,Object? catMenus = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catSup = freezed,Object? catDate = freezed,Object? catPicActive = freezed,Object? catLan = freezed,Object? catPos = freezed,Object? catActive = freezed,Object? catShowMenu = freezed,Object? catShowMain = freezed,Object? catAgent = freezed,}) {
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
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdvisoryCategory].
extension AdvisoryCategoryPatterns on AdvisoryCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdvisoryCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdvisoryCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdvisoryCategory value)  $default,){
final _that = this;
switch (_that) {
case _AdvisoryCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdvisoryCategory value)?  $default,){
final _that = this;
switch (_that) {
case _AdvisoryCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_father_id')  String? catFatherId, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_sup')  String? catSup, @JsonKey(name: 'cat_date')  String? catDate, @JsonKey(name: 'cat_pic_active')  String? catPicActive, @JsonKey(name: 'cat_lan')  String? catLan, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_active')  String? catActive, @JsonKey(name: 'cat_show_menu')  String? catShowMenu, @JsonKey(name: 'cat_show_main')  String? catShowMain, @JsonKey(name: 'cat_agent')  String? catAgent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdvisoryCategory() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catMenus,_that.catTitle,_that.catNote,_that.catPic,_that.catSup,_that.catDate,_that.catPicActive,_that.catLan,_that.catPos,_that.catActive,_that.catShowMenu,_that.catShowMain,_that.catAgent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_father_id')  String? catFatherId, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_sup')  String? catSup, @JsonKey(name: 'cat_date')  String? catDate, @JsonKey(name: 'cat_pic_active')  String? catPicActive, @JsonKey(name: 'cat_lan')  String? catLan, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_active')  String? catActive, @JsonKey(name: 'cat_show_menu')  String? catShowMenu, @JsonKey(name: 'cat_show_main')  String? catShowMain, @JsonKey(name: 'cat_agent')  String? catAgent)  $default,) {final _that = this;
switch (_that) {
case _AdvisoryCategory():
return $default(_that.catId,_that.catFatherId,_that.catMenus,_that.catTitle,_that.catNote,_that.catPic,_that.catSup,_that.catDate,_that.catPicActive,_that.catLan,_that.catPos,_that.catActive,_that.catShowMenu,_that.catShowMain,_that.catAgent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_father_id')  String? catFatherId, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_sup')  String? catSup, @JsonKey(name: 'cat_date')  String? catDate, @JsonKey(name: 'cat_pic_active')  String? catPicActive, @JsonKey(name: 'cat_lan')  String? catLan, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_active')  String? catActive, @JsonKey(name: 'cat_show_menu')  String? catShowMenu, @JsonKey(name: 'cat_show_main')  String? catShowMain, @JsonKey(name: 'cat_agent')  String? catAgent)?  $default,) {final _that = this;
switch (_that) {
case _AdvisoryCategory() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catMenus,_that.catTitle,_that.catNote,_that.catPic,_that.catSup,_that.catDate,_that.catPicActive,_that.catLan,_that.catPos,_that.catActive,_that.catShowMenu,_that.catShowMain,_that.catAgent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdvisoryCategory implements AdvisoryCategory {
  const _AdvisoryCategory({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_father_id') this.catFatherId, @JsonKey(name: 'cat_menus') this.catMenus, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_sup') this.catSup, @JsonKey(name: 'cat_date') this.catDate, @JsonKey(name: 'cat_pic_active') this.catPicActive, @JsonKey(name: 'cat_lan') this.catLan, @JsonKey(name: 'cat_pos') this.catPos, @JsonKey(name: 'cat_active') this.catActive, @JsonKey(name: 'cat_show_menu') this.catShowMenu, @JsonKey(name: 'cat_show_main') this.catShowMain, @JsonKey(name: 'cat_agent') this.catAgent});
  factory _AdvisoryCategory.fromJson(Map<String, dynamic> json) => _$AdvisoryCategoryFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
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

/// Create a copy of AdvisoryCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdvisoryCategoryCopyWith<_AdvisoryCategory> get copyWith => __$AdvisoryCategoryCopyWithImpl<_AdvisoryCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdvisoryCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdvisoryCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catSup, catSup) || other.catSup == catSup)&&(identical(other.catDate, catDate) || other.catDate == catDate)&&(identical(other.catPicActive, catPicActive) || other.catPicActive == catPicActive)&&(identical(other.catLan, catLan) || other.catLan == catLan)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&(identical(other.catShowMenu, catShowMenu) || other.catShowMenu == catShowMenu)&&(identical(other.catShowMain, catShowMain) || other.catShowMain == catShowMain)&&(identical(other.catAgent, catAgent) || other.catAgent == catAgent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catMenus,catTitle,catNote,catPic,catSup,catDate,catPicActive,catLan,catPos,catActive,catShowMenu,catShowMain,catAgent);

@override
String toString() {
  return 'AdvisoryCategory(catId: $catId, catFatherId: $catFatherId, catMenus: $catMenus, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catSup: $catSup, catDate: $catDate, catPicActive: $catPicActive, catLan: $catLan, catPos: $catPos, catActive: $catActive, catShowMenu: $catShowMenu, catShowMain: $catShowMain, catAgent: $catAgent)';
}


}

/// @nodoc
abstract mixin class _$AdvisoryCategoryCopyWith<$Res> implements $AdvisoryCategoryCopyWith<$Res> {
  factory _$AdvisoryCategoryCopyWith(_AdvisoryCategory value, $Res Function(_AdvisoryCategory) _then) = __$AdvisoryCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_father_id') String? catFatherId,@JsonKey(name: 'cat_menus') String? catMenus,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_sup') String? catSup,@JsonKey(name: 'cat_date') String? catDate,@JsonKey(name: 'cat_pic_active') String? catPicActive,@JsonKey(name: 'cat_lan') String? catLan,@JsonKey(name: 'cat_pos') String? catPos,@JsonKey(name: 'cat_active') String? catActive,@JsonKey(name: 'cat_show_menu') String? catShowMenu,@JsonKey(name: 'cat_show_main') String? catShowMain,@JsonKey(name: 'cat_agent') String? catAgent
});




}
/// @nodoc
class __$AdvisoryCategoryCopyWithImpl<$Res>
    implements _$AdvisoryCategoryCopyWith<$Res> {
  __$AdvisoryCategoryCopyWithImpl(this._self, this._then);

  final _AdvisoryCategory _self;
  final $Res Function(_AdvisoryCategory) _then;

/// Create a copy of AdvisoryCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catFatherId = freezed,Object? catMenus = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catSup = freezed,Object? catDate = freezed,Object? catPicActive = freezed,Object? catLan = freezed,Object? catPos = freezed,Object? catActive = freezed,Object? catShowMenu = freezed,Object? catShowMain = freezed,Object? catAgent = freezed,}) {
  return _then(_AdvisoryCategory(
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
as String?,
  ));
}


}


/// @nodoc
mixin _$AdvisorySubmissionRequest {

@JsonKey(name: 'advisory_question') String get advisoryQuestion;@JsonKey(name: 'advisory_sender_name') String get advisorySenderName;@JsonKey(name: 'advisory_sender_email') String get advisorySenderEmail;
/// Create a copy of AdvisorySubmissionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdvisorySubmissionRequestCopyWith<AdvisorySubmissionRequest> get copyWith => _$AdvisorySubmissionRequestCopyWithImpl<AdvisorySubmissionRequest>(this as AdvisorySubmissionRequest, _$identity);

  /// Serializes this AdvisorySubmissionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdvisorySubmissionRequest&&(identical(other.advisoryQuestion, advisoryQuestion) || other.advisoryQuestion == advisoryQuestion)&&(identical(other.advisorySenderName, advisorySenderName) || other.advisorySenderName == advisorySenderName)&&(identical(other.advisorySenderEmail, advisorySenderEmail) || other.advisorySenderEmail == advisorySenderEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,advisoryQuestion,advisorySenderName,advisorySenderEmail);

@override
String toString() {
  return 'AdvisorySubmissionRequest(advisoryQuestion: $advisoryQuestion, advisorySenderName: $advisorySenderName, advisorySenderEmail: $advisorySenderEmail)';
}


}

/// @nodoc
abstract mixin class $AdvisorySubmissionRequestCopyWith<$Res>  {
  factory $AdvisorySubmissionRequestCopyWith(AdvisorySubmissionRequest value, $Res Function(AdvisorySubmissionRequest) _then) = _$AdvisorySubmissionRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'advisory_question') String advisoryQuestion,@JsonKey(name: 'advisory_sender_name') String advisorySenderName,@JsonKey(name: 'advisory_sender_email') String advisorySenderEmail
});




}
/// @nodoc
class _$AdvisorySubmissionRequestCopyWithImpl<$Res>
    implements $AdvisorySubmissionRequestCopyWith<$Res> {
  _$AdvisorySubmissionRequestCopyWithImpl(this._self, this._then);

  final AdvisorySubmissionRequest _self;
  final $Res Function(AdvisorySubmissionRequest) _then;

/// Create a copy of AdvisorySubmissionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? advisoryQuestion = null,Object? advisorySenderName = null,Object? advisorySenderEmail = null,}) {
  return _then(_self.copyWith(
advisoryQuestion: null == advisoryQuestion ? _self.advisoryQuestion : advisoryQuestion // ignore: cast_nullable_to_non_nullable
as String,advisorySenderName: null == advisorySenderName ? _self.advisorySenderName : advisorySenderName // ignore: cast_nullable_to_non_nullable
as String,advisorySenderEmail: null == advisorySenderEmail ? _self.advisorySenderEmail : advisorySenderEmail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdvisorySubmissionRequest].
extension AdvisorySubmissionRequestPatterns on AdvisorySubmissionRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdvisorySubmissionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdvisorySubmissionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdvisorySubmissionRequest value)  $default,){
final _that = this;
switch (_that) {
case _AdvisorySubmissionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdvisorySubmissionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AdvisorySubmissionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'advisory_question')  String advisoryQuestion, @JsonKey(name: 'advisory_sender_name')  String advisorySenderName, @JsonKey(name: 'advisory_sender_email')  String advisorySenderEmail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdvisorySubmissionRequest() when $default != null:
return $default(_that.advisoryQuestion,_that.advisorySenderName,_that.advisorySenderEmail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'advisory_question')  String advisoryQuestion, @JsonKey(name: 'advisory_sender_name')  String advisorySenderName, @JsonKey(name: 'advisory_sender_email')  String advisorySenderEmail)  $default,) {final _that = this;
switch (_that) {
case _AdvisorySubmissionRequest():
return $default(_that.advisoryQuestion,_that.advisorySenderName,_that.advisorySenderEmail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'advisory_question')  String advisoryQuestion, @JsonKey(name: 'advisory_sender_name')  String advisorySenderName, @JsonKey(name: 'advisory_sender_email')  String advisorySenderEmail)?  $default,) {final _that = this;
switch (_that) {
case _AdvisorySubmissionRequest() when $default != null:
return $default(_that.advisoryQuestion,_that.advisorySenderName,_that.advisorySenderEmail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdvisorySubmissionRequest implements AdvisorySubmissionRequest {
  const _AdvisorySubmissionRequest({@JsonKey(name: 'advisory_question') required this.advisoryQuestion, @JsonKey(name: 'advisory_sender_name') required this.advisorySenderName, @JsonKey(name: 'advisory_sender_email') required this.advisorySenderEmail});
  factory _AdvisorySubmissionRequest.fromJson(Map<String, dynamic> json) => _$AdvisorySubmissionRequestFromJson(json);

@override@JsonKey(name: 'advisory_question') final  String advisoryQuestion;
@override@JsonKey(name: 'advisory_sender_name') final  String advisorySenderName;
@override@JsonKey(name: 'advisory_sender_email') final  String advisorySenderEmail;

/// Create a copy of AdvisorySubmissionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdvisorySubmissionRequestCopyWith<_AdvisorySubmissionRequest> get copyWith => __$AdvisorySubmissionRequestCopyWithImpl<_AdvisorySubmissionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdvisorySubmissionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdvisorySubmissionRequest&&(identical(other.advisoryQuestion, advisoryQuestion) || other.advisoryQuestion == advisoryQuestion)&&(identical(other.advisorySenderName, advisorySenderName) || other.advisorySenderName == advisorySenderName)&&(identical(other.advisorySenderEmail, advisorySenderEmail) || other.advisorySenderEmail == advisorySenderEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,advisoryQuestion,advisorySenderName,advisorySenderEmail);

@override
String toString() {
  return 'AdvisorySubmissionRequest(advisoryQuestion: $advisoryQuestion, advisorySenderName: $advisorySenderName, advisorySenderEmail: $advisorySenderEmail)';
}


}

/// @nodoc
abstract mixin class _$AdvisorySubmissionRequestCopyWith<$Res> implements $AdvisorySubmissionRequestCopyWith<$Res> {
  factory _$AdvisorySubmissionRequestCopyWith(_AdvisorySubmissionRequest value, $Res Function(_AdvisorySubmissionRequest) _then) = __$AdvisorySubmissionRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'advisory_question') String advisoryQuestion,@JsonKey(name: 'advisory_sender_name') String advisorySenderName,@JsonKey(name: 'advisory_sender_email') String advisorySenderEmail
});




}
/// @nodoc
class __$AdvisorySubmissionRequestCopyWithImpl<$Res>
    implements _$AdvisorySubmissionRequestCopyWith<$Res> {
  __$AdvisorySubmissionRequestCopyWithImpl(this._self, this._then);

  final _AdvisorySubmissionRequest _self;
  final $Res Function(_AdvisorySubmissionRequest) _then;

/// Create a copy of AdvisorySubmissionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? advisoryQuestion = null,Object? advisorySenderName = null,Object? advisorySenderEmail = null,}) {
  return _then(_AdvisorySubmissionRequest(
advisoryQuestion: null == advisoryQuestion ? _self.advisoryQuestion : advisoryQuestion // ignore: cast_nullable_to_non_nullable
as String,advisorySenderName: null == advisorySenderName ? _self.advisorySenderName : advisorySenderName // ignore: cast_nullable_to_non_nullable
as String,advisorySenderEmail: null == advisorySenderEmail ? _self.advisorySenderEmail : advisorySenderEmail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AdvisorySubmissionResponse {

 String? get status; String? get message; AdvisorySubmissionData? get data;
/// Create a copy of AdvisorySubmissionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdvisorySubmissionResponseCopyWith<AdvisorySubmissionResponse> get copyWith => _$AdvisorySubmissionResponseCopyWithImpl<AdvisorySubmissionResponse>(this as AdvisorySubmissionResponse, _$identity);

  /// Serializes this AdvisorySubmissionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdvisorySubmissionResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'AdvisorySubmissionResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $AdvisorySubmissionResponseCopyWith<$Res>  {
  factory $AdvisorySubmissionResponseCopyWith(AdvisorySubmissionResponse value, $Res Function(AdvisorySubmissionResponse) _then) = _$AdvisorySubmissionResponseCopyWithImpl;
@useResult
$Res call({
 String? status, String? message, AdvisorySubmissionData? data
});


$AdvisorySubmissionDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$AdvisorySubmissionResponseCopyWithImpl<$Res>
    implements $AdvisorySubmissionResponseCopyWith<$Res> {
  _$AdvisorySubmissionResponseCopyWithImpl(this._self, this._then);

  final AdvisorySubmissionResponse _self;
  final $Res Function(AdvisorySubmissionResponse) _then;

/// Create a copy of AdvisorySubmissionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AdvisorySubmissionData?,
  ));
}
/// Create a copy of AdvisorySubmissionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdvisorySubmissionDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AdvisorySubmissionDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdvisorySubmissionResponse].
extension AdvisorySubmissionResponsePatterns on AdvisorySubmissionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdvisorySubmissionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdvisorySubmissionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdvisorySubmissionResponse value)  $default,){
final _that = this;
switch (_that) {
case _AdvisorySubmissionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdvisorySubmissionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AdvisorySubmissionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  String? message,  AdvisorySubmissionData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdvisorySubmissionResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  String? message,  AdvisorySubmissionData? data)  $default,) {final _that = this;
switch (_that) {
case _AdvisorySubmissionResponse():
return $default(_that.status,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  String? message,  AdvisorySubmissionData? data)?  $default,) {final _that = this;
switch (_that) {
case _AdvisorySubmissionResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdvisorySubmissionResponse implements AdvisorySubmissionResponse {
  const _AdvisorySubmissionResponse({this.status, this.message, this.data});
  factory _AdvisorySubmissionResponse.fromJson(Map<String, dynamic> json) => _$AdvisorySubmissionResponseFromJson(json);

@override final  String? status;
@override final  String? message;
@override final  AdvisorySubmissionData? data;

/// Create a copy of AdvisorySubmissionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdvisorySubmissionResponseCopyWith<_AdvisorySubmissionResponse> get copyWith => __$AdvisorySubmissionResponseCopyWithImpl<_AdvisorySubmissionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdvisorySubmissionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdvisorySubmissionResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'AdvisorySubmissionResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AdvisorySubmissionResponseCopyWith<$Res> implements $AdvisorySubmissionResponseCopyWith<$Res> {
  factory _$AdvisorySubmissionResponseCopyWith(_AdvisorySubmissionResponse value, $Res Function(_AdvisorySubmissionResponse) _then) = __$AdvisorySubmissionResponseCopyWithImpl;
@override @useResult
$Res call({
 String? status, String? message, AdvisorySubmissionData? data
});


@override $AdvisorySubmissionDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$AdvisorySubmissionResponseCopyWithImpl<$Res>
    implements _$AdvisorySubmissionResponseCopyWith<$Res> {
  __$AdvisorySubmissionResponseCopyWithImpl(this._self, this._then);

  final _AdvisorySubmissionResponse _self;
  final $Res Function(_AdvisorySubmissionResponse) _then;

/// Create a copy of AdvisorySubmissionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_AdvisorySubmissionResponse(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AdvisorySubmissionData?,
  ));
}

/// Create a copy of AdvisorySubmissionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdvisorySubmissionDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AdvisorySubmissionDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AdvisorySubmissionData {

 int? get id; String? get question;@JsonKey(name: 'sender_name') String? get senderName;@JsonKey(name: 'sender_email') String? get senderEmail;@JsonKey(name: 'submission_date') String? get submissionDate; String? get status;
/// Create a copy of AdvisorySubmissionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdvisorySubmissionDataCopyWith<AdvisorySubmissionData> get copyWith => _$AdvisorySubmissionDataCopyWithImpl<AdvisorySubmissionData>(this as AdvisorySubmissionData, _$identity);

  /// Serializes this AdvisorySubmissionData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdvisorySubmissionData&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.senderEmail, senderEmail) || other.senderEmail == senderEmail)&&(identical(other.submissionDate, submissionDate) || other.submissionDate == submissionDate)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,senderName,senderEmail,submissionDate,status);

@override
String toString() {
  return 'AdvisorySubmissionData(id: $id, question: $question, senderName: $senderName, senderEmail: $senderEmail, submissionDate: $submissionDate, status: $status)';
}


}

/// @nodoc
abstract mixin class $AdvisorySubmissionDataCopyWith<$Res>  {
  factory $AdvisorySubmissionDataCopyWith(AdvisorySubmissionData value, $Res Function(AdvisorySubmissionData) _then) = _$AdvisorySubmissionDataCopyWithImpl;
@useResult
$Res call({
 int? id, String? question,@JsonKey(name: 'sender_name') String? senderName,@JsonKey(name: 'sender_email') String? senderEmail,@JsonKey(name: 'submission_date') String? submissionDate, String? status
});




}
/// @nodoc
class _$AdvisorySubmissionDataCopyWithImpl<$Res>
    implements $AdvisorySubmissionDataCopyWith<$Res> {
  _$AdvisorySubmissionDataCopyWithImpl(this._self, this._then);

  final AdvisorySubmissionData _self;
  final $Res Function(AdvisorySubmissionData) _then;

/// Create a copy of AdvisorySubmissionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? question = freezed,Object? senderName = freezed,Object? senderEmail = freezed,Object? submissionDate = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,senderName: freezed == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String?,senderEmail: freezed == senderEmail ? _self.senderEmail : senderEmail // ignore: cast_nullable_to_non_nullable
as String?,submissionDate: freezed == submissionDate ? _self.submissionDate : submissionDate // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdvisorySubmissionData].
extension AdvisorySubmissionDataPatterns on AdvisorySubmissionData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdvisorySubmissionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdvisorySubmissionData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdvisorySubmissionData value)  $default,){
final _that = this;
switch (_that) {
case _AdvisorySubmissionData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdvisorySubmissionData value)?  $default,){
final _that = this;
switch (_that) {
case _AdvisorySubmissionData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? question, @JsonKey(name: 'sender_name')  String? senderName, @JsonKey(name: 'sender_email')  String? senderEmail, @JsonKey(name: 'submission_date')  String? submissionDate,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdvisorySubmissionData() when $default != null:
return $default(_that.id,_that.question,_that.senderName,_that.senderEmail,_that.submissionDate,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? question, @JsonKey(name: 'sender_name')  String? senderName, @JsonKey(name: 'sender_email')  String? senderEmail, @JsonKey(name: 'submission_date')  String? submissionDate,  String? status)  $default,) {final _that = this;
switch (_that) {
case _AdvisorySubmissionData():
return $default(_that.id,_that.question,_that.senderName,_that.senderEmail,_that.submissionDate,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? question, @JsonKey(name: 'sender_name')  String? senderName, @JsonKey(name: 'sender_email')  String? senderEmail, @JsonKey(name: 'submission_date')  String? submissionDate,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _AdvisorySubmissionData() when $default != null:
return $default(_that.id,_that.question,_that.senderName,_that.senderEmail,_that.submissionDate,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdvisorySubmissionData implements AdvisorySubmissionData {
  const _AdvisorySubmissionData({this.id, this.question, @JsonKey(name: 'sender_name') this.senderName, @JsonKey(name: 'sender_email') this.senderEmail, @JsonKey(name: 'submission_date') this.submissionDate, this.status});
  factory _AdvisorySubmissionData.fromJson(Map<String, dynamic> json) => _$AdvisorySubmissionDataFromJson(json);

@override final  int? id;
@override final  String? question;
@override@JsonKey(name: 'sender_name') final  String? senderName;
@override@JsonKey(name: 'sender_email') final  String? senderEmail;
@override@JsonKey(name: 'submission_date') final  String? submissionDate;
@override final  String? status;

/// Create a copy of AdvisorySubmissionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdvisorySubmissionDataCopyWith<_AdvisorySubmissionData> get copyWith => __$AdvisorySubmissionDataCopyWithImpl<_AdvisorySubmissionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdvisorySubmissionDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdvisorySubmissionData&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.senderEmail, senderEmail) || other.senderEmail == senderEmail)&&(identical(other.submissionDate, submissionDate) || other.submissionDate == submissionDate)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,senderName,senderEmail,submissionDate,status);

@override
String toString() {
  return 'AdvisorySubmissionData(id: $id, question: $question, senderName: $senderName, senderEmail: $senderEmail, submissionDate: $submissionDate, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AdvisorySubmissionDataCopyWith<$Res> implements $AdvisorySubmissionDataCopyWith<$Res> {
  factory _$AdvisorySubmissionDataCopyWith(_AdvisorySubmissionData value, $Res Function(_AdvisorySubmissionData) _then) = __$AdvisorySubmissionDataCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? question,@JsonKey(name: 'sender_name') String? senderName,@JsonKey(name: 'sender_email') String? senderEmail,@JsonKey(name: 'submission_date') String? submissionDate, String? status
});




}
/// @nodoc
class __$AdvisorySubmissionDataCopyWithImpl<$Res>
    implements _$AdvisorySubmissionDataCopyWith<$Res> {
  __$AdvisorySubmissionDataCopyWithImpl(this._self, this._then);

  final _AdvisorySubmissionData _self;
  final $Res Function(_AdvisorySubmissionData) _then;

/// Create a copy of AdvisorySubmissionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? question = freezed,Object? senderName = freezed,Object? senderEmail = freezed,Object? submissionDate = freezed,Object? status = freezed,}) {
  return _then(_AdvisorySubmissionData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,senderName: freezed == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String?,senderEmail: freezed == senderEmail ? _self.senderEmail : senderEmail // ignore: cast_nullable_to_non_nullable
as String?,submissionDate: freezed == submissionDate ? _self.submissionDate : submissionDate // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
