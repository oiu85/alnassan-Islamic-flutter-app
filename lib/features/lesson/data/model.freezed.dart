// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LessonModel {

 String? get status; LessonData? get data; LessonMeta? get meta;
/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonModelCopyWith<LessonModel> get copyWith => _$LessonModelCopyWithImpl<LessonModel>(this as LessonModel, _$identity);

  /// Serializes this LessonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,meta);

@override
String toString() {
  return 'LessonModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $LessonModelCopyWith<$Res>  {
  factory $LessonModelCopyWith(LessonModel value, $Res Function(LessonModel) _then) = _$LessonModelCopyWithImpl;
@useResult
$Res call({
 String? status, LessonData? data, LessonMeta? meta
});


$LessonDataCopyWith<$Res>? get data;$LessonMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$LessonModelCopyWithImpl<$Res>
    implements $LessonModelCopyWith<$Res> {
  _$LessonModelCopyWithImpl(this._self, this._then);

  final LessonModel _self;
  final $Res Function(LessonModel) _then;

/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LessonData?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as LessonMeta?,
  ));
}
/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $LessonDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $LessonMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [LessonModel].
extension LessonModelPatterns on LessonModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonModel value)  $default,){
final _that = this;
switch (_that) {
case _LessonModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonModel value)?  $default,){
final _that = this;
switch (_that) {
case _LessonModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  LessonData? data,  LessonMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  LessonData? data,  LessonMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _LessonModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  LessonData? data,  LessonMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _LessonModel() when $default != null:
return $default(_that.status,_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonModel implements LessonModel {
  const _LessonModel({this.status, this.data, this.meta});
  factory _LessonModel.fromJson(Map<String, dynamic> json) => _$LessonModelFromJson(json);

@override final  String? status;
@override final  LessonData? data;
@override final  LessonMeta? meta;

/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonModelCopyWith<_LessonModel> get copyWith => __$LessonModelCopyWithImpl<_LessonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,meta);

@override
String toString() {
  return 'LessonModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$LessonModelCopyWith<$Res> implements $LessonModelCopyWith<$Res> {
  factory _$LessonModelCopyWith(_LessonModel value, $Res Function(_LessonModel) _then) = __$LessonModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, LessonData? data, LessonMeta? meta
});


@override $LessonDataCopyWith<$Res>? get data;@override $LessonMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$LessonModelCopyWithImpl<$Res>
    implements _$LessonModelCopyWith<$Res> {
  __$LessonModelCopyWithImpl(this._self, this._then);

  final _LessonModel _self;
  final $Res Function(_LessonModel) _then;

/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_LessonModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LessonData?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as LessonMeta?,
  ));
}

/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $LessonDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $LessonMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$LessonData {

 List<LessonCategoryWithArticles>? get categories;@JsonKey(name: 'is_multiple_categories') bool? get isMultipleCategories;
/// Create a copy of LessonData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonDataCopyWith<LessonData> get copyWith => _$LessonDataCopyWithImpl<LessonData>(this as LessonData, _$identity);

  /// Serializes this LessonData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonData&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.isMultipleCategories, isMultipleCategories) || other.isMultipleCategories == isMultipleCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),isMultipleCategories);

@override
String toString() {
  return 'LessonData(categories: $categories, isMultipleCategories: $isMultipleCategories)';
}


}

/// @nodoc
abstract mixin class $LessonDataCopyWith<$Res>  {
  factory $LessonDataCopyWith(LessonData value, $Res Function(LessonData) _then) = _$LessonDataCopyWithImpl;
@useResult
$Res call({
 List<LessonCategoryWithArticles>? categories,@JsonKey(name: 'is_multiple_categories') bool? isMultipleCategories
});




}
/// @nodoc
class _$LessonDataCopyWithImpl<$Res>
    implements $LessonDataCopyWith<$Res> {
  _$LessonDataCopyWithImpl(this._self, this._then);

  final LessonData _self;
  final $Res Function(LessonData) _then;

/// Create a copy of LessonData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = freezed,Object? isMultipleCategories = freezed,}) {
  return _then(_self.copyWith(
categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<LessonCategoryWithArticles>?,isMultipleCategories: freezed == isMultipleCategories ? _self.isMultipleCategories : isMultipleCategories // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonData].
extension LessonDataPatterns on LessonData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonData value)  $default,){
final _that = this;
switch (_that) {
case _LessonData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonData value)?  $default,){
final _that = this;
switch (_that) {
case _LessonData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<LessonCategoryWithArticles>? categories, @JsonKey(name: 'is_multiple_categories')  bool? isMultipleCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<LessonCategoryWithArticles>? categories, @JsonKey(name: 'is_multiple_categories')  bool? isMultipleCategories)  $default,) {final _that = this;
switch (_that) {
case _LessonData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<LessonCategoryWithArticles>? categories, @JsonKey(name: 'is_multiple_categories')  bool? isMultipleCategories)?  $default,) {final _that = this;
switch (_that) {
case _LessonData() when $default != null:
return $default(_that.categories,_that.isMultipleCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonData implements LessonData {
  const _LessonData({final  List<LessonCategoryWithArticles>? categories, @JsonKey(name: 'is_multiple_categories') this.isMultipleCategories}): _categories = categories;
  factory _LessonData.fromJson(Map<String, dynamic> json) => _$LessonDataFromJson(json);

 final  List<LessonCategoryWithArticles>? _categories;
@override List<LessonCategoryWithArticles>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'is_multiple_categories') final  bool? isMultipleCategories;

/// Create a copy of LessonData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonDataCopyWith<_LessonData> get copyWith => __$LessonDataCopyWithImpl<_LessonData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonData&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.isMultipleCategories, isMultipleCategories) || other.isMultipleCategories == isMultipleCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),isMultipleCategories);

@override
String toString() {
  return 'LessonData(categories: $categories, isMultipleCategories: $isMultipleCategories)';
}


}

/// @nodoc
abstract mixin class _$LessonDataCopyWith<$Res> implements $LessonDataCopyWith<$Res> {
  factory _$LessonDataCopyWith(_LessonData value, $Res Function(_LessonData) _then) = __$LessonDataCopyWithImpl;
@override @useResult
$Res call({
 List<LessonCategoryWithArticles>? categories,@JsonKey(name: 'is_multiple_categories') bool? isMultipleCategories
});




}
/// @nodoc
class __$LessonDataCopyWithImpl<$Res>
    implements _$LessonDataCopyWith<$Res> {
  __$LessonDataCopyWithImpl(this._self, this._then);

  final _LessonData _self;
  final $Res Function(_LessonData) _then;

/// Create a copy of LessonData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = freezed,Object? isMultipleCategories = freezed,}) {
  return _then(_LessonData(
categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<LessonCategoryWithArticles>?,isMultipleCategories: freezed == isMultipleCategories ? _self.isMultipleCategories : isMultipleCategories // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$LessonCategoryWithArticles {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? get catPos; dynamic get parent; List<dynamic>? get children; List<LessonHierarchy>? get hierarchy; List<LessonArticle>? get articles; LessonPagination? get pagination;
/// Create a copy of LessonCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonCategoryWithArticlesCopyWith<LessonCategoryWithArticles> get copyWith => _$LessonCategoryWithArticlesCopyWithImpl<LessonCategoryWithArticles>(this as LessonCategoryWithArticles, _$identity);

  /// Serializes this LessonCategoryWithArticles to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonCategoryWithArticles&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other.children, children)&&const DeepCollectionEquality().equals(other.hierarchy, hierarchy)&&const DeepCollectionEquality().equals(other.articles, articles)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(children),const DeepCollectionEquality().hash(hierarchy),const DeepCollectionEquality().hash(articles),pagination);

@override
String toString() {
  return 'LessonCategoryWithArticles(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, parent: $parent, children: $children, hierarchy: $hierarchy, articles: $articles, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $LessonCategoryWithArticlesCopyWith<$Res>  {
  factory $LessonCategoryWithArticlesCopyWith(LessonCategoryWithArticles value, $Res Function(LessonCategoryWithArticles) _then) = _$LessonCategoryWithArticlesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos, dynamic parent, List<dynamic>? children, List<LessonHierarchy>? hierarchy, List<LessonArticle>? articles, LessonPagination? pagination
});


$LessonPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$LessonCategoryWithArticlesCopyWithImpl<$Res>
    implements $LessonCategoryWithArticlesCopyWith<$Res> {
  _$LessonCategoryWithArticlesCopyWithImpl(this._self, this._then);

  final LessonCategoryWithArticles _self;
  final $Res Function(LessonCategoryWithArticles) _then;

/// Create a copy of LessonCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? parent = freezed,Object? children = freezed,Object? hierarchy = freezed,Object? articles = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as int?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as dynamic,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,hierarchy: freezed == hierarchy ? _self.hierarchy : hierarchy // ignore: cast_nullable_to_non_nullable
as List<LessonHierarchy>?,articles: freezed == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<LessonArticle>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as LessonPagination?,
  ));
}
/// Create a copy of LessonCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $LessonPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [LessonCategoryWithArticles].
extension LessonCategoryWithArticlesPatterns on LessonCategoryWithArticles {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonCategoryWithArticles value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonCategoryWithArticles() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonCategoryWithArticles value)  $default,){
final _that = this;
switch (_that) {
case _LessonCategoryWithArticles():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonCategoryWithArticles value)?  $default,){
final _that = this;
switch (_that) {
case _LessonCategoryWithArticles() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos,  dynamic parent,  List<dynamic>? children,  List<LessonHierarchy>? hierarchy,  List<LessonArticle>? articles,  LessonPagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonCategoryWithArticles() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.parent,_that.children,_that.hierarchy,_that.articles,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos,  dynamic parent,  List<dynamic>? children,  List<LessonHierarchy>? hierarchy,  List<LessonArticle>? articles,  LessonPagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _LessonCategoryWithArticles():
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.parent,_that.children,_that.hierarchy,_that.articles,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos,  dynamic parent,  List<dynamic>? children,  List<LessonHierarchy>? hierarchy,  List<LessonArticle>? articles,  LessonPagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _LessonCategoryWithArticles() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.parent,_that.children,_that.hierarchy,_that.articles,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonCategoryWithArticles implements LessonCategoryWithArticles {
  const _LessonCategoryWithArticles({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt) this.catPos, this.parent, final  List<dynamic>? children, final  List<LessonHierarchy>? hierarchy, final  List<LessonArticle>? articles, this.pagination}): _children = children,_hierarchy = hierarchy,_articles = articles;
  factory _LessonCategoryWithArticles.fromJson(Map<String, dynamic> json) => _$LessonCategoryWithArticlesFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_pos', fromJson: _stringToInt) final  int? catPos;
@override final  dynamic parent;
 final  List<dynamic>? _children;
@override List<dynamic>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<LessonHierarchy>? _hierarchy;
@override List<LessonHierarchy>? get hierarchy {
  final value = _hierarchy;
  if (value == null) return null;
  if (_hierarchy is EqualUnmodifiableListView) return _hierarchy;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<LessonArticle>? _articles;
@override List<LessonArticle>? get articles {
  final value = _articles;
  if (value == null) return null;
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  LessonPagination? pagination;

/// Create a copy of LessonCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonCategoryWithArticlesCopyWith<_LessonCategoryWithArticles> get copyWith => __$LessonCategoryWithArticlesCopyWithImpl<_LessonCategoryWithArticles>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonCategoryWithArticlesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonCategoryWithArticles&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other._children, _children)&&const DeepCollectionEquality().equals(other._hierarchy, _hierarchy)&&const DeepCollectionEquality().equals(other._articles, _articles)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(_children),const DeepCollectionEquality().hash(_hierarchy),const DeepCollectionEquality().hash(_articles),pagination);

@override
String toString() {
  return 'LessonCategoryWithArticles(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, parent: $parent, children: $children, hierarchy: $hierarchy, articles: $articles, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$LessonCategoryWithArticlesCopyWith<$Res> implements $LessonCategoryWithArticlesCopyWith<$Res> {
  factory _$LessonCategoryWithArticlesCopyWith(_LessonCategoryWithArticles value, $Res Function(_LessonCategoryWithArticles) _then) = __$LessonCategoryWithArticlesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos, dynamic parent, List<dynamic>? children, List<LessonHierarchy>? hierarchy, List<LessonArticle>? articles, LessonPagination? pagination
});


@override $LessonPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$LessonCategoryWithArticlesCopyWithImpl<$Res>
    implements _$LessonCategoryWithArticlesCopyWith<$Res> {
  __$LessonCategoryWithArticlesCopyWithImpl(this._self, this._then);

  final _LessonCategoryWithArticles _self;
  final $Res Function(_LessonCategoryWithArticles) _then;

/// Create a copy of LessonCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? parent = freezed,Object? children = freezed,Object? hierarchy = freezed,Object? articles = freezed,Object? pagination = freezed,}) {
  return _then(_LessonCategoryWithArticles(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as int?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as dynamic,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,hierarchy: freezed == hierarchy ? _self._hierarchy : hierarchy // ignore: cast_nullable_to_non_nullable
as List<LessonHierarchy>?,articles: freezed == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<LessonArticle>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as LessonPagination?,
  ));
}

/// Create a copy of LessonCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $LessonPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$LessonHierarchy {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'level', fromJson: _stringToInt) int? get level;
/// Create a copy of LessonHierarchy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonHierarchyCopyWith<LessonHierarchy> get copyWith => _$LessonHierarchyCopyWithImpl<LessonHierarchy>(this as LessonHierarchy, _$identity);

  /// Serializes this LessonHierarchy to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonHierarchy&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,level);

@override
String toString() {
  return 'LessonHierarchy(catId: $catId, catTitle: $catTitle, level: $level)';
}


}

/// @nodoc
abstract mixin class $LessonHierarchyCopyWith<$Res>  {
  factory $LessonHierarchyCopyWith(LessonHierarchy value, $Res Function(LessonHierarchy) _then) = _$LessonHierarchyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'level', fromJson: _stringToInt) int? level
});




}
/// @nodoc
class _$LessonHierarchyCopyWithImpl<$Res>
    implements $LessonHierarchyCopyWith<$Res> {
  _$LessonHierarchyCopyWithImpl(this._self, this._then);

  final LessonHierarchy _self;
  final $Res Function(LessonHierarchy) _then;

/// Create a copy of LessonHierarchy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? level = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonHierarchy].
extension LessonHierarchyPatterns on LessonHierarchy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonHierarchy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonHierarchy() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonHierarchy value)  $default,){
final _that = this;
switch (_that) {
case _LessonHierarchy():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonHierarchy value)?  $default,){
final _that = this;
switch (_that) {
case _LessonHierarchy() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'level', fromJson: _stringToInt)  int? level)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonHierarchy() when $default != null:
return $default(_that.catId,_that.catTitle,_that.level);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'level', fromJson: _stringToInt)  int? level)  $default,) {final _that = this;
switch (_that) {
case _LessonHierarchy():
return $default(_that.catId,_that.catTitle,_that.level);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'level', fromJson: _stringToInt)  int? level)?  $default,) {final _that = this;
switch (_that) {
case _LessonHierarchy() when $default != null:
return $default(_that.catId,_that.catTitle,_that.level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonHierarchy implements LessonHierarchy {
  const _LessonHierarchy({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'level', fromJson: _stringToInt) this.level});
  factory _LessonHierarchy.fromJson(Map<String, dynamic> json) => _$LessonHierarchyFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'level', fromJson: _stringToInt) final  int? level;

/// Create a copy of LessonHierarchy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonHierarchyCopyWith<_LessonHierarchy> get copyWith => __$LessonHierarchyCopyWithImpl<_LessonHierarchy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonHierarchyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonHierarchy&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,level);

@override
String toString() {
  return 'LessonHierarchy(catId: $catId, catTitle: $catTitle, level: $level)';
}


}

/// @nodoc
abstract mixin class _$LessonHierarchyCopyWith<$Res> implements $LessonHierarchyCopyWith<$Res> {
  factory _$LessonHierarchyCopyWith(_LessonHierarchy value, $Res Function(_LessonHierarchy) _then) = __$LessonHierarchyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'level', fromJson: _stringToInt) int? level
});




}
/// @nodoc
class __$LessonHierarchyCopyWithImpl<$Res>
    implements _$LessonHierarchyCopyWith<$Res> {
  __$LessonHierarchyCopyWithImpl(this._self, this._then);

  final _LessonHierarchy _self;
  final $Res Function(_LessonHierarchy) _then;

/// Create a copy of LessonHierarchy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? level = freezed,}) {
  return _then(_LessonHierarchy(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$LessonCategory {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? get catPos; dynamic get parent; List<dynamic>? get children;
/// Create a copy of LessonCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonCategoryCopyWith<LessonCategory> get copyWith => _$LessonCategoryCopyWithImpl<LessonCategory>(this as LessonCategory, _$identity);

  /// Serializes this LessonCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'LessonCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, parent: $parent, children: $children)';
}


}

/// @nodoc
abstract mixin class $LessonCategoryCopyWith<$Res>  {
  factory $LessonCategoryCopyWith(LessonCategory value, $Res Function(LessonCategory) _then) = _$LessonCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos, dynamic parent, List<dynamic>? children
});




}
/// @nodoc
class _$LessonCategoryCopyWithImpl<$Res>
    implements $LessonCategoryCopyWith<$Res> {
  _$LessonCategoryCopyWithImpl(this._self, this._then);

  final LessonCategory _self;
  final $Res Function(LessonCategory) _then;

/// Create a copy of LessonCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? parent = freezed,Object? children = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as int?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as dynamic,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonCategory].
extension LessonCategoryPatterns on LessonCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonCategory value)  $default,){
final _that = this;
switch (_that) {
case _LessonCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonCategory value)?  $default,){
final _that = this;
switch (_that) {
case _LessonCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos,  dynamic parent,  List<dynamic>? children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.parent,_that.children);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos,  dynamic parent,  List<dynamic>? children)  $default,) {final _that = this;
switch (_that) {
case _LessonCategory():
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.parent,_that.children);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos,  dynamic parent,  List<dynamic>? children)?  $default,) {final _that = this;
switch (_that) {
case _LessonCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.parent,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonCategory implements LessonCategory {
  const _LessonCategory({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt) this.catPos, this.parent, final  List<dynamic>? children}): _children = children;
  factory _LessonCategory.fromJson(Map<String, dynamic> json) => _$LessonCategoryFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_pos', fromJson: _stringToInt) final  int? catPos;
@override final  dynamic parent;
 final  List<dynamic>? _children;
@override List<dynamic>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of LessonCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonCategoryCopyWith<_LessonCategory> get copyWith => __$LessonCategoryCopyWithImpl<_LessonCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'LessonCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, parent: $parent, children: $children)';
}


}

/// @nodoc
abstract mixin class _$LessonCategoryCopyWith<$Res> implements $LessonCategoryCopyWith<$Res> {
  factory _$LessonCategoryCopyWith(_LessonCategory value, $Res Function(_LessonCategory) _then) = __$LessonCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos, dynamic parent, List<dynamic>? children
});




}
/// @nodoc
class __$LessonCategoryCopyWithImpl<$Res>
    implements _$LessonCategoryCopyWith<$Res> {
  __$LessonCategoryCopyWithImpl(this._self, this._then);

  final _LessonCategory _self;
  final $Res Function(_LessonCategory) _then;

/// Create a copy of LessonCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? parent = freezed,Object? children = freezed,}) {
  return _then(_LessonCategory(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as int?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as dynamic,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}


/// @nodoc
mixin _$LessonArticle {

@JsonKey(name: 'article_id', fromJson: _stringToInt) int? get articleId;@JsonKey(name: 'article_title') String? get articleTitle;@JsonKey(name: 'article_summary') String? get articleSummary;@JsonKey(name: 'article_cat_id') String? get articleCatId;@JsonKey(name: 'article_pic') String? get articlePic;@JsonKey(name: 'article_visitor') String? get articleVisitor;@JsonKey(name: 'article_priority') String? get articlePriority;@JsonKey(name: 'article_date') String? get articleDate;@JsonKey(name: 'article_active') String? get articleActive; LessonArticleCategory? get category;
/// Create a copy of LessonArticle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonArticleCopyWith<LessonArticle> get copyWith => _$LessonArticleCopyWithImpl<LessonArticle>(this as LessonArticle, _$identity);

  /// Serializes this LessonArticle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonArticle&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articlePriority, articlePriority) || other.articlePriority == articlePriority)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articleActive, articleActive) || other.articleActive == articleActive)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleSummary,articleCatId,articlePic,articleVisitor,articlePriority,articleDate,articleActive,category);

@override
String toString() {
  return 'LessonArticle(articleId: $articleId, articleTitle: $articleTitle, articleSummary: $articleSummary, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articlePriority: $articlePriority, articleDate: $articleDate, articleActive: $articleActive, category: $category)';
}


}

/// @nodoc
abstract mixin class $LessonArticleCopyWith<$Res>  {
  factory $LessonArticleCopyWith(LessonArticle value, $Res Function(LessonArticle) _then) = _$LessonArticleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id') String? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor') String? articleVisitor,@JsonKey(name: 'article_priority') String? articlePriority,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_active') String? articleActive, LessonArticleCategory? category
});


$LessonArticleCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$LessonArticleCopyWithImpl<$Res>
    implements $LessonArticleCopyWith<$Res> {
  _$LessonArticleCopyWithImpl(this._self, this._then);

  final LessonArticle _self;
  final $Res Function(LessonArticle) _then;

/// Create a copy of LessonArticle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleSummary = freezed,Object? articleCatId = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articlePriority = freezed,Object? articleDate = freezed,Object? articleActive = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
articleId: freezed == articleId ? _self.articleId : articleId // ignore: cast_nullable_to_non_nullable
as int?,articleTitle: freezed == articleTitle ? _self.articleTitle : articleTitle // ignore: cast_nullable_to_non_nullable
as String?,articleSummary: freezed == articleSummary ? _self.articleSummary : articleSummary // ignore: cast_nullable_to_non_nullable
as String?,articleCatId: freezed == articleCatId ? _self.articleCatId : articleCatId // ignore: cast_nullable_to_non_nullable
as String?,articlePic: freezed == articlePic ? _self.articlePic : articlePic // ignore: cast_nullable_to_non_nullable
as String?,articleVisitor: freezed == articleVisitor ? _self.articleVisitor : articleVisitor // ignore: cast_nullable_to_non_nullable
as String?,articlePriority: freezed == articlePriority ? _self.articlePriority : articlePriority // ignore: cast_nullable_to_non_nullable
as String?,articleDate: freezed == articleDate ? _self.articleDate : articleDate // ignore: cast_nullable_to_non_nullable
as String?,articleActive: freezed == articleActive ? _self.articleActive : articleActive // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as LessonArticleCategory?,
  ));
}
/// Create a copy of LessonArticle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonArticleCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $LessonArticleCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [LessonArticle].
extension LessonArticlePatterns on LessonArticle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonArticle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonArticle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonArticle value)  $default,){
final _that = this;
switch (_that) {
case _LessonArticle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonArticle value)?  $default,){
final _that = this;
switch (_that) {
case _LessonArticle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id', fromJson: _stringToInt)  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_priority')  String? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active')  String? articleActive,  LessonArticleCategory? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonArticle() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articlePriority,_that.articleDate,_that.articleActive,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id', fromJson: _stringToInt)  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_priority')  String? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active')  String? articleActive,  LessonArticleCategory? category)  $default,) {final _that = this;
switch (_that) {
case _LessonArticle():
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articlePriority,_that.articleDate,_that.articleActive,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'article_id', fromJson: _stringToInt)  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_priority')  String? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active')  String? articleActive,  LessonArticleCategory? category)?  $default,) {final _that = this;
switch (_that) {
case _LessonArticle() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articlePriority,_that.articleDate,_that.articleActive,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonArticle implements LessonArticle {
  const _LessonArticle({@JsonKey(name: 'article_id', fromJson: _stringToInt) this.articleId, @JsonKey(name: 'article_title') this.articleTitle, @JsonKey(name: 'article_summary') this.articleSummary, @JsonKey(name: 'article_cat_id') this.articleCatId, @JsonKey(name: 'article_pic') this.articlePic, @JsonKey(name: 'article_visitor') this.articleVisitor, @JsonKey(name: 'article_priority') this.articlePriority, @JsonKey(name: 'article_date') this.articleDate, @JsonKey(name: 'article_active') this.articleActive, this.category});
  factory _LessonArticle.fromJson(Map<String, dynamic> json) => _$LessonArticleFromJson(json);

@override@JsonKey(name: 'article_id', fromJson: _stringToInt) final  int? articleId;
@override@JsonKey(name: 'article_title') final  String? articleTitle;
@override@JsonKey(name: 'article_summary') final  String? articleSummary;
@override@JsonKey(name: 'article_cat_id') final  String? articleCatId;
@override@JsonKey(name: 'article_pic') final  String? articlePic;
@override@JsonKey(name: 'article_visitor') final  String? articleVisitor;
@override@JsonKey(name: 'article_priority') final  String? articlePriority;
@override@JsonKey(name: 'article_date') final  String? articleDate;
@override@JsonKey(name: 'article_active') final  String? articleActive;
@override final  LessonArticleCategory? category;

/// Create a copy of LessonArticle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonArticleCopyWith<_LessonArticle> get copyWith => __$LessonArticleCopyWithImpl<_LessonArticle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonArticleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonArticle&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articlePriority, articlePriority) || other.articlePriority == articlePriority)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articleActive, articleActive) || other.articleActive == articleActive)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleSummary,articleCatId,articlePic,articleVisitor,articlePriority,articleDate,articleActive,category);

@override
String toString() {
  return 'LessonArticle(articleId: $articleId, articleTitle: $articleTitle, articleSummary: $articleSummary, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articlePriority: $articlePriority, articleDate: $articleDate, articleActive: $articleActive, category: $category)';
}


}

/// @nodoc
abstract mixin class _$LessonArticleCopyWith<$Res> implements $LessonArticleCopyWith<$Res> {
  factory _$LessonArticleCopyWith(_LessonArticle value, $Res Function(_LessonArticle) _then) = __$LessonArticleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id') String? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor') String? articleVisitor,@JsonKey(name: 'article_priority') String? articlePriority,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_active') String? articleActive, LessonArticleCategory? category
});


@override $LessonArticleCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$LessonArticleCopyWithImpl<$Res>
    implements _$LessonArticleCopyWith<$Res> {
  __$LessonArticleCopyWithImpl(this._self, this._then);

  final _LessonArticle _self;
  final $Res Function(_LessonArticle) _then;

/// Create a copy of LessonArticle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleSummary = freezed,Object? articleCatId = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articlePriority = freezed,Object? articleDate = freezed,Object? articleActive = freezed,Object? category = freezed,}) {
  return _then(_LessonArticle(
articleId: freezed == articleId ? _self.articleId : articleId // ignore: cast_nullable_to_non_nullable
as int?,articleTitle: freezed == articleTitle ? _self.articleTitle : articleTitle // ignore: cast_nullable_to_non_nullable
as String?,articleSummary: freezed == articleSummary ? _self.articleSummary : articleSummary // ignore: cast_nullable_to_non_nullable
as String?,articleCatId: freezed == articleCatId ? _self.articleCatId : articleCatId // ignore: cast_nullable_to_non_nullable
as String?,articlePic: freezed == articlePic ? _self.articlePic : articlePic // ignore: cast_nullable_to_non_nullable
as String?,articleVisitor: freezed == articleVisitor ? _self.articleVisitor : articleVisitor // ignore: cast_nullable_to_non_nullable
as String?,articlePriority: freezed == articlePriority ? _self.articlePriority : articlePriority // ignore: cast_nullable_to_non_nullable
as String?,articleDate: freezed == articleDate ? _self.articleDate : articleDate // ignore: cast_nullable_to_non_nullable
as String?,articleActive: freezed == articleActive ? _self.articleActive : articleActive // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as LessonArticleCategory?,
  ));
}

/// Create a copy of LessonArticle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonArticleCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $LessonArticleCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$LessonArticleCategory {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_father_id') String? get catFatherId;
/// Create a copy of LessonArticleCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonArticleCategoryCopyWith<LessonArticleCategory> get copyWith => _$LessonArticleCategoryCopyWithImpl<LessonArticleCategory>(this as LessonArticleCategory, _$identity);

  /// Serializes this LessonArticleCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonArticleCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catFatherId);

@override
String toString() {
  return 'LessonArticleCategory(catId: $catId, catTitle: $catTitle, catFatherId: $catFatherId)';
}


}

/// @nodoc
abstract mixin class $LessonArticleCategoryCopyWith<$Res>  {
  factory $LessonArticleCategoryCopyWith(LessonArticleCategory value, $Res Function(LessonArticleCategory) _then) = _$LessonArticleCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_father_id') String? catFatherId
});




}
/// @nodoc
class _$LessonArticleCategoryCopyWithImpl<$Res>
    implements $LessonArticleCategoryCopyWith<$Res> {
  _$LessonArticleCategoryCopyWithImpl(this._self, this._then);

  final LessonArticleCategory _self;
  final $Res Function(LessonArticleCategory) _then;

/// Create a copy of LessonArticleCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catFatherId = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catFatherId: freezed == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonArticleCategory].
extension LessonArticleCategoryPatterns on LessonArticleCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonArticleCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonArticleCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonArticleCategory value)  $default,){
final _that = this;
switch (_that) {
case _LessonArticleCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonArticleCategory value)?  $default,){
final _that = this;
switch (_that) {
case _LessonArticleCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_father_id')  String? catFatherId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonArticleCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catFatherId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_father_id')  String? catFatherId)  $default,) {final _that = this;
switch (_that) {
case _LessonArticleCategory():
return $default(_that.catId,_that.catTitle,_that.catFatherId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_father_id')  String? catFatherId)?  $default,) {final _that = this;
switch (_that) {
case _LessonArticleCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catFatherId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonArticleCategory implements LessonArticleCategory {
  const _LessonArticleCategory({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_father_id') this.catFatherId});
  factory _LessonArticleCategory.fromJson(Map<String, dynamic> json) => _$LessonArticleCategoryFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_father_id') final  String? catFatherId;

/// Create a copy of LessonArticleCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonArticleCategoryCopyWith<_LessonArticleCategory> get copyWith => __$LessonArticleCategoryCopyWithImpl<_LessonArticleCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonArticleCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonArticleCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catFatherId);

@override
String toString() {
  return 'LessonArticleCategory(catId: $catId, catTitle: $catTitle, catFatherId: $catFatherId)';
}


}

/// @nodoc
abstract mixin class _$LessonArticleCategoryCopyWith<$Res> implements $LessonArticleCategoryCopyWith<$Res> {
  factory _$LessonArticleCategoryCopyWith(_LessonArticleCategory value, $Res Function(_LessonArticleCategory) _then) = __$LessonArticleCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_father_id') String? catFatherId
});




}
/// @nodoc
class __$LessonArticleCategoryCopyWithImpl<$Res>
    implements _$LessonArticleCategoryCopyWith<$Res> {
  __$LessonArticleCategoryCopyWithImpl(this._self, this._then);

  final _LessonArticleCategory _self;
  final $Res Function(_LessonArticleCategory) _then;

/// Create a copy of LessonArticleCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catFatherId = freezed,}) {
  return _then(_LessonArticleCategory(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catFatherId: freezed == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LessonMeta {

 LessonStatistics? get statistics;@JsonKey(name: 'response_info') LessonResponseInfo? get responseInfo;
/// Create a copy of LessonMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonMetaCopyWith<LessonMeta> get copyWith => _$LessonMetaCopyWithImpl<LessonMeta>(this as LessonMeta, _$identity);

  /// Serializes this LessonMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonMeta&&(identical(other.statistics, statistics) || other.statistics == statistics)&&(identical(other.responseInfo, responseInfo) || other.responseInfo == responseInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statistics,responseInfo);

@override
String toString() {
  return 'LessonMeta(statistics: $statistics, responseInfo: $responseInfo)';
}


}

/// @nodoc
abstract mixin class $LessonMetaCopyWith<$Res>  {
  factory $LessonMetaCopyWith(LessonMeta value, $Res Function(LessonMeta) _then) = _$LessonMetaCopyWithImpl;
@useResult
$Res call({
 LessonStatistics? statistics,@JsonKey(name: 'response_info') LessonResponseInfo? responseInfo
});


$LessonStatisticsCopyWith<$Res>? get statistics;$LessonResponseInfoCopyWith<$Res>? get responseInfo;

}
/// @nodoc
class _$LessonMetaCopyWithImpl<$Res>
    implements $LessonMetaCopyWith<$Res> {
  _$LessonMetaCopyWithImpl(this._self, this._then);

  final LessonMeta _self;
  final $Res Function(LessonMeta) _then;

/// Create a copy of LessonMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statistics = freezed,Object? responseInfo = freezed,}) {
  return _then(_self.copyWith(
statistics: freezed == statistics ? _self.statistics : statistics // ignore: cast_nullable_to_non_nullable
as LessonStatistics?,responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as LessonResponseInfo?,
  ));
}
/// Create a copy of LessonMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonStatisticsCopyWith<$Res>? get statistics {
    if (_self.statistics == null) {
    return null;
  }

  return $LessonStatisticsCopyWith<$Res>(_self.statistics!, (value) {
    return _then(_self.copyWith(statistics: value));
  });
}/// Create a copy of LessonMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonResponseInfoCopyWith<$Res>? get responseInfo {
    if (_self.responseInfo == null) {
    return null;
  }

  return $LessonResponseInfoCopyWith<$Res>(_self.responseInfo!, (value) {
    return _then(_self.copyWith(responseInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [LessonMeta].
extension LessonMetaPatterns on LessonMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonMeta value)  $default,){
final _that = this;
switch (_that) {
case _LessonMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonMeta value)?  $default,){
final _that = this;
switch (_that) {
case _LessonMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LessonStatistics? statistics, @JsonKey(name: 'response_info')  LessonResponseInfo? responseInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonMeta() when $default != null:
return $default(_that.statistics,_that.responseInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LessonStatistics? statistics, @JsonKey(name: 'response_info')  LessonResponseInfo? responseInfo)  $default,) {final _that = this;
switch (_that) {
case _LessonMeta():
return $default(_that.statistics,_that.responseInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LessonStatistics? statistics, @JsonKey(name: 'response_info')  LessonResponseInfo? responseInfo)?  $default,) {final _that = this;
switch (_that) {
case _LessonMeta() when $default != null:
return $default(_that.statistics,_that.responseInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonMeta implements LessonMeta {
  const _LessonMeta({this.statistics, @JsonKey(name: 'response_info') this.responseInfo});
  factory _LessonMeta.fromJson(Map<String, dynamic> json) => _$LessonMetaFromJson(json);

@override final  LessonStatistics? statistics;
@override@JsonKey(name: 'response_info') final  LessonResponseInfo? responseInfo;

/// Create a copy of LessonMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonMetaCopyWith<_LessonMeta> get copyWith => __$LessonMetaCopyWithImpl<_LessonMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonMeta&&(identical(other.statistics, statistics) || other.statistics == statistics)&&(identical(other.responseInfo, responseInfo) || other.responseInfo == responseInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statistics,responseInfo);

@override
String toString() {
  return 'LessonMeta(statistics: $statistics, responseInfo: $responseInfo)';
}


}

/// @nodoc
abstract mixin class _$LessonMetaCopyWith<$Res> implements $LessonMetaCopyWith<$Res> {
  factory _$LessonMetaCopyWith(_LessonMeta value, $Res Function(_LessonMeta) _then) = __$LessonMetaCopyWithImpl;
@override @useResult
$Res call({
 LessonStatistics? statistics,@JsonKey(name: 'response_info') LessonResponseInfo? responseInfo
});


@override $LessonStatisticsCopyWith<$Res>? get statistics;@override $LessonResponseInfoCopyWith<$Res>? get responseInfo;

}
/// @nodoc
class __$LessonMetaCopyWithImpl<$Res>
    implements _$LessonMetaCopyWith<$Res> {
  __$LessonMetaCopyWithImpl(this._self, this._then);

  final _LessonMeta _self;
  final $Res Function(_LessonMeta) _then;

/// Create a copy of LessonMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statistics = freezed,Object? responseInfo = freezed,}) {
  return _then(_LessonMeta(
statistics: freezed == statistics ? _self.statistics : statistics // ignore: cast_nullable_to_non_nullable
as LessonStatistics?,responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as LessonResponseInfo?,
  ));
}

/// Create a copy of LessonMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonStatisticsCopyWith<$Res>? get statistics {
    if (_self.statistics == null) {
    return null;
  }

  return $LessonStatisticsCopyWith<$Res>(_self.statistics!, (value) {
    return _then(_self.copyWith(statistics: value));
  });
}/// Create a copy of LessonMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonResponseInfoCopyWith<$Res>? get responseInfo {
    if (_self.responseInfo == null) {
    return null;
  }

  return $LessonResponseInfoCopyWith<$Res>(_self.responseInfo!, (value) {
    return _then(_self.copyWith(responseInfo: value));
  });
}
}


/// @nodoc
mixin _$LessonStatistics {

@JsonKey(name: 'total_categories', fromJson: _stringToInt) int? get totalCategories;@JsonKey(name: 'total_child_categories', fromJson: _stringToInt) int? get totalChildCategories;@JsonKey(name: 'requested_category_ids') List<int>? get requestedCategoryIds;@JsonKey(name: 'all_category_ids_included') List<int>? get allCategoryIdsIncluded;@JsonKey(name: 'has_parent_categories') bool? get hasParentCategories;
/// Create a copy of LessonStatistics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonStatisticsCopyWith<LessonStatistics> get copyWith => _$LessonStatisticsCopyWithImpl<LessonStatistics>(this as LessonStatistics, _$identity);

  /// Serializes this LessonStatistics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonStatistics&&(identical(other.totalCategories, totalCategories) || other.totalCategories == totalCategories)&&(identical(other.totalChildCategories, totalChildCategories) || other.totalChildCategories == totalChildCategories)&&const DeepCollectionEquality().equals(other.requestedCategoryIds, requestedCategoryIds)&&const DeepCollectionEquality().equals(other.allCategoryIdsIncluded, allCategoryIdsIncluded)&&(identical(other.hasParentCategories, hasParentCategories) || other.hasParentCategories == hasParentCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCategories,totalChildCategories,const DeepCollectionEquality().hash(requestedCategoryIds),const DeepCollectionEquality().hash(allCategoryIdsIncluded),hasParentCategories);

@override
String toString() {
  return 'LessonStatistics(totalCategories: $totalCategories, totalChildCategories: $totalChildCategories, requestedCategoryIds: $requestedCategoryIds, allCategoryIdsIncluded: $allCategoryIdsIncluded, hasParentCategories: $hasParentCategories)';
}


}

/// @nodoc
abstract mixin class $LessonStatisticsCopyWith<$Res>  {
  factory $LessonStatisticsCopyWith(LessonStatistics value, $Res Function(LessonStatistics) _then) = _$LessonStatisticsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_categories', fromJson: _stringToInt) int? totalCategories,@JsonKey(name: 'total_child_categories', fromJson: _stringToInt) int? totalChildCategories,@JsonKey(name: 'requested_category_ids') List<int>? requestedCategoryIds,@JsonKey(name: 'all_category_ids_included') List<int>? allCategoryIdsIncluded,@JsonKey(name: 'has_parent_categories') bool? hasParentCategories
});




}
/// @nodoc
class _$LessonStatisticsCopyWithImpl<$Res>
    implements $LessonStatisticsCopyWith<$Res> {
  _$LessonStatisticsCopyWithImpl(this._self, this._then);

  final LessonStatistics _self;
  final $Res Function(LessonStatistics) _then;

/// Create a copy of LessonStatistics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCategories = freezed,Object? totalChildCategories = freezed,Object? requestedCategoryIds = freezed,Object? allCategoryIdsIncluded = freezed,Object? hasParentCategories = freezed,}) {
  return _then(_self.copyWith(
totalCategories: freezed == totalCategories ? _self.totalCategories : totalCategories // ignore: cast_nullable_to_non_nullable
as int?,totalChildCategories: freezed == totalChildCategories ? _self.totalChildCategories : totalChildCategories // ignore: cast_nullable_to_non_nullable
as int?,requestedCategoryIds: freezed == requestedCategoryIds ? _self.requestedCategoryIds : requestedCategoryIds // ignore: cast_nullable_to_non_nullable
as List<int>?,allCategoryIdsIncluded: freezed == allCategoryIdsIncluded ? _self.allCategoryIdsIncluded : allCategoryIdsIncluded // ignore: cast_nullable_to_non_nullable
as List<int>?,hasParentCategories: freezed == hasParentCategories ? _self.hasParentCategories : hasParentCategories // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonStatistics].
extension LessonStatisticsPatterns on LessonStatistics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonStatistics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonStatistics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonStatistics value)  $default,){
final _that = this;
switch (_that) {
case _LessonStatistics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonStatistics value)?  $default,){
final _that = this;
switch (_that) {
case _LessonStatistics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_categories', fromJson: _stringToInt)  int? totalCategories, @JsonKey(name: 'total_child_categories', fromJson: _stringToInt)  int? totalChildCategories, @JsonKey(name: 'requested_category_ids')  List<int>? requestedCategoryIds, @JsonKey(name: 'all_category_ids_included')  List<int>? allCategoryIdsIncluded, @JsonKey(name: 'has_parent_categories')  bool? hasParentCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonStatistics() when $default != null:
return $default(_that.totalCategories,_that.totalChildCategories,_that.requestedCategoryIds,_that.allCategoryIdsIncluded,_that.hasParentCategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_categories', fromJson: _stringToInt)  int? totalCategories, @JsonKey(name: 'total_child_categories', fromJson: _stringToInt)  int? totalChildCategories, @JsonKey(name: 'requested_category_ids')  List<int>? requestedCategoryIds, @JsonKey(name: 'all_category_ids_included')  List<int>? allCategoryIdsIncluded, @JsonKey(name: 'has_parent_categories')  bool? hasParentCategories)  $default,) {final _that = this;
switch (_that) {
case _LessonStatistics():
return $default(_that.totalCategories,_that.totalChildCategories,_that.requestedCategoryIds,_that.allCategoryIdsIncluded,_that.hasParentCategories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_categories', fromJson: _stringToInt)  int? totalCategories, @JsonKey(name: 'total_child_categories', fromJson: _stringToInt)  int? totalChildCategories, @JsonKey(name: 'requested_category_ids')  List<int>? requestedCategoryIds, @JsonKey(name: 'all_category_ids_included')  List<int>? allCategoryIdsIncluded, @JsonKey(name: 'has_parent_categories')  bool? hasParentCategories)?  $default,) {final _that = this;
switch (_that) {
case _LessonStatistics() when $default != null:
return $default(_that.totalCategories,_that.totalChildCategories,_that.requestedCategoryIds,_that.allCategoryIdsIncluded,_that.hasParentCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonStatistics implements LessonStatistics {
  const _LessonStatistics({@JsonKey(name: 'total_categories', fromJson: _stringToInt) this.totalCategories, @JsonKey(name: 'total_child_categories', fromJson: _stringToInt) this.totalChildCategories, @JsonKey(name: 'requested_category_ids') final  List<int>? requestedCategoryIds, @JsonKey(name: 'all_category_ids_included') final  List<int>? allCategoryIdsIncluded, @JsonKey(name: 'has_parent_categories') this.hasParentCategories}): _requestedCategoryIds = requestedCategoryIds,_allCategoryIdsIncluded = allCategoryIdsIncluded;
  factory _LessonStatistics.fromJson(Map<String, dynamic> json) => _$LessonStatisticsFromJson(json);

@override@JsonKey(name: 'total_categories', fromJson: _stringToInt) final  int? totalCategories;
@override@JsonKey(name: 'total_child_categories', fromJson: _stringToInt) final  int? totalChildCategories;
 final  List<int>? _requestedCategoryIds;
@override@JsonKey(name: 'requested_category_ids') List<int>? get requestedCategoryIds {
  final value = _requestedCategoryIds;
  if (value == null) return null;
  if (_requestedCategoryIds is EqualUnmodifiableListView) return _requestedCategoryIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _allCategoryIdsIncluded;
@override@JsonKey(name: 'all_category_ids_included') List<int>? get allCategoryIdsIncluded {
  final value = _allCategoryIdsIncluded;
  if (value == null) return null;
  if (_allCategoryIdsIncluded is EqualUnmodifiableListView) return _allCategoryIdsIncluded;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'has_parent_categories') final  bool? hasParentCategories;

/// Create a copy of LessonStatistics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonStatisticsCopyWith<_LessonStatistics> get copyWith => __$LessonStatisticsCopyWithImpl<_LessonStatistics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonStatisticsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonStatistics&&(identical(other.totalCategories, totalCategories) || other.totalCategories == totalCategories)&&(identical(other.totalChildCategories, totalChildCategories) || other.totalChildCategories == totalChildCategories)&&const DeepCollectionEquality().equals(other._requestedCategoryIds, _requestedCategoryIds)&&const DeepCollectionEquality().equals(other._allCategoryIdsIncluded, _allCategoryIdsIncluded)&&(identical(other.hasParentCategories, hasParentCategories) || other.hasParentCategories == hasParentCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCategories,totalChildCategories,const DeepCollectionEquality().hash(_requestedCategoryIds),const DeepCollectionEquality().hash(_allCategoryIdsIncluded),hasParentCategories);

@override
String toString() {
  return 'LessonStatistics(totalCategories: $totalCategories, totalChildCategories: $totalChildCategories, requestedCategoryIds: $requestedCategoryIds, allCategoryIdsIncluded: $allCategoryIdsIncluded, hasParentCategories: $hasParentCategories)';
}


}

/// @nodoc
abstract mixin class _$LessonStatisticsCopyWith<$Res> implements $LessonStatisticsCopyWith<$Res> {
  factory _$LessonStatisticsCopyWith(_LessonStatistics value, $Res Function(_LessonStatistics) _then) = __$LessonStatisticsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_categories', fromJson: _stringToInt) int? totalCategories,@JsonKey(name: 'total_child_categories', fromJson: _stringToInt) int? totalChildCategories,@JsonKey(name: 'requested_category_ids') List<int>? requestedCategoryIds,@JsonKey(name: 'all_category_ids_included') List<int>? allCategoryIdsIncluded,@JsonKey(name: 'has_parent_categories') bool? hasParentCategories
});




}
/// @nodoc
class __$LessonStatisticsCopyWithImpl<$Res>
    implements _$LessonStatisticsCopyWith<$Res> {
  __$LessonStatisticsCopyWithImpl(this._self, this._then);

  final _LessonStatistics _self;
  final $Res Function(_LessonStatistics) _then;

/// Create a copy of LessonStatistics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCategories = freezed,Object? totalChildCategories = freezed,Object? requestedCategoryIds = freezed,Object? allCategoryIdsIncluded = freezed,Object? hasParentCategories = freezed,}) {
  return _then(_LessonStatistics(
totalCategories: freezed == totalCategories ? _self.totalCategories : totalCategories // ignore: cast_nullable_to_non_nullable
as int?,totalChildCategories: freezed == totalChildCategories ? _self.totalChildCategories : totalChildCategories // ignore: cast_nullable_to_non_nullable
as int?,requestedCategoryIds: freezed == requestedCategoryIds ? _self._requestedCategoryIds : requestedCategoryIds // ignore: cast_nullable_to_non_nullable
as List<int>?,allCategoryIdsIncluded: freezed == allCategoryIdsIncluded ? _self._allCategoryIdsIncluded : allCategoryIdsIncluded // ignore: cast_nullable_to_non_nullable
as List<int>?,hasParentCategories: freezed == hasParentCategories ? _self.hasParentCategories : hasParentCategories // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$LessonResponseInfo {

 String? get timestamp;@JsonKey(name: 'api_version') String? get apiVersion;@JsonKey(name: 'endpoint') String? get endpoint;@JsonKey(name: 'content_type') String? get contentType;
/// Create a copy of LessonResponseInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonResponseInfoCopyWith<LessonResponseInfo> get copyWith => _$LessonResponseInfoCopyWithImpl<LessonResponseInfo>(this as LessonResponseInfo, _$identity);

  /// Serializes this LessonResponseInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonResponseInfo&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,apiVersion,endpoint,contentType);

@override
String toString() {
  return 'LessonResponseInfo(timestamp: $timestamp, apiVersion: $apiVersion, endpoint: $endpoint, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class $LessonResponseInfoCopyWith<$Res>  {
  factory $LessonResponseInfoCopyWith(LessonResponseInfo value, $Res Function(LessonResponseInfo) _then) = _$LessonResponseInfoCopyWithImpl;
@useResult
$Res call({
 String? timestamp,@JsonKey(name: 'api_version') String? apiVersion,@JsonKey(name: 'endpoint') String? endpoint,@JsonKey(name: 'content_type') String? contentType
});




}
/// @nodoc
class _$LessonResponseInfoCopyWithImpl<$Res>
    implements $LessonResponseInfoCopyWith<$Res> {
  _$LessonResponseInfoCopyWithImpl(this._self, this._then);

  final LessonResponseInfo _self;
  final $Res Function(LessonResponseInfo) _then;

/// Create a copy of LessonResponseInfo
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


/// Adds pattern-matching-related methods to [LessonResponseInfo].
extension LessonResponseInfoPatterns on LessonResponseInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonResponseInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonResponseInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonResponseInfo value)  $default,){
final _that = this;
switch (_that) {
case _LessonResponseInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonResponseInfo value)?  $default,){
final _that = this;
switch (_that) {
case _LessonResponseInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? timestamp, @JsonKey(name: 'api_version')  String? apiVersion, @JsonKey(name: 'endpoint')  String? endpoint, @JsonKey(name: 'content_type')  String? contentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonResponseInfo() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? timestamp, @JsonKey(name: 'api_version')  String? apiVersion, @JsonKey(name: 'endpoint')  String? endpoint, @JsonKey(name: 'content_type')  String? contentType)  $default,) {final _that = this;
switch (_that) {
case _LessonResponseInfo():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? timestamp, @JsonKey(name: 'api_version')  String? apiVersion, @JsonKey(name: 'endpoint')  String? endpoint, @JsonKey(name: 'content_type')  String? contentType)?  $default,) {final _that = this;
switch (_that) {
case _LessonResponseInfo() when $default != null:
return $default(_that.timestamp,_that.apiVersion,_that.endpoint,_that.contentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonResponseInfo implements LessonResponseInfo {
  const _LessonResponseInfo({this.timestamp, @JsonKey(name: 'api_version') this.apiVersion, @JsonKey(name: 'endpoint') this.endpoint, @JsonKey(name: 'content_type') this.contentType});
  factory _LessonResponseInfo.fromJson(Map<String, dynamic> json) => _$LessonResponseInfoFromJson(json);

@override final  String? timestamp;
@override@JsonKey(name: 'api_version') final  String? apiVersion;
@override@JsonKey(name: 'endpoint') final  String? endpoint;
@override@JsonKey(name: 'content_type') final  String? contentType;

/// Create a copy of LessonResponseInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonResponseInfoCopyWith<_LessonResponseInfo> get copyWith => __$LessonResponseInfoCopyWithImpl<_LessonResponseInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonResponseInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonResponseInfo&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,apiVersion,endpoint,contentType);

@override
String toString() {
  return 'LessonResponseInfo(timestamp: $timestamp, apiVersion: $apiVersion, endpoint: $endpoint, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class _$LessonResponseInfoCopyWith<$Res> implements $LessonResponseInfoCopyWith<$Res> {
  factory _$LessonResponseInfoCopyWith(_LessonResponseInfo value, $Res Function(_LessonResponseInfo) _then) = __$LessonResponseInfoCopyWithImpl;
@override @useResult
$Res call({
 String? timestamp,@JsonKey(name: 'api_version') String? apiVersion,@JsonKey(name: 'endpoint') String? endpoint,@JsonKey(name: 'content_type') String? contentType
});




}
/// @nodoc
class __$LessonResponseInfoCopyWithImpl<$Res>
    implements _$LessonResponseInfoCopyWith<$Res> {
  __$LessonResponseInfoCopyWithImpl(this._self, this._then);

  final _LessonResponseInfo _self;
  final $Res Function(_LessonResponseInfo) _then;

/// Create a copy of LessonResponseInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = freezed,Object? apiVersion = freezed,Object? endpoint = freezed,Object? contentType = freezed,}) {
  return _then(_LessonResponseInfo(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,apiVersion: freezed == apiVersion ? _self.apiVersion : apiVersion // ignore: cast_nullable_to_non_nullable
as String?,endpoint: freezed == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LessonPagination {

@JsonKey(name: 'total', fromJson: _stringToInt) int? get total;@JsonKey(name: 'count', fromJson: _stringToInt) int? get count;@JsonKey(name: 'per_page', fromJson: _stringToInt) int? get perPage;@JsonKey(name: 'current_page', fromJson: _stringToInt) int? get currentPage;@JsonKey(name: 'last_page', fromJson: _stringToInt) int? get lastPage;@JsonKey(name: 'from', fromJson: _stringToInt) int? get from;@JsonKey(name: 'to', fromJson: _stringToInt) int? get to;
/// Create a copy of LessonPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonPaginationCopyWith<LessonPagination> get copyWith => _$LessonPaginationCopyWithImpl<LessonPagination>(this as LessonPagination, _$identity);

  /// Serializes this LessonPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'LessonPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $LessonPaginationCopyWith<$Res>  {
  factory $LessonPaginationCopyWith(LessonPagination value, $Res Function(LessonPagination) _then) = _$LessonPaginationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total', fromJson: _stringToInt) int? total,@JsonKey(name: 'count', fromJson: _stringToInt) int? count,@JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,@JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,@JsonKey(name: 'last_page', fromJson: _stringToInt) int? lastPage,@JsonKey(name: 'from', fromJson: _stringToInt) int? from,@JsonKey(name: 'to', fromJson: _stringToInt) int? to
});




}
/// @nodoc
class _$LessonPaginationCopyWithImpl<$Res>
    implements $LessonPaginationCopyWith<$Res> {
  _$LessonPaginationCopyWithImpl(this._self, this._then);

  final LessonPagination _self;
  final $Res Function(LessonPagination) _then;

/// Create a copy of LessonPagination
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


/// Adds pattern-matching-related methods to [LessonPagination].
extension LessonPaginationPatterns on LessonPagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonPagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonPagination value)  $default,){
final _that = this;
switch (_that) {
case _LessonPagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonPagination value)?  $default,){
final _that = this;
switch (_that) {
case _LessonPagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total', fromJson: _stringToInt)  int? total, @JsonKey(name: 'count', fromJson: _stringToInt)  int? count, @JsonKey(name: 'per_page', fromJson: _stringToInt)  int? perPage, @JsonKey(name: 'current_page', fromJson: _stringToInt)  int? currentPage, @JsonKey(name: 'last_page', fromJson: _stringToInt)  int? lastPage, @JsonKey(name: 'from', fromJson: _stringToInt)  int? from, @JsonKey(name: 'to', fromJson: _stringToInt)  int? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonPagination() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total', fromJson: _stringToInt)  int? total, @JsonKey(name: 'count', fromJson: _stringToInt)  int? count, @JsonKey(name: 'per_page', fromJson: _stringToInt)  int? perPage, @JsonKey(name: 'current_page', fromJson: _stringToInt)  int? currentPage, @JsonKey(name: 'last_page', fromJson: _stringToInt)  int? lastPage, @JsonKey(name: 'from', fromJson: _stringToInt)  int? from, @JsonKey(name: 'to', fromJson: _stringToInt)  int? to)  $default,) {final _that = this;
switch (_that) {
case _LessonPagination():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total', fromJson: _stringToInt)  int? total, @JsonKey(name: 'count', fromJson: _stringToInt)  int? count, @JsonKey(name: 'per_page', fromJson: _stringToInt)  int? perPage, @JsonKey(name: 'current_page', fromJson: _stringToInt)  int? currentPage, @JsonKey(name: 'last_page', fromJson: _stringToInt)  int? lastPage, @JsonKey(name: 'from', fromJson: _stringToInt)  int? from, @JsonKey(name: 'to', fromJson: _stringToInt)  int? to)?  $default,) {final _that = this;
switch (_that) {
case _LessonPagination() when $default != null:
return $default(_that.total,_that.count,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonPagination implements LessonPagination {
  const _LessonPagination({@JsonKey(name: 'total', fromJson: _stringToInt) this.total, @JsonKey(name: 'count', fromJson: _stringToInt) this.count, @JsonKey(name: 'per_page', fromJson: _stringToInt) this.perPage, @JsonKey(name: 'current_page', fromJson: _stringToInt) this.currentPage, @JsonKey(name: 'last_page', fromJson: _stringToInt) this.lastPage, @JsonKey(name: 'from', fromJson: _stringToInt) this.from, @JsonKey(name: 'to', fromJson: _stringToInt) this.to});
  factory _LessonPagination.fromJson(Map<String, dynamic> json) => _$LessonPaginationFromJson(json);

@override@JsonKey(name: 'total', fromJson: _stringToInt) final  int? total;
@override@JsonKey(name: 'count', fromJson: _stringToInt) final  int? count;
@override@JsonKey(name: 'per_page', fromJson: _stringToInt) final  int? perPage;
@override@JsonKey(name: 'current_page', fromJson: _stringToInt) final  int? currentPage;
@override@JsonKey(name: 'last_page', fromJson: _stringToInt) final  int? lastPage;
@override@JsonKey(name: 'from', fromJson: _stringToInt) final  int? from;
@override@JsonKey(name: 'to', fromJson: _stringToInt) final  int? to;

/// Create a copy of LessonPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonPaginationCopyWith<_LessonPagination> get copyWith => __$LessonPaginationCopyWithImpl<_LessonPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'LessonPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$LessonPaginationCopyWith<$Res> implements $LessonPaginationCopyWith<$Res> {
  factory _$LessonPaginationCopyWith(_LessonPagination value, $Res Function(_LessonPagination) _then) = __$LessonPaginationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total', fromJson: _stringToInt) int? total,@JsonKey(name: 'count', fromJson: _stringToInt) int? count,@JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,@JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,@JsonKey(name: 'last_page', fromJson: _stringToInt) int? lastPage,@JsonKey(name: 'from', fromJson: _stringToInt) int? from,@JsonKey(name: 'to', fromJson: _stringToInt) int? to
});




}
/// @nodoc
class __$LessonPaginationCopyWithImpl<$Res>
    implements _$LessonPaginationCopyWith<$Res> {
  __$LessonPaginationCopyWithImpl(this._self, this._then);

  final _LessonPagination _self;
  final $Res Function(_LessonPagination) _then;

/// Create a copy of LessonPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? count = freezed,Object? perPage = freezed,Object? currentPage = freezed,Object? lastPage = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_LessonPagination(
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
mixin _$LessonArticleDetailModel {

 String? get status; LessonArticleDetailData? get data;
/// Create a copy of LessonArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonArticleDetailModelCopyWith<LessonArticleDetailModel> get copyWith => _$LessonArticleDetailModelCopyWithImpl<LessonArticleDetailModel>(this as LessonArticleDetailModel, _$identity);

  /// Serializes this LessonArticleDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonArticleDetailModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'LessonArticleDetailModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $LessonArticleDetailModelCopyWith<$Res>  {
  factory $LessonArticleDetailModelCopyWith(LessonArticleDetailModel value, $Res Function(LessonArticleDetailModel) _then) = _$LessonArticleDetailModelCopyWithImpl;
@useResult
$Res call({
 String? status, LessonArticleDetailData? data
});


$LessonArticleDetailDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$LessonArticleDetailModelCopyWithImpl<$Res>
    implements $LessonArticleDetailModelCopyWith<$Res> {
  _$LessonArticleDetailModelCopyWithImpl(this._self, this._then);

  final LessonArticleDetailModel _self;
  final $Res Function(LessonArticleDetailModel) _then;

/// Create a copy of LessonArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LessonArticleDetailData?,
  ));
}
/// Create a copy of LessonArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonArticleDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $LessonArticleDetailDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [LessonArticleDetailModel].
extension LessonArticleDetailModelPatterns on LessonArticleDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonArticleDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonArticleDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonArticleDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _LessonArticleDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonArticleDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _LessonArticleDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  LessonArticleDetailData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonArticleDetailModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  LessonArticleDetailData? data)  $default,) {final _that = this;
switch (_that) {
case _LessonArticleDetailModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  LessonArticleDetailData? data)?  $default,) {final _that = this;
switch (_that) {
case _LessonArticleDetailModel() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonArticleDetailModel implements LessonArticleDetailModel {
  const _LessonArticleDetailModel({this.status, this.data});
  factory _LessonArticleDetailModel.fromJson(Map<String, dynamic> json) => _$LessonArticleDetailModelFromJson(json);

@override final  String? status;
@override final  LessonArticleDetailData? data;

/// Create a copy of LessonArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonArticleDetailModelCopyWith<_LessonArticleDetailModel> get copyWith => __$LessonArticleDetailModelCopyWithImpl<_LessonArticleDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonArticleDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonArticleDetailModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'LessonArticleDetailModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LessonArticleDetailModelCopyWith<$Res> implements $LessonArticleDetailModelCopyWith<$Res> {
  factory _$LessonArticleDetailModelCopyWith(_LessonArticleDetailModel value, $Res Function(_LessonArticleDetailModel) _then) = __$LessonArticleDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, LessonArticleDetailData? data
});


@override $LessonArticleDetailDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$LessonArticleDetailModelCopyWithImpl<$Res>
    implements _$LessonArticleDetailModelCopyWith<$Res> {
  __$LessonArticleDetailModelCopyWithImpl(this._self, this._then);

  final _LessonArticleDetailModel _self;
  final $Res Function(_LessonArticleDetailModel) _then;

/// Create a copy of LessonArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,}) {
  return _then(_LessonArticleDetailModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LessonArticleDetailData?,
  ));
}

/// Create a copy of LessonArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonArticleDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $LessonArticleDetailDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$LessonArticleDetailData {

@JsonKey(name: 'article_id', fromJson: _stringToInt) int? get articleId;@JsonKey(name: 'article_title') String? get articleTitle;@JsonKey(name: 'article_des') String? get articleDes;@JsonKey(name: 'article_summary') String? get articleSummary;@JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? get articleCatId;@JsonKey(name: 'article_pic') String? get articlePic;@JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? get articleVisitor;@JsonKey(name: 'article_priority', fromJson: _stringToInt) int? get articlePriority;@JsonKey(name: 'article_date') String? get articleDate;@JsonKey(name: 'article_active', fromJson: _stringToInt) int? get articleActive; LessonArticleDetailCategory? get category;
/// Create a copy of LessonArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonArticleDetailDataCopyWith<LessonArticleDetailData> get copyWith => _$LessonArticleDetailDataCopyWithImpl<LessonArticleDetailData>(this as LessonArticleDetailData, _$identity);

  /// Serializes this LessonArticleDetailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonArticleDetailData&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articlePriority, articlePriority) || other.articlePriority == articlePriority)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articleActive, articleActive) || other.articleActive == articleActive)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleDes,articleSummary,articleCatId,articlePic,articleVisitor,articlePriority,articleDate,articleActive,category);

@override
String toString() {
  return 'LessonArticleDetailData(articleId: $articleId, articleTitle: $articleTitle, articleDes: $articleDes, articleSummary: $articleSummary, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articlePriority: $articlePriority, articleDate: $articleDate, articleActive: $articleActive, category: $category)';
}


}

/// @nodoc
abstract mixin class $LessonArticleDetailDataCopyWith<$Res>  {
  factory $LessonArticleDetailDataCopyWith(LessonArticleDetailData value, $Res Function(LessonArticleDetailData) _then) = _$LessonArticleDetailDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? articleVisitor,@JsonKey(name: 'article_priority', fromJson: _stringToInt) int? articlePriority,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_active', fromJson: _stringToInt) int? articleActive, LessonArticleDetailCategory? category
});


$LessonArticleDetailCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$LessonArticleDetailDataCopyWithImpl<$Res>
    implements $LessonArticleDetailDataCopyWith<$Res> {
  _$LessonArticleDetailDataCopyWithImpl(this._self, this._then);

  final LessonArticleDetailData _self;
  final $Res Function(LessonArticleDetailData) _then;

/// Create a copy of LessonArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleDes = freezed,Object? articleSummary = freezed,Object? articleCatId = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articlePriority = freezed,Object? articleDate = freezed,Object? articleActive = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
articleId: freezed == articleId ? _self.articleId : articleId // ignore: cast_nullable_to_non_nullable
as int?,articleTitle: freezed == articleTitle ? _self.articleTitle : articleTitle // ignore: cast_nullable_to_non_nullable
as String?,articleDes: freezed == articleDes ? _self.articleDes : articleDes // ignore: cast_nullable_to_non_nullable
as String?,articleSummary: freezed == articleSummary ? _self.articleSummary : articleSummary // ignore: cast_nullable_to_non_nullable
as String?,articleCatId: freezed == articleCatId ? _self.articleCatId : articleCatId // ignore: cast_nullable_to_non_nullable
as int?,articlePic: freezed == articlePic ? _self.articlePic : articlePic // ignore: cast_nullable_to_non_nullable
as String?,articleVisitor: freezed == articleVisitor ? _self.articleVisitor : articleVisitor // ignore: cast_nullable_to_non_nullable
as int?,articlePriority: freezed == articlePriority ? _self.articlePriority : articlePriority // ignore: cast_nullable_to_non_nullable
as int?,articleDate: freezed == articleDate ? _self.articleDate : articleDate // ignore: cast_nullable_to_non_nullable
as String?,articleActive: freezed == articleActive ? _self.articleActive : articleActive // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as LessonArticleDetailCategory?,
  ));
}
/// Create a copy of LessonArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonArticleDetailCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $LessonArticleDetailCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [LessonArticleDetailData].
extension LessonArticleDetailDataPatterns on LessonArticleDetailData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonArticleDetailData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonArticleDetailData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonArticleDetailData value)  $default,){
final _that = this;
switch (_that) {
case _LessonArticleDetailData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonArticleDetailData value)?  $default,){
final _that = this;
switch (_that) {
case _LessonArticleDetailData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id', fromJson: _stringToInt)  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt)  int? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt)  int? articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt)  int? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt)  int? articleActive,  LessonArticleDetailCategory? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonArticleDetailData() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleDes,_that.articleSummary,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articlePriority,_that.articleDate,_that.articleActive,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id', fromJson: _stringToInt)  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt)  int? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt)  int? articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt)  int? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt)  int? articleActive,  LessonArticleDetailCategory? category)  $default,) {final _that = this;
switch (_that) {
case _LessonArticleDetailData():
return $default(_that.articleId,_that.articleTitle,_that.articleDes,_that.articleSummary,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articlePriority,_that.articleDate,_that.articleActive,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'article_id', fromJson: _stringToInt)  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt)  int? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt)  int? articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt)  int? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt)  int? articleActive,  LessonArticleDetailCategory? category)?  $default,) {final _that = this;
switch (_that) {
case _LessonArticleDetailData() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleDes,_that.articleSummary,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articlePriority,_that.articleDate,_that.articleActive,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonArticleDetailData implements LessonArticleDetailData {
  const _LessonArticleDetailData({@JsonKey(name: 'article_id', fromJson: _stringToInt) this.articleId, @JsonKey(name: 'article_title') this.articleTitle, @JsonKey(name: 'article_des') this.articleDes, @JsonKey(name: 'article_summary') this.articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt) this.articleCatId, @JsonKey(name: 'article_pic') this.articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt) this.articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt) this.articlePriority, @JsonKey(name: 'article_date') this.articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt) this.articleActive, this.category});
  factory _LessonArticleDetailData.fromJson(Map<String, dynamic> json) => _$LessonArticleDetailDataFromJson(json);

@override@JsonKey(name: 'article_id', fromJson: _stringToInt) final  int? articleId;
@override@JsonKey(name: 'article_title') final  String? articleTitle;
@override@JsonKey(name: 'article_des') final  String? articleDes;
@override@JsonKey(name: 'article_summary') final  String? articleSummary;
@override@JsonKey(name: 'article_cat_id', fromJson: _stringToInt) final  int? articleCatId;
@override@JsonKey(name: 'article_pic') final  String? articlePic;
@override@JsonKey(name: 'article_visitor', fromJson: _stringToInt) final  int? articleVisitor;
@override@JsonKey(name: 'article_priority', fromJson: _stringToInt) final  int? articlePriority;
@override@JsonKey(name: 'article_date') final  String? articleDate;
@override@JsonKey(name: 'article_active', fromJson: _stringToInt) final  int? articleActive;
@override final  LessonArticleDetailCategory? category;

/// Create a copy of LessonArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonArticleDetailDataCopyWith<_LessonArticleDetailData> get copyWith => __$LessonArticleDetailDataCopyWithImpl<_LessonArticleDetailData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonArticleDetailDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonArticleDetailData&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articlePriority, articlePriority) || other.articlePriority == articlePriority)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articleActive, articleActive) || other.articleActive == articleActive)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleDes,articleSummary,articleCatId,articlePic,articleVisitor,articlePriority,articleDate,articleActive,category);

@override
String toString() {
  return 'LessonArticleDetailData(articleId: $articleId, articleTitle: $articleTitle, articleDes: $articleDes, articleSummary: $articleSummary, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articlePriority: $articlePriority, articleDate: $articleDate, articleActive: $articleActive, category: $category)';
}


}

/// @nodoc
abstract mixin class _$LessonArticleDetailDataCopyWith<$Res> implements $LessonArticleDetailDataCopyWith<$Res> {
  factory _$LessonArticleDetailDataCopyWith(_LessonArticleDetailData value, $Res Function(_LessonArticleDetailData) _then) = __$LessonArticleDetailDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? articleVisitor,@JsonKey(name: 'article_priority', fromJson: _stringToInt) int? articlePriority,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_active', fromJson: _stringToInt) int? articleActive, LessonArticleDetailCategory? category
});


@override $LessonArticleDetailCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$LessonArticleDetailDataCopyWithImpl<$Res>
    implements _$LessonArticleDetailDataCopyWith<$Res> {
  __$LessonArticleDetailDataCopyWithImpl(this._self, this._then);

  final _LessonArticleDetailData _self;
  final $Res Function(_LessonArticleDetailData) _then;

/// Create a copy of LessonArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleDes = freezed,Object? articleSummary = freezed,Object? articleCatId = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articlePriority = freezed,Object? articleDate = freezed,Object? articleActive = freezed,Object? category = freezed,}) {
  return _then(_LessonArticleDetailData(
articleId: freezed == articleId ? _self.articleId : articleId // ignore: cast_nullable_to_non_nullable
as int?,articleTitle: freezed == articleTitle ? _self.articleTitle : articleTitle // ignore: cast_nullable_to_non_nullable
as String?,articleDes: freezed == articleDes ? _self.articleDes : articleDes // ignore: cast_nullable_to_non_nullable
as String?,articleSummary: freezed == articleSummary ? _self.articleSummary : articleSummary // ignore: cast_nullable_to_non_nullable
as String?,articleCatId: freezed == articleCatId ? _self.articleCatId : articleCatId // ignore: cast_nullable_to_non_nullable
as int?,articlePic: freezed == articlePic ? _self.articlePic : articlePic // ignore: cast_nullable_to_non_nullable
as String?,articleVisitor: freezed == articleVisitor ? _self.articleVisitor : articleVisitor // ignore: cast_nullable_to_non_nullable
as int?,articlePriority: freezed == articlePriority ? _self.articlePriority : articlePriority // ignore: cast_nullable_to_non_nullable
as int?,articleDate: freezed == articleDate ? _self.articleDate : articleDate // ignore: cast_nullable_to_non_nullable
as String?,articleActive: freezed == articleActive ? _self.articleActive : articleActive // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as LessonArticleDetailCategory?,
  ));
}

/// Create a copy of LessonArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonArticleDetailCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $LessonArticleDetailCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$LessonArticleDetailCategory {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? get catPos;@JsonKey(name: 'cat_father_id', fromJson: _stringToInt) int? get catFatherId;
/// Create a copy of LessonArticleDetailCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonArticleDetailCategoryCopyWith<LessonArticleDetailCategory> get copyWith => _$LessonArticleDetailCategoryCopyWithImpl<LessonArticleDetailCategory>(this as LessonArticleDetailCategory, _$identity);

  /// Serializes this LessonArticleDetailCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonArticleDetailCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,catFatherId);

@override
String toString() {
  return 'LessonArticleDetailCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catFatherId: $catFatherId)';
}


}

/// @nodoc
abstract mixin class $LessonArticleDetailCategoryCopyWith<$Res>  {
  factory $LessonArticleDetailCategoryCopyWith(LessonArticleDetailCategory value, $Res Function(LessonArticleDetailCategory) _then) = _$LessonArticleDetailCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,@JsonKey(name: 'cat_father_id', fromJson: _stringToInt) int? catFatherId
});




}
/// @nodoc
class _$LessonArticleDetailCategoryCopyWithImpl<$Res>
    implements $LessonArticleDetailCategoryCopyWith<$Res> {
  _$LessonArticleDetailCategoryCopyWithImpl(this._self, this._then);

  final LessonArticleDetailCategory _self;
  final $Res Function(LessonArticleDetailCategory) _then;

/// Create a copy of LessonArticleDetailCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? catFatherId = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as int?,catFatherId: freezed == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonArticleDetailCategory].
extension LessonArticleDetailCategoryPatterns on LessonArticleDetailCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonArticleDetailCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonArticleDetailCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonArticleDetailCategory value)  $default,){
final _that = this;
switch (_that) {
case _LessonArticleDetailCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonArticleDetailCategory value)?  $default,){
final _that = this;
switch (_that) {
case _LessonArticleDetailCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos, @JsonKey(name: 'cat_father_id', fromJson: _stringToInt)  int? catFatherId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonArticleDetailCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catFatherId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos, @JsonKey(name: 'cat_father_id', fromJson: _stringToInt)  int? catFatherId)  $default,) {final _that = this;
switch (_that) {
case _LessonArticleDetailCategory():
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catFatherId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos, @JsonKey(name: 'cat_father_id', fromJson: _stringToInt)  int? catFatherId)?  $default,) {final _that = this;
switch (_that) {
case _LessonArticleDetailCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catFatherId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonArticleDetailCategory implements LessonArticleDetailCategory {
  const _LessonArticleDetailCategory({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt) this.catPos, @JsonKey(name: 'cat_father_id', fromJson: _stringToInt) this.catFatherId});
  factory _LessonArticleDetailCategory.fromJson(Map<String, dynamic> json) => _$LessonArticleDetailCategoryFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_pos', fromJson: _stringToInt) final  int? catPos;
@override@JsonKey(name: 'cat_father_id', fromJson: _stringToInt) final  int? catFatherId;

/// Create a copy of LessonArticleDetailCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonArticleDetailCategoryCopyWith<_LessonArticleDetailCategory> get copyWith => __$LessonArticleDetailCategoryCopyWithImpl<_LessonArticleDetailCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonArticleDetailCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonArticleDetailCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,catFatherId);

@override
String toString() {
  return 'LessonArticleDetailCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catFatherId: $catFatherId)';
}


}

/// @nodoc
abstract mixin class _$LessonArticleDetailCategoryCopyWith<$Res> implements $LessonArticleDetailCategoryCopyWith<$Res> {
  factory _$LessonArticleDetailCategoryCopyWith(_LessonArticleDetailCategory value, $Res Function(_LessonArticleDetailCategory) _then) = __$LessonArticleDetailCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,@JsonKey(name: 'cat_father_id', fromJson: _stringToInt) int? catFatherId
});




}
/// @nodoc
class __$LessonArticleDetailCategoryCopyWithImpl<$Res>
    implements _$LessonArticleDetailCategoryCopyWith<$Res> {
  __$LessonArticleDetailCategoryCopyWithImpl(this._self, this._then);

  final _LessonArticleDetailCategory _self;
  final $Res Function(_LessonArticleDetailCategory) _then;

/// Create a copy of LessonArticleDetailCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? catFatherId = freezed,}) {
  return _then(_LessonArticleDetailCategory(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as int?,catFatherId: freezed == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
