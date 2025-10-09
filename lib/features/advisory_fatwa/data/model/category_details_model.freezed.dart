// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryDetailsModel {

 String? get status; CategoryDetailsData? get data; Pagination? get pagination; CategoryDetailsMeta? get meta;
/// Create a copy of CategoryDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDetailsModelCopyWith<CategoryDetailsModel> get copyWith => _$CategoryDetailsModelCopyWithImpl<CategoryDetailsModel>(this as CategoryDetailsModel, _$identity);

  /// Serializes this CategoryDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDetailsModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,pagination,meta);

@override
String toString() {
  return 'CategoryDetailsModel(status: $status, data: $data, pagination: $pagination, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $CategoryDetailsModelCopyWith<$Res>  {
  factory $CategoryDetailsModelCopyWith(CategoryDetailsModel value, $Res Function(CategoryDetailsModel) _then) = _$CategoryDetailsModelCopyWithImpl;
@useResult
$Res call({
 String? status, CategoryDetailsData? data, Pagination? pagination, CategoryDetailsMeta? meta
});


$CategoryDetailsDataCopyWith<$Res>? get data;$PaginationCopyWith<$Res>? get pagination;$CategoryDetailsMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$CategoryDetailsModelCopyWithImpl<$Res>
    implements $CategoryDetailsModelCopyWith<$Res> {
  _$CategoryDetailsModelCopyWithImpl(this._self, this._then);

  final CategoryDetailsModel _self;
  final $Res Function(CategoryDetailsModel) _then;

/// Create a copy of CategoryDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,Object? pagination = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CategoryDetailsData?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CategoryDetailsMeta?,
  ));
}
/// Create a copy of CategoryDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryDetailsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CategoryDetailsDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of CategoryDetailsModel
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
}/// Create a copy of CategoryDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryDetailsMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $CategoryDetailsMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryDetailsModel].
extension CategoryDetailsModelPatterns on CategoryDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  CategoryDetailsData? data,  Pagination? pagination,  CategoryDetailsMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDetailsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  CategoryDetailsData? data,  Pagination? pagination,  CategoryDetailsMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  CategoryDetailsData? data,  Pagination? pagination,  CategoryDetailsMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailsModel() when $default != null:
return $default(_that.status,_that.data,_that.pagination,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryDetailsModel implements CategoryDetailsModel {
  const _CategoryDetailsModel({this.status, this.data, this.pagination, this.meta});
  factory _CategoryDetailsModel.fromJson(Map<String, dynamic> json) => _$CategoryDetailsModelFromJson(json);

@override final  String? status;
@override final  CategoryDetailsData? data;
@override final  Pagination? pagination;
@override final  CategoryDetailsMeta? meta;

/// Create a copy of CategoryDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDetailsModelCopyWith<_CategoryDetailsModel> get copyWith => __$CategoryDetailsModelCopyWithImpl<_CategoryDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDetailsModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,pagination,meta);

@override
String toString() {
  return 'CategoryDetailsModel(status: $status, data: $data, pagination: $pagination, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$CategoryDetailsModelCopyWith<$Res> implements $CategoryDetailsModelCopyWith<$Res> {
  factory _$CategoryDetailsModelCopyWith(_CategoryDetailsModel value, $Res Function(_CategoryDetailsModel) _then) = __$CategoryDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, CategoryDetailsData? data, Pagination? pagination, CategoryDetailsMeta? meta
});


@override $CategoryDetailsDataCopyWith<$Res>? get data;@override $PaginationCopyWith<$Res>? get pagination;@override $CategoryDetailsMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$CategoryDetailsModelCopyWithImpl<$Res>
    implements _$CategoryDetailsModelCopyWith<$Res> {
  __$CategoryDetailsModelCopyWithImpl(this._self, this._then);

  final _CategoryDetailsModel _self;
  final $Res Function(_CategoryDetailsModel) _then;

/// Create a copy of CategoryDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,Object? pagination = freezed,Object? meta = freezed,}) {
  return _then(_CategoryDetailsModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CategoryDetailsData?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CategoryDetailsMeta?,
  ));
}

/// Create a copy of CategoryDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryDetailsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CategoryDetailsDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of CategoryDetailsModel
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
}/// Create a copy of CategoryDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryDetailsMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $CategoryDetailsMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$CategoryDetailsData {

@JsonKey(name: 'parent_category') ParentCategory? get parentCategory;@JsonKey(name: 'children_categories') List<ChildCategory>? get childrenCategories;
/// Create a copy of CategoryDetailsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDetailsDataCopyWith<CategoryDetailsData> get copyWith => _$CategoryDetailsDataCopyWithImpl<CategoryDetailsData>(this as CategoryDetailsData, _$identity);

  /// Serializes this CategoryDetailsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDetailsData&&(identical(other.parentCategory, parentCategory) || other.parentCategory == parentCategory)&&const DeepCollectionEquality().equals(other.childrenCategories, childrenCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parentCategory,const DeepCollectionEquality().hash(childrenCategories));

@override
String toString() {
  return 'CategoryDetailsData(parentCategory: $parentCategory, childrenCategories: $childrenCategories)';
}


}

/// @nodoc
abstract mixin class $CategoryDetailsDataCopyWith<$Res>  {
  factory $CategoryDetailsDataCopyWith(CategoryDetailsData value, $Res Function(CategoryDetailsData) _then) = _$CategoryDetailsDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parent_category') ParentCategory? parentCategory,@JsonKey(name: 'children_categories') List<ChildCategory>? childrenCategories
});


$ParentCategoryCopyWith<$Res>? get parentCategory;

}
/// @nodoc
class _$CategoryDetailsDataCopyWithImpl<$Res>
    implements $CategoryDetailsDataCopyWith<$Res> {
  _$CategoryDetailsDataCopyWithImpl(this._self, this._then);

  final CategoryDetailsData _self;
  final $Res Function(CategoryDetailsData) _then;

/// Create a copy of CategoryDetailsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parentCategory = freezed,Object? childrenCategories = freezed,}) {
  return _then(_self.copyWith(
parentCategory: freezed == parentCategory ? _self.parentCategory : parentCategory // ignore: cast_nullable_to_non_nullable
as ParentCategory?,childrenCategories: freezed == childrenCategories ? _self.childrenCategories : childrenCategories // ignore: cast_nullable_to_non_nullable
as List<ChildCategory>?,
  ));
}
/// Create a copy of CategoryDetailsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParentCategoryCopyWith<$Res>? get parentCategory {
    if (_self.parentCategory == null) {
    return null;
  }

  return $ParentCategoryCopyWith<$Res>(_self.parentCategory!, (value) {
    return _then(_self.copyWith(parentCategory: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryDetailsData].
extension CategoryDetailsDataPatterns on CategoryDetailsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDetailsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDetailsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDetailsData value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDetailsData value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_category')  ParentCategory? parentCategory, @JsonKey(name: 'children_categories')  List<ChildCategory>? childrenCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDetailsData() when $default != null:
return $default(_that.parentCategory,_that.childrenCategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_category')  ParentCategory? parentCategory, @JsonKey(name: 'children_categories')  List<ChildCategory>? childrenCategories)  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailsData():
return $default(_that.parentCategory,_that.childrenCategories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parent_category')  ParentCategory? parentCategory, @JsonKey(name: 'children_categories')  List<ChildCategory>? childrenCategories)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailsData() when $default != null:
return $default(_that.parentCategory,_that.childrenCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryDetailsData implements CategoryDetailsData {
  const _CategoryDetailsData({@JsonKey(name: 'parent_category') this.parentCategory, @JsonKey(name: 'children_categories') final  List<ChildCategory>? childrenCategories}): _childrenCategories = childrenCategories;
  factory _CategoryDetailsData.fromJson(Map<String, dynamic> json) => _$CategoryDetailsDataFromJson(json);

@override@JsonKey(name: 'parent_category') final  ParentCategory? parentCategory;
 final  List<ChildCategory>? _childrenCategories;
@override@JsonKey(name: 'children_categories') List<ChildCategory>? get childrenCategories {
  final value = _childrenCategories;
  if (value == null) return null;
  if (_childrenCategories is EqualUnmodifiableListView) return _childrenCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CategoryDetailsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDetailsDataCopyWith<_CategoryDetailsData> get copyWith => __$CategoryDetailsDataCopyWithImpl<_CategoryDetailsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryDetailsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDetailsData&&(identical(other.parentCategory, parentCategory) || other.parentCategory == parentCategory)&&const DeepCollectionEquality().equals(other._childrenCategories, _childrenCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parentCategory,const DeepCollectionEquality().hash(_childrenCategories));

@override
String toString() {
  return 'CategoryDetailsData(parentCategory: $parentCategory, childrenCategories: $childrenCategories)';
}


}

/// @nodoc
abstract mixin class _$CategoryDetailsDataCopyWith<$Res> implements $CategoryDetailsDataCopyWith<$Res> {
  factory _$CategoryDetailsDataCopyWith(_CategoryDetailsData value, $Res Function(_CategoryDetailsData) _then) = __$CategoryDetailsDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parent_category') ParentCategory? parentCategory,@JsonKey(name: 'children_categories') List<ChildCategory>? childrenCategories
});


@override $ParentCategoryCopyWith<$Res>? get parentCategory;

}
/// @nodoc
class __$CategoryDetailsDataCopyWithImpl<$Res>
    implements _$CategoryDetailsDataCopyWith<$Res> {
  __$CategoryDetailsDataCopyWithImpl(this._self, this._then);

  final _CategoryDetailsData _self;
  final $Res Function(_CategoryDetailsData) _then;

/// Create a copy of CategoryDetailsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parentCategory = freezed,Object? childrenCategories = freezed,}) {
  return _then(_CategoryDetailsData(
parentCategory: freezed == parentCategory ? _self.parentCategory : parentCategory // ignore: cast_nullable_to_non_nullable
as ParentCategory?,childrenCategories: freezed == childrenCategories ? _self._childrenCategories : childrenCategories // ignore: cast_nullable_to_non_nullable
as List<ChildCategory>?,
  ));
}

/// Create a copy of CategoryDetailsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParentCategoryCopyWith<$Res>? get parentCategory {
    if (_self.parentCategory == null) {
    return null;
  }

  return $ParentCategoryCopyWith<$Res>(_self.parentCategory!, (value) {
    return _then(_self.copyWith(parentCategory: value));
  });
}
}


/// @nodoc
mixin _$ChildCategory {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_father_id', fromJson: _intToString) String? get catFatherId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos', fromJson: _intToString) String? get catPos;@JsonKey(name: 'cat_active', fromJson: _intToString) String? get catActive; List<AdvisoryItem>? get fatwas;@JsonKey(name: 'fatwas_count') int? get fatwasCount;@JsonKey(name: 'debug_info') ChildCategoryDebugInfo? get debugInfo;
/// Create a copy of ChildCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChildCategoryCopyWith<ChildCategory> get copyWith => _$ChildCategoryCopyWithImpl<ChildCategory>(this as ChildCategory, _$identity);

  /// Serializes this ChildCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChildCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&const DeepCollectionEquality().equals(other.fatwas, fatwas)&&(identical(other.fatwasCount, fatwasCount) || other.fatwasCount == fatwasCount)&&(identical(other.debugInfo, debugInfo) || other.debugInfo == debugInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catTitle,catNote,catPic,catPos,catActive,const DeepCollectionEquality().hash(fatwas),fatwasCount,debugInfo);

@override
String toString() {
  return 'ChildCategory(catId: $catId, catFatherId: $catFatherId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catActive: $catActive, fatwas: $fatwas, fatwasCount: $fatwasCount, debugInfo: $debugInfo)';
}


}

/// @nodoc
abstract mixin class $ChildCategoryCopyWith<$Res>  {
  factory $ChildCategoryCopyWith(ChildCategory value, $Res Function(ChildCategory) _then) = _$ChildCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_father_id', fromJson: _intToString) String? catFatherId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _intToString) String? catPos,@JsonKey(name: 'cat_active', fromJson: _intToString) String? catActive, List<AdvisoryItem>? fatwas,@JsonKey(name: 'fatwas_count') int? fatwasCount,@JsonKey(name: 'debug_info') ChildCategoryDebugInfo? debugInfo
});


$ChildCategoryDebugInfoCopyWith<$Res>? get debugInfo;

}
/// @nodoc
class _$ChildCategoryCopyWithImpl<$Res>
    implements $ChildCategoryCopyWith<$Res> {
  _$ChildCategoryCopyWithImpl(this._self, this._then);

  final ChildCategory _self;
  final $Res Function(ChildCategory) _then;

/// Create a copy of ChildCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catFatherId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? catActive = freezed,Object? fatwas = freezed,Object? fatwasCount = freezed,Object? debugInfo = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catFatherId: freezed == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as String?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,catActive: freezed == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as String?,fatwas: freezed == fatwas ? _self.fatwas : fatwas // ignore: cast_nullable_to_non_nullable
as List<AdvisoryItem>?,fatwasCount: freezed == fatwasCount ? _self.fatwasCount : fatwasCount // ignore: cast_nullable_to_non_nullable
as int?,debugInfo: freezed == debugInfo ? _self.debugInfo : debugInfo // ignore: cast_nullable_to_non_nullable
as ChildCategoryDebugInfo?,
  ));
}
/// Create a copy of ChildCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChildCategoryDebugInfoCopyWith<$Res>? get debugInfo {
    if (_self.debugInfo == null) {
    return null;
  }

  return $ChildCategoryDebugInfoCopyWith<$Res>(_self.debugInfo!, (value) {
    return _then(_self.copyWith(debugInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChildCategory].
extension ChildCategoryPatterns on ChildCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChildCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChildCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChildCategory value)  $default,){
final _that = this;
switch (_that) {
case _ChildCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChildCategory value)?  $default,){
final _that = this;
switch (_that) {
case _ChildCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_father_id', fromJson: _intToString)  String? catFatherId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _intToString)  String? catPos, @JsonKey(name: 'cat_active', fromJson: _intToString)  String? catActive,  List<AdvisoryItem>? fatwas, @JsonKey(name: 'fatwas_count')  int? fatwasCount, @JsonKey(name: 'debug_info')  ChildCategoryDebugInfo? debugInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChildCategory() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.fatwas,_that.fatwasCount,_that.debugInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_father_id', fromJson: _intToString)  String? catFatherId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _intToString)  String? catPos, @JsonKey(name: 'cat_active', fromJson: _intToString)  String? catActive,  List<AdvisoryItem>? fatwas, @JsonKey(name: 'fatwas_count')  int? fatwasCount, @JsonKey(name: 'debug_info')  ChildCategoryDebugInfo? debugInfo)  $default,) {final _that = this;
switch (_that) {
case _ChildCategory():
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.fatwas,_that.fatwasCount,_that.debugInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_father_id', fromJson: _intToString)  String? catFatherId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _intToString)  String? catPos, @JsonKey(name: 'cat_active', fromJson: _intToString)  String? catActive,  List<AdvisoryItem>? fatwas, @JsonKey(name: 'fatwas_count')  int? fatwasCount, @JsonKey(name: 'debug_info')  ChildCategoryDebugInfo? debugInfo)?  $default,) {final _that = this;
switch (_that) {
case _ChildCategory() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.fatwas,_that.fatwasCount,_that.debugInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChildCategory implements ChildCategory {
  const _ChildCategory({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_father_id', fromJson: _intToString) this.catFatherId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos', fromJson: _intToString) this.catPos, @JsonKey(name: 'cat_active', fromJson: _intToString) this.catActive, final  List<AdvisoryItem>? fatwas, @JsonKey(name: 'fatwas_count') this.fatwasCount, @JsonKey(name: 'debug_info') this.debugInfo}): _fatwas = fatwas;
  factory _ChildCategory.fromJson(Map<String, dynamic> json) => _$ChildCategoryFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
@override@JsonKey(name: 'cat_father_id', fromJson: _intToString) final  String? catFatherId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_pos', fromJson: _intToString) final  String? catPos;
@override@JsonKey(name: 'cat_active', fromJson: _intToString) final  String? catActive;
 final  List<AdvisoryItem>? _fatwas;
@override List<AdvisoryItem>? get fatwas {
  final value = _fatwas;
  if (value == null) return null;
  if (_fatwas is EqualUnmodifiableListView) return _fatwas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'fatwas_count') final  int? fatwasCount;
@override@JsonKey(name: 'debug_info') final  ChildCategoryDebugInfo? debugInfo;

/// Create a copy of ChildCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChildCategoryCopyWith<_ChildCategory> get copyWith => __$ChildCategoryCopyWithImpl<_ChildCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChildCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChildCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&const DeepCollectionEquality().equals(other._fatwas, _fatwas)&&(identical(other.fatwasCount, fatwasCount) || other.fatwasCount == fatwasCount)&&(identical(other.debugInfo, debugInfo) || other.debugInfo == debugInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catTitle,catNote,catPic,catPos,catActive,const DeepCollectionEquality().hash(_fatwas),fatwasCount,debugInfo);

@override
String toString() {
  return 'ChildCategory(catId: $catId, catFatherId: $catFatherId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catActive: $catActive, fatwas: $fatwas, fatwasCount: $fatwasCount, debugInfo: $debugInfo)';
}


}

/// @nodoc
abstract mixin class _$ChildCategoryCopyWith<$Res> implements $ChildCategoryCopyWith<$Res> {
  factory _$ChildCategoryCopyWith(_ChildCategory value, $Res Function(_ChildCategory) _then) = __$ChildCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_father_id', fromJson: _intToString) String? catFatherId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _intToString) String? catPos,@JsonKey(name: 'cat_active', fromJson: _intToString) String? catActive, List<AdvisoryItem>? fatwas,@JsonKey(name: 'fatwas_count') int? fatwasCount,@JsonKey(name: 'debug_info') ChildCategoryDebugInfo? debugInfo
});


@override $ChildCategoryDebugInfoCopyWith<$Res>? get debugInfo;

}
/// @nodoc
class __$ChildCategoryCopyWithImpl<$Res>
    implements _$ChildCategoryCopyWith<$Res> {
  __$ChildCategoryCopyWithImpl(this._self, this._then);

  final _ChildCategory _self;
  final $Res Function(_ChildCategory) _then;

/// Create a copy of ChildCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catFatherId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? catActive = freezed,Object? fatwas = freezed,Object? fatwasCount = freezed,Object? debugInfo = freezed,}) {
  return _then(_ChildCategory(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catFatherId: freezed == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as String?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,catActive: freezed == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as String?,fatwas: freezed == fatwas ? _self._fatwas : fatwas // ignore: cast_nullable_to_non_nullable
as List<AdvisoryItem>?,fatwasCount: freezed == fatwasCount ? _self.fatwasCount : fatwasCount // ignore: cast_nullable_to_non_nullable
as int?,debugInfo: freezed == debugInfo ? _self.debugInfo : debugInfo // ignore: cast_nullable_to_non_nullable
as ChildCategoryDebugInfo?,
  ));
}

/// Create a copy of ChildCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChildCategoryDebugInfoCopyWith<$Res>? get debugInfo {
    if (_self.debugInfo == null) {
    return null;
  }

  return $ChildCategoryDebugInfoCopyWith<$Res>(_self.debugInfo!, (value) {
    return _then(_self.copyWith(debugInfo: value));
  });
}
}


/// @nodoc
mixin _$ChildCategoryDebugInfo {

@JsonKey(name: 'total_fatwas_in_category') int? get totalFatwasInCategory;@JsonKey(name: 'published_fatwas_in_category') int? get publishedFatwasInCategory;@JsonKey(name: 'requested_fatwas_per_child') String? get requestedFatwasPerChild;@JsonKey(name: 'actual_fatwas_returned') int? get actualFatwasReturned;
/// Create a copy of ChildCategoryDebugInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChildCategoryDebugInfoCopyWith<ChildCategoryDebugInfo> get copyWith => _$ChildCategoryDebugInfoCopyWithImpl<ChildCategoryDebugInfo>(this as ChildCategoryDebugInfo, _$identity);

  /// Serializes this ChildCategoryDebugInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChildCategoryDebugInfo&&(identical(other.totalFatwasInCategory, totalFatwasInCategory) || other.totalFatwasInCategory == totalFatwasInCategory)&&(identical(other.publishedFatwasInCategory, publishedFatwasInCategory) || other.publishedFatwasInCategory == publishedFatwasInCategory)&&(identical(other.requestedFatwasPerChild, requestedFatwasPerChild) || other.requestedFatwasPerChild == requestedFatwasPerChild)&&(identical(other.actualFatwasReturned, actualFatwasReturned) || other.actualFatwasReturned == actualFatwasReturned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalFatwasInCategory,publishedFatwasInCategory,requestedFatwasPerChild,actualFatwasReturned);

@override
String toString() {
  return 'ChildCategoryDebugInfo(totalFatwasInCategory: $totalFatwasInCategory, publishedFatwasInCategory: $publishedFatwasInCategory, requestedFatwasPerChild: $requestedFatwasPerChild, actualFatwasReturned: $actualFatwasReturned)';
}


}

/// @nodoc
abstract mixin class $ChildCategoryDebugInfoCopyWith<$Res>  {
  factory $ChildCategoryDebugInfoCopyWith(ChildCategoryDebugInfo value, $Res Function(ChildCategoryDebugInfo) _then) = _$ChildCategoryDebugInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_fatwas_in_category') int? totalFatwasInCategory,@JsonKey(name: 'published_fatwas_in_category') int? publishedFatwasInCategory,@JsonKey(name: 'requested_fatwas_per_child') String? requestedFatwasPerChild,@JsonKey(name: 'actual_fatwas_returned') int? actualFatwasReturned
});




}
/// @nodoc
class _$ChildCategoryDebugInfoCopyWithImpl<$Res>
    implements $ChildCategoryDebugInfoCopyWith<$Res> {
  _$ChildCategoryDebugInfoCopyWithImpl(this._self, this._then);

  final ChildCategoryDebugInfo _self;
  final $Res Function(ChildCategoryDebugInfo) _then;

/// Create a copy of ChildCategoryDebugInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalFatwasInCategory = freezed,Object? publishedFatwasInCategory = freezed,Object? requestedFatwasPerChild = freezed,Object? actualFatwasReturned = freezed,}) {
  return _then(_self.copyWith(
totalFatwasInCategory: freezed == totalFatwasInCategory ? _self.totalFatwasInCategory : totalFatwasInCategory // ignore: cast_nullable_to_non_nullable
as int?,publishedFatwasInCategory: freezed == publishedFatwasInCategory ? _self.publishedFatwasInCategory : publishedFatwasInCategory // ignore: cast_nullable_to_non_nullable
as int?,requestedFatwasPerChild: freezed == requestedFatwasPerChild ? _self.requestedFatwasPerChild : requestedFatwasPerChild // ignore: cast_nullable_to_non_nullable
as String?,actualFatwasReturned: freezed == actualFatwasReturned ? _self.actualFatwasReturned : actualFatwasReturned // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChildCategoryDebugInfo].
extension ChildCategoryDebugInfoPatterns on ChildCategoryDebugInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChildCategoryDebugInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChildCategoryDebugInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChildCategoryDebugInfo value)  $default,){
final _that = this;
switch (_that) {
case _ChildCategoryDebugInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChildCategoryDebugInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ChildCategoryDebugInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_fatwas_in_category')  int? totalFatwasInCategory, @JsonKey(name: 'published_fatwas_in_category')  int? publishedFatwasInCategory, @JsonKey(name: 'requested_fatwas_per_child')  String? requestedFatwasPerChild, @JsonKey(name: 'actual_fatwas_returned')  int? actualFatwasReturned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChildCategoryDebugInfo() when $default != null:
return $default(_that.totalFatwasInCategory,_that.publishedFatwasInCategory,_that.requestedFatwasPerChild,_that.actualFatwasReturned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_fatwas_in_category')  int? totalFatwasInCategory, @JsonKey(name: 'published_fatwas_in_category')  int? publishedFatwasInCategory, @JsonKey(name: 'requested_fatwas_per_child')  String? requestedFatwasPerChild, @JsonKey(name: 'actual_fatwas_returned')  int? actualFatwasReturned)  $default,) {final _that = this;
switch (_that) {
case _ChildCategoryDebugInfo():
return $default(_that.totalFatwasInCategory,_that.publishedFatwasInCategory,_that.requestedFatwasPerChild,_that.actualFatwasReturned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_fatwas_in_category')  int? totalFatwasInCategory, @JsonKey(name: 'published_fatwas_in_category')  int? publishedFatwasInCategory, @JsonKey(name: 'requested_fatwas_per_child')  String? requestedFatwasPerChild, @JsonKey(name: 'actual_fatwas_returned')  int? actualFatwasReturned)?  $default,) {final _that = this;
switch (_that) {
case _ChildCategoryDebugInfo() when $default != null:
return $default(_that.totalFatwasInCategory,_that.publishedFatwasInCategory,_that.requestedFatwasPerChild,_that.actualFatwasReturned);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChildCategoryDebugInfo implements ChildCategoryDebugInfo {
  const _ChildCategoryDebugInfo({@JsonKey(name: 'total_fatwas_in_category') this.totalFatwasInCategory, @JsonKey(name: 'published_fatwas_in_category') this.publishedFatwasInCategory, @JsonKey(name: 'requested_fatwas_per_child') this.requestedFatwasPerChild, @JsonKey(name: 'actual_fatwas_returned') this.actualFatwasReturned});
  factory _ChildCategoryDebugInfo.fromJson(Map<String, dynamic> json) => _$ChildCategoryDebugInfoFromJson(json);

@override@JsonKey(name: 'total_fatwas_in_category') final  int? totalFatwasInCategory;
@override@JsonKey(name: 'published_fatwas_in_category') final  int? publishedFatwasInCategory;
@override@JsonKey(name: 'requested_fatwas_per_child') final  String? requestedFatwasPerChild;
@override@JsonKey(name: 'actual_fatwas_returned') final  int? actualFatwasReturned;

/// Create a copy of ChildCategoryDebugInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChildCategoryDebugInfoCopyWith<_ChildCategoryDebugInfo> get copyWith => __$ChildCategoryDebugInfoCopyWithImpl<_ChildCategoryDebugInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChildCategoryDebugInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChildCategoryDebugInfo&&(identical(other.totalFatwasInCategory, totalFatwasInCategory) || other.totalFatwasInCategory == totalFatwasInCategory)&&(identical(other.publishedFatwasInCategory, publishedFatwasInCategory) || other.publishedFatwasInCategory == publishedFatwasInCategory)&&(identical(other.requestedFatwasPerChild, requestedFatwasPerChild) || other.requestedFatwasPerChild == requestedFatwasPerChild)&&(identical(other.actualFatwasReturned, actualFatwasReturned) || other.actualFatwasReturned == actualFatwasReturned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalFatwasInCategory,publishedFatwasInCategory,requestedFatwasPerChild,actualFatwasReturned);

@override
String toString() {
  return 'ChildCategoryDebugInfo(totalFatwasInCategory: $totalFatwasInCategory, publishedFatwasInCategory: $publishedFatwasInCategory, requestedFatwasPerChild: $requestedFatwasPerChild, actualFatwasReturned: $actualFatwasReturned)';
}


}

/// @nodoc
abstract mixin class _$ChildCategoryDebugInfoCopyWith<$Res> implements $ChildCategoryDebugInfoCopyWith<$Res> {
  factory _$ChildCategoryDebugInfoCopyWith(_ChildCategoryDebugInfo value, $Res Function(_ChildCategoryDebugInfo) _then) = __$ChildCategoryDebugInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_fatwas_in_category') int? totalFatwasInCategory,@JsonKey(name: 'published_fatwas_in_category') int? publishedFatwasInCategory,@JsonKey(name: 'requested_fatwas_per_child') String? requestedFatwasPerChild,@JsonKey(name: 'actual_fatwas_returned') int? actualFatwasReturned
});




}
/// @nodoc
class __$ChildCategoryDebugInfoCopyWithImpl<$Res>
    implements _$ChildCategoryDebugInfoCopyWith<$Res> {
  __$ChildCategoryDebugInfoCopyWithImpl(this._self, this._then);

  final _ChildCategoryDebugInfo _self;
  final $Res Function(_ChildCategoryDebugInfo) _then;

/// Create a copy of ChildCategoryDebugInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalFatwasInCategory = freezed,Object? publishedFatwasInCategory = freezed,Object? requestedFatwasPerChild = freezed,Object? actualFatwasReturned = freezed,}) {
  return _then(_ChildCategoryDebugInfo(
totalFatwasInCategory: freezed == totalFatwasInCategory ? _self.totalFatwasInCategory : totalFatwasInCategory // ignore: cast_nullable_to_non_nullable
as int?,publishedFatwasInCategory: freezed == publishedFatwasInCategory ? _self.publishedFatwasInCategory : publishedFatwasInCategory // ignore: cast_nullable_to_non_nullable
as int?,requestedFatwasPerChild: freezed == requestedFatwasPerChild ? _self.requestedFatwasPerChild : requestedFatwasPerChild // ignore: cast_nullable_to_non_nullable
as String?,actualFatwasReturned: freezed == actualFatwasReturned ? _self.actualFatwasReturned : actualFatwasReturned // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$CategoryDetailsMeta {

 String? get structure;@JsonKey(name: 'parent_id') String? get parentId;@JsonKey(name: 'fatwas_per_child') String? get fatwasPerChild;@JsonKey(name: 'total_children_categories') int? get totalChildrenCategories;@JsonKey(name: 'debug_info') CategoryDetailsDebugInfo? get debugInfo;
/// Create a copy of CategoryDetailsMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDetailsMetaCopyWith<CategoryDetailsMeta> get copyWith => _$CategoryDetailsMetaCopyWithImpl<CategoryDetailsMeta>(this as CategoryDetailsMeta, _$identity);

  /// Serializes this CategoryDetailsMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDetailsMeta&&(identical(other.structure, structure) || other.structure == structure)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.fatwasPerChild, fatwasPerChild) || other.fatwasPerChild == fatwasPerChild)&&(identical(other.totalChildrenCategories, totalChildrenCategories) || other.totalChildrenCategories == totalChildrenCategories)&&(identical(other.debugInfo, debugInfo) || other.debugInfo == debugInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,structure,parentId,fatwasPerChild,totalChildrenCategories,debugInfo);

@override
String toString() {
  return 'CategoryDetailsMeta(structure: $structure, parentId: $parentId, fatwasPerChild: $fatwasPerChild, totalChildrenCategories: $totalChildrenCategories, debugInfo: $debugInfo)';
}


}

/// @nodoc
abstract mixin class $CategoryDetailsMetaCopyWith<$Res>  {
  factory $CategoryDetailsMetaCopyWith(CategoryDetailsMeta value, $Res Function(CategoryDetailsMeta) _then) = _$CategoryDetailsMetaCopyWithImpl;
@useResult
$Res call({
 String? structure,@JsonKey(name: 'parent_id') String? parentId,@JsonKey(name: 'fatwas_per_child') String? fatwasPerChild,@JsonKey(name: 'total_children_categories') int? totalChildrenCategories,@JsonKey(name: 'debug_info') CategoryDetailsDebugInfo? debugInfo
});


$CategoryDetailsDebugInfoCopyWith<$Res>? get debugInfo;

}
/// @nodoc
class _$CategoryDetailsMetaCopyWithImpl<$Res>
    implements $CategoryDetailsMetaCopyWith<$Res> {
  _$CategoryDetailsMetaCopyWithImpl(this._self, this._then);

  final CategoryDetailsMeta _self;
  final $Res Function(CategoryDetailsMeta) _then;

/// Create a copy of CategoryDetailsMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? structure = freezed,Object? parentId = freezed,Object? fatwasPerChild = freezed,Object? totalChildrenCategories = freezed,Object? debugInfo = freezed,}) {
  return _then(_self.copyWith(
structure: freezed == structure ? _self.structure : structure // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,fatwasPerChild: freezed == fatwasPerChild ? _self.fatwasPerChild : fatwasPerChild // ignore: cast_nullable_to_non_nullable
as String?,totalChildrenCategories: freezed == totalChildrenCategories ? _self.totalChildrenCategories : totalChildrenCategories // ignore: cast_nullable_to_non_nullable
as int?,debugInfo: freezed == debugInfo ? _self.debugInfo : debugInfo // ignore: cast_nullable_to_non_nullable
as CategoryDetailsDebugInfo?,
  ));
}
/// Create a copy of CategoryDetailsMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryDetailsDebugInfoCopyWith<$Res>? get debugInfo {
    if (_self.debugInfo == null) {
    return null;
  }

  return $CategoryDetailsDebugInfoCopyWith<$Res>(_self.debugInfo!, (value) {
    return _then(_self.copyWith(debugInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryDetailsMeta].
extension CategoryDetailsMetaPatterns on CategoryDetailsMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDetailsMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDetailsMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDetailsMeta value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailsMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDetailsMeta value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailsMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? structure, @JsonKey(name: 'parent_id')  String? parentId, @JsonKey(name: 'fatwas_per_child')  String? fatwasPerChild, @JsonKey(name: 'total_children_categories')  int? totalChildrenCategories, @JsonKey(name: 'debug_info')  CategoryDetailsDebugInfo? debugInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDetailsMeta() when $default != null:
return $default(_that.structure,_that.parentId,_that.fatwasPerChild,_that.totalChildrenCategories,_that.debugInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? structure, @JsonKey(name: 'parent_id')  String? parentId, @JsonKey(name: 'fatwas_per_child')  String? fatwasPerChild, @JsonKey(name: 'total_children_categories')  int? totalChildrenCategories, @JsonKey(name: 'debug_info')  CategoryDetailsDebugInfo? debugInfo)  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailsMeta():
return $default(_that.structure,_that.parentId,_that.fatwasPerChild,_that.totalChildrenCategories,_that.debugInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? structure, @JsonKey(name: 'parent_id')  String? parentId, @JsonKey(name: 'fatwas_per_child')  String? fatwasPerChild, @JsonKey(name: 'total_children_categories')  int? totalChildrenCategories, @JsonKey(name: 'debug_info')  CategoryDetailsDebugInfo? debugInfo)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailsMeta() when $default != null:
return $default(_that.structure,_that.parentId,_that.fatwasPerChild,_that.totalChildrenCategories,_that.debugInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryDetailsMeta implements CategoryDetailsMeta {
  const _CategoryDetailsMeta({this.structure, @JsonKey(name: 'parent_id') this.parentId, @JsonKey(name: 'fatwas_per_child') this.fatwasPerChild, @JsonKey(name: 'total_children_categories') this.totalChildrenCategories, @JsonKey(name: 'debug_info') this.debugInfo});
  factory _CategoryDetailsMeta.fromJson(Map<String, dynamic> json) => _$CategoryDetailsMetaFromJson(json);

@override final  String? structure;
@override@JsonKey(name: 'parent_id') final  String? parentId;
@override@JsonKey(name: 'fatwas_per_child') final  String? fatwasPerChild;
@override@JsonKey(name: 'total_children_categories') final  int? totalChildrenCategories;
@override@JsonKey(name: 'debug_info') final  CategoryDetailsDebugInfo? debugInfo;

/// Create a copy of CategoryDetailsMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDetailsMetaCopyWith<_CategoryDetailsMeta> get copyWith => __$CategoryDetailsMetaCopyWithImpl<_CategoryDetailsMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryDetailsMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDetailsMeta&&(identical(other.structure, structure) || other.structure == structure)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.fatwasPerChild, fatwasPerChild) || other.fatwasPerChild == fatwasPerChild)&&(identical(other.totalChildrenCategories, totalChildrenCategories) || other.totalChildrenCategories == totalChildrenCategories)&&(identical(other.debugInfo, debugInfo) || other.debugInfo == debugInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,structure,parentId,fatwasPerChild,totalChildrenCategories,debugInfo);

@override
String toString() {
  return 'CategoryDetailsMeta(structure: $structure, parentId: $parentId, fatwasPerChild: $fatwasPerChild, totalChildrenCategories: $totalChildrenCategories, debugInfo: $debugInfo)';
}


}

/// @nodoc
abstract mixin class _$CategoryDetailsMetaCopyWith<$Res> implements $CategoryDetailsMetaCopyWith<$Res> {
  factory _$CategoryDetailsMetaCopyWith(_CategoryDetailsMeta value, $Res Function(_CategoryDetailsMeta) _then) = __$CategoryDetailsMetaCopyWithImpl;
@override @useResult
$Res call({
 String? structure,@JsonKey(name: 'parent_id') String? parentId,@JsonKey(name: 'fatwas_per_child') String? fatwasPerChild,@JsonKey(name: 'total_children_categories') int? totalChildrenCategories,@JsonKey(name: 'debug_info') CategoryDetailsDebugInfo? debugInfo
});


@override $CategoryDetailsDebugInfoCopyWith<$Res>? get debugInfo;

}
/// @nodoc
class __$CategoryDetailsMetaCopyWithImpl<$Res>
    implements _$CategoryDetailsMetaCopyWith<$Res> {
  __$CategoryDetailsMetaCopyWithImpl(this._self, this._then);

  final _CategoryDetailsMeta _self;
  final $Res Function(_CategoryDetailsMeta) _then;

/// Create a copy of CategoryDetailsMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? structure = freezed,Object? parentId = freezed,Object? fatwasPerChild = freezed,Object? totalChildrenCategories = freezed,Object? debugInfo = freezed,}) {
  return _then(_CategoryDetailsMeta(
structure: freezed == structure ? _self.structure : structure // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,fatwasPerChild: freezed == fatwasPerChild ? _self.fatwasPerChild : fatwasPerChild // ignore: cast_nullable_to_non_nullable
as String?,totalChildrenCategories: freezed == totalChildrenCategories ? _self.totalChildrenCategories : totalChildrenCategories // ignore: cast_nullable_to_non_nullable
as int?,debugInfo: freezed == debugInfo ? _self.debugInfo : debugInfo // ignore: cast_nullable_to_non_nullable
as CategoryDetailsDebugInfo?,
  ));
}

/// Create a copy of CategoryDetailsMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryDetailsDebugInfoCopyWith<$Res>? get debugInfo {
    if (_self.debugInfo == null) {
    return null;
  }

  return $CategoryDetailsDebugInfoCopyWith<$Res>(_self.debugInfo!, (value) {
    return _then(_self.copyWith(debugInfo: value));
  });
}
}


/// @nodoc
mixin _$CategoryDetailsDebugInfo {

@JsonKey(name: 'parent_category_found') bool? get parentCategoryFound;@JsonKey(name: 'parent_category_title') String? get parentCategoryTitle;@JsonKey(name: 'children_found') int? get childrenFound;@JsonKey(name: 'total_children_in_parent') int? get totalChildrenInParent;@JsonKey(name: 'query_used') String? get queryUsed;
/// Create a copy of CategoryDetailsDebugInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDetailsDebugInfoCopyWith<CategoryDetailsDebugInfo> get copyWith => _$CategoryDetailsDebugInfoCopyWithImpl<CategoryDetailsDebugInfo>(this as CategoryDetailsDebugInfo, _$identity);

  /// Serializes this CategoryDetailsDebugInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDetailsDebugInfo&&(identical(other.parentCategoryFound, parentCategoryFound) || other.parentCategoryFound == parentCategoryFound)&&(identical(other.parentCategoryTitle, parentCategoryTitle) || other.parentCategoryTitle == parentCategoryTitle)&&(identical(other.childrenFound, childrenFound) || other.childrenFound == childrenFound)&&(identical(other.totalChildrenInParent, totalChildrenInParent) || other.totalChildrenInParent == totalChildrenInParent)&&(identical(other.queryUsed, queryUsed) || other.queryUsed == queryUsed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parentCategoryFound,parentCategoryTitle,childrenFound,totalChildrenInParent,queryUsed);

@override
String toString() {
  return 'CategoryDetailsDebugInfo(parentCategoryFound: $parentCategoryFound, parentCategoryTitle: $parentCategoryTitle, childrenFound: $childrenFound, totalChildrenInParent: $totalChildrenInParent, queryUsed: $queryUsed)';
}


}

/// @nodoc
abstract mixin class $CategoryDetailsDebugInfoCopyWith<$Res>  {
  factory $CategoryDetailsDebugInfoCopyWith(CategoryDetailsDebugInfo value, $Res Function(CategoryDetailsDebugInfo) _then) = _$CategoryDetailsDebugInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parent_category_found') bool? parentCategoryFound,@JsonKey(name: 'parent_category_title') String? parentCategoryTitle,@JsonKey(name: 'children_found') int? childrenFound,@JsonKey(name: 'total_children_in_parent') int? totalChildrenInParent,@JsonKey(name: 'query_used') String? queryUsed
});




}
/// @nodoc
class _$CategoryDetailsDebugInfoCopyWithImpl<$Res>
    implements $CategoryDetailsDebugInfoCopyWith<$Res> {
  _$CategoryDetailsDebugInfoCopyWithImpl(this._self, this._then);

  final CategoryDetailsDebugInfo _self;
  final $Res Function(CategoryDetailsDebugInfo) _then;

/// Create a copy of CategoryDetailsDebugInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parentCategoryFound = freezed,Object? parentCategoryTitle = freezed,Object? childrenFound = freezed,Object? totalChildrenInParent = freezed,Object? queryUsed = freezed,}) {
  return _then(_self.copyWith(
parentCategoryFound: freezed == parentCategoryFound ? _self.parentCategoryFound : parentCategoryFound // ignore: cast_nullable_to_non_nullable
as bool?,parentCategoryTitle: freezed == parentCategoryTitle ? _self.parentCategoryTitle : parentCategoryTitle // ignore: cast_nullable_to_non_nullable
as String?,childrenFound: freezed == childrenFound ? _self.childrenFound : childrenFound // ignore: cast_nullable_to_non_nullable
as int?,totalChildrenInParent: freezed == totalChildrenInParent ? _self.totalChildrenInParent : totalChildrenInParent // ignore: cast_nullable_to_non_nullable
as int?,queryUsed: freezed == queryUsed ? _self.queryUsed : queryUsed // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryDetailsDebugInfo].
extension CategoryDetailsDebugInfoPatterns on CategoryDetailsDebugInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDetailsDebugInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDetailsDebugInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDetailsDebugInfo value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailsDebugInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDetailsDebugInfo value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailsDebugInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_category_found')  bool? parentCategoryFound, @JsonKey(name: 'parent_category_title')  String? parentCategoryTitle, @JsonKey(name: 'children_found')  int? childrenFound, @JsonKey(name: 'total_children_in_parent')  int? totalChildrenInParent, @JsonKey(name: 'query_used')  String? queryUsed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDetailsDebugInfo() when $default != null:
return $default(_that.parentCategoryFound,_that.parentCategoryTitle,_that.childrenFound,_that.totalChildrenInParent,_that.queryUsed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_category_found')  bool? parentCategoryFound, @JsonKey(name: 'parent_category_title')  String? parentCategoryTitle, @JsonKey(name: 'children_found')  int? childrenFound, @JsonKey(name: 'total_children_in_parent')  int? totalChildrenInParent, @JsonKey(name: 'query_used')  String? queryUsed)  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailsDebugInfo():
return $default(_that.parentCategoryFound,_that.parentCategoryTitle,_that.childrenFound,_that.totalChildrenInParent,_that.queryUsed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parent_category_found')  bool? parentCategoryFound, @JsonKey(name: 'parent_category_title')  String? parentCategoryTitle, @JsonKey(name: 'children_found')  int? childrenFound, @JsonKey(name: 'total_children_in_parent')  int? totalChildrenInParent, @JsonKey(name: 'query_used')  String? queryUsed)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailsDebugInfo() when $default != null:
return $default(_that.parentCategoryFound,_that.parentCategoryTitle,_that.childrenFound,_that.totalChildrenInParent,_that.queryUsed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryDetailsDebugInfo implements CategoryDetailsDebugInfo {
  const _CategoryDetailsDebugInfo({@JsonKey(name: 'parent_category_found') this.parentCategoryFound, @JsonKey(name: 'parent_category_title') this.parentCategoryTitle, @JsonKey(name: 'children_found') this.childrenFound, @JsonKey(name: 'total_children_in_parent') this.totalChildrenInParent, @JsonKey(name: 'query_used') this.queryUsed});
  factory _CategoryDetailsDebugInfo.fromJson(Map<String, dynamic> json) => _$CategoryDetailsDebugInfoFromJson(json);

@override@JsonKey(name: 'parent_category_found') final  bool? parentCategoryFound;
@override@JsonKey(name: 'parent_category_title') final  String? parentCategoryTitle;
@override@JsonKey(name: 'children_found') final  int? childrenFound;
@override@JsonKey(name: 'total_children_in_parent') final  int? totalChildrenInParent;
@override@JsonKey(name: 'query_used') final  String? queryUsed;

/// Create a copy of CategoryDetailsDebugInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDetailsDebugInfoCopyWith<_CategoryDetailsDebugInfo> get copyWith => __$CategoryDetailsDebugInfoCopyWithImpl<_CategoryDetailsDebugInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryDetailsDebugInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDetailsDebugInfo&&(identical(other.parentCategoryFound, parentCategoryFound) || other.parentCategoryFound == parentCategoryFound)&&(identical(other.parentCategoryTitle, parentCategoryTitle) || other.parentCategoryTitle == parentCategoryTitle)&&(identical(other.childrenFound, childrenFound) || other.childrenFound == childrenFound)&&(identical(other.totalChildrenInParent, totalChildrenInParent) || other.totalChildrenInParent == totalChildrenInParent)&&(identical(other.queryUsed, queryUsed) || other.queryUsed == queryUsed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parentCategoryFound,parentCategoryTitle,childrenFound,totalChildrenInParent,queryUsed);

@override
String toString() {
  return 'CategoryDetailsDebugInfo(parentCategoryFound: $parentCategoryFound, parentCategoryTitle: $parentCategoryTitle, childrenFound: $childrenFound, totalChildrenInParent: $totalChildrenInParent, queryUsed: $queryUsed)';
}


}

/// @nodoc
abstract mixin class _$CategoryDetailsDebugInfoCopyWith<$Res> implements $CategoryDetailsDebugInfoCopyWith<$Res> {
  factory _$CategoryDetailsDebugInfoCopyWith(_CategoryDetailsDebugInfo value, $Res Function(_CategoryDetailsDebugInfo) _then) = __$CategoryDetailsDebugInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parent_category_found') bool? parentCategoryFound,@JsonKey(name: 'parent_category_title') String? parentCategoryTitle,@JsonKey(name: 'children_found') int? childrenFound,@JsonKey(name: 'total_children_in_parent') int? totalChildrenInParent,@JsonKey(name: 'query_used') String? queryUsed
});




}
/// @nodoc
class __$CategoryDetailsDebugInfoCopyWithImpl<$Res>
    implements _$CategoryDetailsDebugInfoCopyWith<$Res> {
  __$CategoryDetailsDebugInfoCopyWithImpl(this._self, this._then);

  final _CategoryDetailsDebugInfo _self;
  final $Res Function(_CategoryDetailsDebugInfo) _then;

/// Create a copy of CategoryDetailsDebugInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parentCategoryFound = freezed,Object? parentCategoryTitle = freezed,Object? childrenFound = freezed,Object? totalChildrenInParent = freezed,Object? queryUsed = freezed,}) {
  return _then(_CategoryDetailsDebugInfo(
parentCategoryFound: freezed == parentCategoryFound ? _self.parentCategoryFound : parentCategoryFound // ignore: cast_nullable_to_non_nullable
as bool?,parentCategoryTitle: freezed == parentCategoryTitle ? _self.parentCategoryTitle : parentCategoryTitle // ignore: cast_nullable_to_non_nullable
as String?,childrenFound: freezed == childrenFound ? _self.childrenFound : childrenFound // ignore: cast_nullable_to_non_nullable
as int?,totalChildrenInParent: freezed == totalChildrenInParent ? _self.totalChildrenInParent : totalChildrenInParent // ignore: cast_nullable_to_non_nullable
as int?,queryUsed: freezed == queryUsed ? _self.queryUsed : queryUsed // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
