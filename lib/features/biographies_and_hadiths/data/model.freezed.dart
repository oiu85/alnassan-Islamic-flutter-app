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
mixin _$BiographiesAndHadithsModel {

 String? get status; BiographiesData? get data; BiographiesMeta? get meta;
/// Create a copy of BiographiesAndHadithsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiographiesAndHadithsModelCopyWith<BiographiesAndHadithsModel> get copyWith => _$BiographiesAndHadithsModelCopyWithImpl<BiographiesAndHadithsModel>(this as BiographiesAndHadithsModel, _$identity);

  /// Serializes this BiographiesAndHadithsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiographiesAndHadithsModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,meta);

@override
String toString() {
  return 'BiographiesAndHadithsModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $BiographiesAndHadithsModelCopyWith<$Res>  {
  factory $BiographiesAndHadithsModelCopyWith(BiographiesAndHadithsModel value, $Res Function(BiographiesAndHadithsModel) _then) = _$BiographiesAndHadithsModelCopyWithImpl;
@useResult
$Res call({
 String? status, BiographiesData? data, BiographiesMeta? meta
});


$BiographiesDataCopyWith<$Res>? get data;$BiographiesMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$BiographiesAndHadithsModelCopyWithImpl<$Res>
    implements $BiographiesAndHadithsModelCopyWith<$Res> {
  _$BiographiesAndHadithsModelCopyWithImpl(this._self, this._then);

  final BiographiesAndHadithsModel _self;
  final $Res Function(BiographiesAndHadithsModel) _then;

/// Create a copy of BiographiesAndHadithsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BiographiesData?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as BiographiesMeta?,
  ));
}
/// Create a copy of BiographiesAndHadithsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographiesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BiographiesDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of BiographiesAndHadithsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographiesMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $BiographiesMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [BiographiesAndHadithsModel].
extension BiographiesAndHadithsModelPatterns on BiographiesAndHadithsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiographiesAndHadithsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiographiesAndHadithsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiographiesAndHadithsModel value)  $default,){
final _that = this;
switch (_that) {
case _BiographiesAndHadithsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiographiesAndHadithsModel value)?  $default,){
final _that = this;
switch (_that) {
case _BiographiesAndHadithsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  BiographiesData? data,  BiographiesMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiographiesAndHadithsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  BiographiesData? data,  BiographiesMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _BiographiesAndHadithsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  BiographiesData? data,  BiographiesMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _BiographiesAndHadithsModel() when $default != null:
return $default(_that.status,_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BiographiesAndHadithsModel implements BiographiesAndHadithsModel {
  const _BiographiesAndHadithsModel({this.status, this.data, this.meta});
  factory _BiographiesAndHadithsModel.fromJson(Map<String, dynamic> json) => _$BiographiesAndHadithsModelFromJson(json);

@override final  String? status;
@override final  BiographiesData? data;
@override final  BiographiesMeta? meta;

/// Create a copy of BiographiesAndHadithsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiographiesAndHadithsModelCopyWith<_BiographiesAndHadithsModel> get copyWith => __$BiographiesAndHadithsModelCopyWithImpl<_BiographiesAndHadithsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiographiesAndHadithsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiographiesAndHadithsModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,meta);

@override
String toString() {
  return 'BiographiesAndHadithsModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$BiographiesAndHadithsModelCopyWith<$Res> implements $BiographiesAndHadithsModelCopyWith<$Res> {
  factory _$BiographiesAndHadithsModelCopyWith(_BiographiesAndHadithsModel value, $Res Function(_BiographiesAndHadithsModel) _then) = __$BiographiesAndHadithsModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, BiographiesData? data, BiographiesMeta? meta
});


@override $BiographiesDataCopyWith<$Res>? get data;@override $BiographiesMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$BiographiesAndHadithsModelCopyWithImpl<$Res>
    implements _$BiographiesAndHadithsModelCopyWith<$Res> {
  __$BiographiesAndHadithsModelCopyWithImpl(this._self, this._then);

  final _BiographiesAndHadithsModel _self;
  final $Res Function(_BiographiesAndHadithsModel) _then;

/// Create a copy of BiographiesAndHadithsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_BiographiesAndHadithsModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BiographiesData?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as BiographiesMeta?,
  ));
}

/// Create a copy of BiographiesAndHadithsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographiesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BiographiesDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of BiographiesAndHadithsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographiesMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $BiographiesMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$BiographiesData {

 List<BiographiesCategoryWithArticles>? get categories;
/// Create a copy of BiographiesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiographiesDataCopyWith<BiographiesData> get copyWith => _$BiographiesDataCopyWithImpl<BiographiesData>(this as BiographiesData, _$identity);

  /// Serializes this BiographiesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiographiesData&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'BiographiesData(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $BiographiesDataCopyWith<$Res>  {
  factory $BiographiesDataCopyWith(BiographiesData value, $Res Function(BiographiesData) _then) = _$BiographiesDataCopyWithImpl;
@useResult
$Res call({
 List<BiographiesCategoryWithArticles>? categories
});




}
/// @nodoc
class _$BiographiesDataCopyWithImpl<$Res>
    implements $BiographiesDataCopyWith<$Res> {
  _$BiographiesDataCopyWithImpl(this._self, this._then);

  final BiographiesData _self;
  final $Res Function(BiographiesData) _then;

/// Create a copy of BiographiesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = freezed,}) {
  return _then(_self.copyWith(
categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<BiographiesCategoryWithArticles>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BiographiesData].
extension BiographiesDataPatterns on BiographiesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiographiesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiographiesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiographiesData value)  $default,){
final _that = this;
switch (_that) {
case _BiographiesData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiographiesData value)?  $default,){
final _that = this;
switch (_that) {
case _BiographiesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BiographiesCategoryWithArticles>? categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiographiesData() when $default != null:
return $default(_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BiographiesCategoryWithArticles>? categories)  $default,) {final _that = this;
switch (_that) {
case _BiographiesData():
return $default(_that.categories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BiographiesCategoryWithArticles>? categories)?  $default,) {final _that = this;
switch (_that) {
case _BiographiesData() when $default != null:
return $default(_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BiographiesData implements BiographiesData {
  const _BiographiesData({final  List<BiographiesCategoryWithArticles>? categories}): _categories = categories;
  factory _BiographiesData.fromJson(Map<String, dynamic> json) => _$BiographiesDataFromJson(json);

 final  List<BiographiesCategoryWithArticles>? _categories;
@override List<BiographiesCategoryWithArticles>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BiographiesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiographiesDataCopyWith<_BiographiesData> get copyWith => __$BiographiesDataCopyWithImpl<_BiographiesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiographiesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiographiesData&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'BiographiesData(categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$BiographiesDataCopyWith<$Res> implements $BiographiesDataCopyWith<$Res> {
  factory _$BiographiesDataCopyWith(_BiographiesData value, $Res Function(_BiographiesData) _then) = __$BiographiesDataCopyWithImpl;
@override @useResult
$Res call({
 List<BiographiesCategoryWithArticles>? categories
});




}
/// @nodoc
class __$BiographiesDataCopyWithImpl<$Res>
    implements _$BiographiesDataCopyWith<$Res> {
  __$BiographiesDataCopyWithImpl(this._self, this._then);

  final _BiographiesData _self;
  final $Res Function(_BiographiesData) _then;

/// Create a copy of BiographiesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = freezed,}) {
  return _then(_BiographiesData(
categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<BiographiesCategoryWithArticles>?,
  ));
}


}


/// @nodoc
mixin _$BiographiesCategoryWithArticles {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? get catPos; dynamic get parent; List<dynamic>? get children; List<BiographiesHierarchy>? get hierarchy; List<BiographiesArticle>? get articles; BiographiesPagination? get pagination;
/// Create a copy of BiographiesCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiographiesCategoryWithArticlesCopyWith<BiographiesCategoryWithArticles> get copyWith => _$BiographiesCategoryWithArticlesCopyWithImpl<BiographiesCategoryWithArticles>(this as BiographiesCategoryWithArticles, _$identity);

  /// Serializes this BiographiesCategoryWithArticles to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiographiesCategoryWithArticles&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other.children, children)&&const DeepCollectionEquality().equals(other.hierarchy, hierarchy)&&const DeepCollectionEquality().equals(other.articles, articles)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(children),const DeepCollectionEquality().hash(hierarchy),const DeepCollectionEquality().hash(articles),pagination);

@override
String toString() {
  return 'BiographiesCategoryWithArticles(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, parent: $parent, children: $children, hierarchy: $hierarchy, articles: $articles, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $BiographiesCategoryWithArticlesCopyWith<$Res>  {
  factory $BiographiesCategoryWithArticlesCopyWith(BiographiesCategoryWithArticles value, $Res Function(BiographiesCategoryWithArticles) _then) = _$BiographiesCategoryWithArticlesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos, dynamic parent, List<dynamic>? children, List<BiographiesHierarchy>? hierarchy, List<BiographiesArticle>? articles, BiographiesPagination? pagination
});


$BiographiesPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$BiographiesCategoryWithArticlesCopyWithImpl<$Res>
    implements $BiographiesCategoryWithArticlesCopyWith<$Res> {
  _$BiographiesCategoryWithArticlesCopyWithImpl(this._self, this._then);

  final BiographiesCategoryWithArticles _self;
  final $Res Function(BiographiesCategoryWithArticles) _then;

/// Create a copy of BiographiesCategoryWithArticles
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
as List<BiographiesHierarchy>?,articles: freezed == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<BiographiesArticle>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as BiographiesPagination?,
  ));
}
/// Create a copy of BiographiesCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographiesPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $BiographiesPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [BiographiesCategoryWithArticles].
extension BiographiesCategoryWithArticlesPatterns on BiographiesCategoryWithArticles {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiographiesCategoryWithArticles value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiographiesCategoryWithArticles() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiographiesCategoryWithArticles value)  $default,){
final _that = this;
switch (_that) {
case _BiographiesCategoryWithArticles():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiographiesCategoryWithArticles value)?  $default,){
final _that = this;
switch (_that) {
case _BiographiesCategoryWithArticles() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos,  dynamic parent,  List<dynamic>? children,  List<BiographiesHierarchy>? hierarchy,  List<BiographiesArticle>? articles,  BiographiesPagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiographiesCategoryWithArticles() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos,  dynamic parent,  List<dynamic>? children,  List<BiographiesHierarchy>? hierarchy,  List<BiographiesArticle>? articles,  BiographiesPagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _BiographiesCategoryWithArticles():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos,  dynamic parent,  List<dynamic>? children,  List<BiographiesHierarchy>? hierarchy,  List<BiographiesArticle>? articles,  BiographiesPagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _BiographiesCategoryWithArticles() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.parent,_that.children,_that.hierarchy,_that.articles,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BiographiesCategoryWithArticles implements BiographiesCategoryWithArticles {
  const _BiographiesCategoryWithArticles({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt) this.catPos, this.parent, final  List<dynamic>? children, final  List<BiographiesHierarchy>? hierarchy, final  List<BiographiesArticle>? articles, this.pagination}): _children = children,_hierarchy = hierarchy,_articles = articles;
  factory _BiographiesCategoryWithArticles.fromJson(Map<String, dynamic> json) => _$BiographiesCategoryWithArticlesFromJson(json);

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

 final  List<BiographiesHierarchy>? _hierarchy;
@override List<BiographiesHierarchy>? get hierarchy {
  final value = _hierarchy;
  if (value == null) return null;
  if (_hierarchy is EqualUnmodifiableListView) return _hierarchy;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BiographiesArticle>? _articles;
@override List<BiographiesArticle>? get articles {
  final value = _articles;
  if (value == null) return null;
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  BiographiesPagination? pagination;

/// Create a copy of BiographiesCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiographiesCategoryWithArticlesCopyWith<_BiographiesCategoryWithArticles> get copyWith => __$BiographiesCategoryWithArticlesCopyWithImpl<_BiographiesCategoryWithArticles>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiographiesCategoryWithArticlesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiographiesCategoryWithArticles&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other._children, _children)&&const DeepCollectionEquality().equals(other._hierarchy, _hierarchy)&&const DeepCollectionEquality().equals(other._articles, _articles)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(_children),const DeepCollectionEquality().hash(_hierarchy),const DeepCollectionEquality().hash(_articles),pagination);

@override
String toString() {
  return 'BiographiesCategoryWithArticles(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, parent: $parent, children: $children, hierarchy: $hierarchy, articles: $articles, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$BiographiesCategoryWithArticlesCopyWith<$Res> implements $BiographiesCategoryWithArticlesCopyWith<$Res> {
  factory _$BiographiesCategoryWithArticlesCopyWith(_BiographiesCategoryWithArticles value, $Res Function(_BiographiesCategoryWithArticles) _then) = __$BiographiesCategoryWithArticlesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos, dynamic parent, List<dynamic>? children, List<BiographiesHierarchy>? hierarchy, List<BiographiesArticle>? articles, BiographiesPagination? pagination
});


@override $BiographiesPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$BiographiesCategoryWithArticlesCopyWithImpl<$Res>
    implements _$BiographiesCategoryWithArticlesCopyWith<$Res> {
  __$BiographiesCategoryWithArticlesCopyWithImpl(this._self, this._then);

  final _BiographiesCategoryWithArticles _self;
  final $Res Function(_BiographiesCategoryWithArticles) _then;

/// Create a copy of BiographiesCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? parent = freezed,Object? children = freezed,Object? hierarchy = freezed,Object? articles = freezed,Object? pagination = freezed,}) {
  return _then(_BiographiesCategoryWithArticles(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as int?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as dynamic,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,hierarchy: freezed == hierarchy ? _self._hierarchy : hierarchy // ignore: cast_nullable_to_non_nullable
as List<BiographiesHierarchy>?,articles: freezed == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<BiographiesArticle>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as BiographiesPagination?,
  ));
}

/// Create a copy of BiographiesCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographiesPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $BiographiesPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$BiographiesHierarchy {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'level', fromJson: _stringToInt) int? get level;
/// Create a copy of BiographiesHierarchy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiographiesHierarchyCopyWith<BiographiesHierarchy> get copyWith => _$BiographiesHierarchyCopyWithImpl<BiographiesHierarchy>(this as BiographiesHierarchy, _$identity);

  /// Serializes this BiographiesHierarchy to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiographiesHierarchy&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,level);

@override
String toString() {
  return 'BiographiesHierarchy(catId: $catId, catTitle: $catTitle, level: $level)';
}


}

/// @nodoc
abstract mixin class $BiographiesHierarchyCopyWith<$Res>  {
  factory $BiographiesHierarchyCopyWith(BiographiesHierarchy value, $Res Function(BiographiesHierarchy) _then) = _$BiographiesHierarchyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'level', fromJson: _stringToInt) int? level
});




}
/// @nodoc
class _$BiographiesHierarchyCopyWithImpl<$Res>
    implements $BiographiesHierarchyCopyWith<$Res> {
  _$BiographiesHierarchyCopyWithImpl(this._self, this._then);

  final BiographiesHierarchy _self;
  final $Res Function(BiographiesHierarchy) _then;

/// Create a copy of BiographiesHierarchy
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


/// Adds pattern-matching-related methods to [BiographiesHierarchy].
extension BiographiesHierarchyPatterns on BiographiesHierarchy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiographiesHierarchy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiographiesHierarchy() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiographiesHierarchy value)  $default,){
final _that = this;
switch (_that) {
case _BiographiesHierarchy():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiographiesHierarchy value)?  $default,){
final _that = this;
switch (_that) {
case _BiographiesHierarchy() when $default != null:
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
case _BiographiesHierarchy() when $default != null:
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
case _BiographiesHierarchy():
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
case _BiographiesHierarchy() when $default != null:
return $default(_that.catId,_that.catTitle,_that.level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BiographiesHierarchy implements BiographiesHierarchy {
  const _BiographiesHierarchy({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'level', fromJson: _stringToInt) this.level});
  factory _BiographiesHierarchy.fromJson(Map<String, dynamic> json) => _$BiographiesHierarchyFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'level', fromJson: _stringToInt) final  int? level;

/// Create a copy of BiographiesHierarchy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiographiesHierarchyCopyWith<_BiographiesHierarchy> get copyWith => __$BiographiesHierarchyCopyWithImpl<_BiographiesHierarchy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiographiesHierarchyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiographiesHierarchy&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,level);

@override
String toString() {
  return 'BiographiesHierarchy(catId: $catId, catTitle: $catTitle, level: $level)';
}


}

/// @nodoc
abstract mixin class _$BiographiesHierarchyCopyWith<$Res> implements $BiographiesHierarchyCopyWith<$Res> {
  factory _$BiographiesHierarchyCopyWith(_BiographiesHierarchy value, $Res Function(_BiographiesHierarchy) _then) = __$BiographiesHierarchyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'level', fromJson: _stringToInt) int? level
});




}
/// @nodoc
class __$BiographiesHierarchyCopyWithImpl<$Res>
    implements _$BiographiesHierarchyCopyWith<$Res> {
  __$BiographiesHierarchyCopyWithImpl(this._self, this._then);

  final _BiographiesHierarchy _self;
  final $Res Function(_BiographiesHierarchy) _then;

/// Create a copy of BiographiesHierarchy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? level = freezed,}) {
  return _then(_BiographiesHierarchy(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$BiographiesCategory {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? get catPos; dynamic get parent; List<dynamic>? get children;
/// Create a copy of BiographiesCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiographiesCategoryCopyWith<BiographiesCategory> get copyWith => _$BiographiesCategoryCopyWithImpl<BiographiesCategory>(this as BiographiesCategory, _$identity);

  /// Serializes this BiographiesCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiographiesCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'BiographiesCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, parent: $parent, children: $children)';
}


}

/// @nodoc
abstract mixin class $BiographiesCategoryCopyWith<$Res>  {
  factory $BiographiesCategoryCopyWith(BiographiesCategory value, $Res Function(BiographiesCategory) _then) = _$BiographiesCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos, dynamic parent, List<dynamic>? children
});




}
/// @nodoc
class _$BiographiesCategoryCopyWithImpl<$Res>
    implements $BiographiesCategoryCopyWith<$Res> {
  _$BiographiesCategoryCopyWithImpl(this._self, this._then);

  final BiographiesCategory _self;
  final $Res Function(BiographiesCategory) _then;

/// Create a copy of BiographiesCategory
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


/// Adds pattern-matching-related methods to [BiographiesCategory].
extension BiographiesCategoryPatterns on BiographiesCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiographiesCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiographiesCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiographiesCategory value)  $default,){
final _that = this;
switch (_that) {
case _BiographiesCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiographiesCategory value)?  $default,){
final _that = this;
switch (_that) {
case _BiographiesCategory() when $default != null:
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
case _BiographiesCategory() when $default != null:
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
case _BiographiesCategory():
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
case _BiographiesCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.parent,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BiographiesCategory implements BiographiesCategory {
  const _BiographiesCategory({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt) this.catPos, this.parent, final  List<dynamic>? children}): _children = children;
  factory _BiographiesCategory.fromJson(Map<String, dynamic> json) => _$BiographiesCategoryFromJson(json);

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


/// Create a copy of BiographiesCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiographiesCategoryCopyWith<_BiographiesCategory> get copyWith => __$BiographiesCategoryCopyWithImpl<_BiographiesCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiographiesCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiographiesCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'BiographiesCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, parent: $parent, children: $children)';
}


}

/// @nodoc
abstract mixin class _$BiographiesCategoryCopyWith<$Res> implements $BiographiesCategoryCopyWith<$Res> {
  factory _$BiographiesCategoryCopyWith(_BiographiesCategory value, $Res Function(_BiographiesCategory) _then) = __$BiographiesCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos, dynamic parent, List<dynamic>? children
});




}
/// @nodoc
class __$BiographiesCategoryCopyWithImpl<$Res>
    implements _$BiographiesCategoryCopyWith<$Res> {
  __$BiographiesCategoryCopyWithImpl(this._self, this._then);

  final _BiographiesCategory _self;
  final $Res Function(_BiographiesCategory) _then;

/// Create a copy of BiographiesCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? parent = freezed,Object? children = freezed,}) {
  return _then(_BiographiesCategory(
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
mixin _$BiographiesArticle {

@JsonKey(name: 'article_id') int? get articleId;@JsonKey(name: 'article_title') String? get articleTitle;@JsonKey(name: 'article_summary') String? get articleSummary;@JsonKey(name: 'article_cat_id') String? get articleCatId;@JsonKey(name: 'article_pic') String? get articlePic;@JsonKey(name: 'article_visitor') String? get articleVisitor;@JsonKey(name: 'article_priority') String? get articlePriority;@JsonKey(name: 'article_date') String? get articleDate;@JsonKey(name: 'article_active') String? get articleActive; BiographiesArticleCategory? get category;
/// Create a copy of BiographiesArticle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiographiesArticleCopyWith<BiographiesArticle> get copyWith => _$BiographiesArticleCopyWithImpl<BiographiesArticle>(this as BiographiesArticle, _$identity);

  /// Serializes this BiographiesArticle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiographiesArticle&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articlePriority, articlePriority) || other.articlePriority == articlePriority)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articleActive, articleActive) || other.articleActive == articleActive)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleSummary,articleCatId,articlePic,articleVisitor,articlePriority,articleDate,articleActive,category);

@override
String toString() {
  return 'BiographiesArticle(articleId: $articleId, articleTitle: $articleTitle, articleSummary: $articleSummary, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articlePriority: $articlePriority, articleDate: $articleDate, articleActive: $articleActive, category: $category)';
}


}

/// @nodoc
abstract mixin class $BiographiesArticleCopyWith<$Res>  {
  factory $BiographiesArticleCopyWith(BiographiesArticle value, $Res Function(BiographiesArticle) _then) = _$BiographiesArticleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'article_id') int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id') String? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor') String? articleVisitor,@JsonKey(name: 'article_priority') String? articlePriority,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_active') String? articleActive, BiographiesArticleCategory? category
});


$BiographiesArticleCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$BiographiesArticleCopyWithImpl<$Res>
    implements $BiographiesArticleCopyWith<$Res> {
  _$BiographiesArticleCopyWithImpl(this._self, this._then);

  final BiographiesArticle _self;
  final $Res Function(BiographiesArticle) _then;

/// Create a copy of BiographiesArticle
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
as BiographiesArticleCategory?,
  ));
}
/// Create a copy of BiographiesArticle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographiesArticleCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $BiographiesArticleCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [BiographiesArticle].
extension BiographiesArticlePatterns on BiographiesArticle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiographiesArticle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiographiesArticle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiographiesArticle value)  $default,){
final _that = this;
switch (_that) {
case _BiographiesArticle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiographiesArticle value)?  $default,){
final _that = this;
switch (_that) {
case _BiographiesArticle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_priority')  String? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active')  String? articleActive,  BiographiesArticleCategory? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiographiesArticle() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_priority')  String? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active')  String? articleActive,  BiographiesArticleCategory? category)  $default,) {final _that = this;
switch (_that) {
case _BiographiesArticle():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_priority')  String? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active')  String? articleActive,  BiographiesArticleCategory? category)?  $default,) {final _that = this;
switch (_that) {
case _BiographiesArticle() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articlePriority,_that.articleDate,_that.articleActive,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BiographiesArticle implements BiographiesArticle {
  const _BiographiesArticle({@JsonKey(name: 'article_id') this.articleId, @JsonKey(name: 'article_title') this.articleTitle, @JsonKey(name: 'article_summary') this.articleSummary, @JsonKey(name: 'article_cat_id') this.articleCatId, @JsonKey(name: 'article_pic') this.articlePic, @JsonKey(name: 'article_visitor') this.articleVisitor, @JsonKey(name: 'article_priority') this.articlePriority, @JsonKey(name: 'article_date') this.articleDate, @JsonKey(name: 'article_active') this.articleActive, this.category});
  factory _BiographiesArticle.fromJson(Map<String, dynamic> json) => _$BiographiesArticleFromJson(json);

@override@JsonKey(name: 'article_id') final  int? articleId;
@override@JsonKey(name: 'article_title') final  String? articleTitle;
@override@JsonKey(name: 'article_summary') final  String? articleSummary;
@override@JsonKey(name: 'article_cat_id') final  String? articleCatId;
@override@JsonKey(name: 'article_pic') final  String? articlePic;
@override@JsonKey(name: 'article_visitor') final  String? articleVisitor;
@override@JsonKey(name: 'article_priority') final  String? articlePriority;
@override@JsonKey(name: 'article_date') final  String? articleDate;
@override@JsonKey(name: 'article_active') final  String? articleActive;
@override final  BiographiesArticleCategory? category;

/// Create a copy of BiographiesArticle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiographiesArticleCopyWith<_BiographiesArticle> get copyWith => __$BiographiesArticleCopyWithImpl<_BiographiesArticle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiographiesArticleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiographiesArticle&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articlePriority, articlePriority) || other.articlePriority == articlePriority)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articleActive, articleActive) || other.articleActive == articleActive)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleSummary,articleCatId,articlePic,articleVisitor,articlePriority,articleDate,articleActive,category);

@override
String toString() {
  return 'BiographiesArticle(articleId: $articleId, articleTitle: $articleTitle, articleSummary: $articleSummary, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articlePriority: $articlePriority, articleDate: $articleDate, articleActive: $articleActive, category: $category)';
}


}

/// @nodoc
abstract mixin class _$BiographiesArticleCopyWith<$Res> implements $BiographiesArticleCopyWith<$Res> {
  factory _$BiographiesArticleCopyWith(_BiographiesArticle value, $Res Function(_BiographiesArticle) _then) = __$BiographiesArticleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'article_id') int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id') String? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor') String? articleVisitor,@JsonKey(name: 'article_priority') String? articlePriority,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_active') String? articleActive, BiographiesArticleCategory? category
});


@override $BiographiesArticleCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$BiographiesArticleCopyWithImpl<$Res>
    implements _$BiographiesArticleCopyWith<$Res> {
  __$BiographiesArticleCopyWithImpl(this._self, this._then);

  final _BiographiesArticle _self;
  final $Res Function(_BiographiesArticle) _then;

/// Create a copy of BiographiesArticle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleSummary = freezed,Object? articleCatId = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articlePriority = freezed,Object? articleDate = freezed,Object? articleActive = freezed,Object? category = freezed,}) {
  return _then(_BiographiesArticle(
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
as BiographiesArticleCategory?,
  ));
}

/// Create a copy of BiographiesArticle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographiesArticleCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $BiographiesArticleCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$BiographiesArticleCategory {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;
/// Create a copy of BiographiesArticleCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiographiesArticleCategoryCopyWith<BiographiesArticleCategory> get copyWith => _$BiographiesArticleCategoryCopyWithImpl<BiographiesArticleCategory>(this as BiographiesArticleCategory, _$identity);

  /// Serializes this BiographiesArticleCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiographiesArticleCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle);

@override
String toString() {
  return 'BiographiesArticleCategory(catId: $catId, catTitle: $catTitle)';
}


}

/// @nodoc
abstract mixin class $BiographiesArticleCategoryCopyWith<$Res>  {
  factory $BiographiesArticleCategoryCopyWith(BiographiesArticleCategory value, $Res Function(BiographiesArticleCategory) _then) = _$BiographiesArticleCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle
});




}
/// @nodoc
class _$BiographiesArticleCategoryCopyWithImpl<$Res>
    implements $BiographiesArticleCategoryCopyWith<$Res> {
  _$BiographiesArticleCategoryCopyWithImpl(this._self, this._then);

  final BiographiesArticleCategory _self;
  final $Res Function(BiographiesArticleCategory) _then;

/// Create a copy of BiographiesArticleCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catTitle = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BiographiesArticleCategory].
extension BiographiesArticleCategoryPatterns on BiographiesArticleCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiographiesArticleCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiographiesArticleCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiographiesArticleCategory value)  $default,){
final _that = this;
switch (_that) {
case _BiographiesArticleCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiographiesArticleCategory value)?  $default,){
final _that = this;
switch (_that) {
case _BiographiesArticleCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiographiesArticleCategory() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle)  $default,) {final _that = this;
switch (_that) {
case _BiographiesArticleCategory():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle)?  $default,) {final _that = this;
switch (_that) {
case _BiographiesArticleCategory() when $default != null:
return $default(_that.catId,_that.catTitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BiographiesArticleCategory implements BiographiesArticleCategory {
  const _BiographiesArticleCategory({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle});
  factory _BiographiesArticleCategory.fromJson(Map<String, dynamic> json) => _$BiographiesArticleCategoryFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;

/// Create a copy of BiographiesArticleCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiographiesArticleCategoryCopyWith<_BiographiesArticleCategory> get copyWith => __$BiographiesArticleCategoryCopyWithImpl<_BiographiesArticleCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiographiesArticleCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiographiesArticleCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle);

@override
String toString() {
  return 'BiographiesArticleCategory(catId: $catId, catTitle: $catTitle)';
}


}

/// @nodoc
abstract mixin class _$BiographiesArticleCategoryCopyWith<$Res> implements $BiographiesArticleCategoryCopyWith<$Res> {
  factory _$BiographiesArticleCategoryCopyWith(_BiographiesArticleCategory value, $Res Function(_BiographiesArticleCategory) _then) = __$BiographiesArticleCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle
});




}
/// @nodoc
class __$BiographiesArticleCategoryCopyWithImpl<$Res>
    implements _$BiographiesArticleCategoryCopyWith<$Res> {
  __$BiographiesArticleCategoryCopyWithImpl(this._self, this._then);

  final _BiographiesArticleCategory _self;
  final $Res Function(_BiographiesArticleCategory) _then;

/// Create a copy of BiographiesArticleCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,}) {
  return _then(_BiographiesArticleCategory(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BiographiesMeta {

 BiographiesPagination? get pagination;
/// Create a copy of BiographiesMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiographiesMetaCopyWith<BiographiesMeta> get copyWith => _$BiographiesMetaCopyWithImpl<BiographiesMeta>(this as BiographiesMeta, _$identity);

  /// Serializes this BiographiesMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiographiesMeta&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pagination);

@override
String toString() {
  return 'BiographiesMeta(pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $BiographiesMetaCopyWith<$Res>  {
  factory $BiographiesMetaCopyWith(BiographiesMeta value, $Res Function(BiographiesMeta) _then) = _$BiographiesMetaCopyWithImpl;
@useResult
$Res call({
 BiographiesPagination? pagination
});


$BiographiesPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$BiographiesMetaCopyWithImpl<$Res>
    implements $BiographiesMetaCopyWith<$Res> {
  _$BiographiesMetaCopyWithImpl(this._self, this._then);

  final BiographiesMeta _self;
  final $Res Function(BiographiesMeta) _then;

/// Create a copy of BiographiesMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagination = freezed,}) {
  return _then(_self.copyWith(
pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as BiographiesPagination?,
  ));
}
/// Create a copy of BiographiesMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographiesPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $BiographiesPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [BiographiesMeta].
extension BiographiesMetaPatterns on BiographiesMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiographiesMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiographiesMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiographiesMeta value)  $default,){
final _that = this;
switch (_that) {
case _BiographiesMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiographiesMeta value)?  $default,){
final _that = this;
switch (_that) {
case _BiographiesMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BiographiesPagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiographiesMeta() when $default != null:
return $default(_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BiographiesPagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _BiographiesMeta():
return $default(_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BiographiesPagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _BiographiesMeta() when $default != null:
return $default(_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BiographiesMeta implements BiographiesMeta {
  const _BiographiesMeta({this.pagination});
  factory _BiographiesMeta.fromJson(Map<String, dynamic> json) => _$BiographiesMetaFromJson(json);

@override final  BiographiesPagination? pagination;

/// Create a copy of BiographiesMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiographiesMetaCopyWith<_BiographiesMeta> get copyWith => __$BiographiesMetaCopyWithImpl<_BiographiesMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiographiesMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiographiesMeta&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pagination);

@override
String toString() {
  return 'BiographiesMeta(pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$BiographiesMetaCopyWith<$Res> implements $BiographiesMetaCopyWith<$Res> {
  factory _$BiographiesMetaCopyWith(_BiographiesMeta value, $Res Function(_BiographiesMeta) _then) = __$BiographiesMetaCopyWithImpl;
@override @useResult
$Res call({
 BiographiesPagination? pagination
});


@override $BiographiesPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$BiographiesMetaCopyWithImpl<$Res>
    implements _$BiographiesMetaCopyWith<$Res> {
  __$BiographiesMetaCopyWithImpl(this._self, this._then);

  final _BiographiesMeta _self;
  final $Res Function(_BiographiesMeta) _then;

/// Create a copy of BiographiesMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagination = freezed,}) {
  return _then(_BiographiesMeta(
pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as BiographiesPagination?,
  ));
}

/// Create a copy of BiographiesMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographiesPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $BiographiesPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$BiographiesPagination {

@JsonKey(name: 'total', fromJson: _stringToInt) int? get total;@JsonKey(name: 'count', fromJson: _stringToInt) int? get count;@JsonKey(name: 'per_page', fromJson: _stringToInt) int? get perPage;@JsonKey(name: 'current_page', fromJson: _stringToInt) int? get currentPage;@JsonKey(name: 'last_page', fromJson: _stringToInt) int? get lastPage;@JsonKey(name: 'from', fromJson: _stringToInt) int? get from;@JsonKey(name: 'to', fromJson: _stringToInt) int? get to;
/// Create a copy of BiographiesPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiographiesPaginationCopyWith<BiographiesPagination> get copyWith => _$BiographiesPaginationCopyWithImpl<BiographiesPagination>(this as BiographiesPagination, _$identity);

  /// Serializes this BiographiesPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiographiesPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'BiographiesPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $BiographiesPaginationCopyWith<$Res>  {
  factory $BiographiesPaginationCopyWith(BiographiesPagination value, $Res Function(BiographiesPagination) _then) = _$BiographiesPaginationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total', fromJson: _stringToInt) int? total,@JsonKey(name: 'count', fromJson: _stringToInt) int? count,@JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,@JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,@JsonKey(name: 'last_page', fromJson: _stringToInt) int? lastPage,@JsonKey(name: 'from', fromJson: _stringToInt) int? from,@JsonKey(name: 'to', fromJson: _stringToInt) int? to
});




}
/// @nodoc
class _$BiographiesPaginationCopyWithImpl<$Res>
    implements $BiographiesPaginationCopyWith<$Res> {
  _$BiographiesPaginationCopyWithImpl(this._self, this._then);

  final BiographiesPagination _self;
  final $Res Function(BiographiesPagination) _then;

/// Create a copy of BiographiesPagination
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


/// Adds pattern-matching-related methods to [BiographiesPagination].
extension BiographiesPaginationPatterns on BiographiesPagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiographiesPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiographiesPagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiographiesPagination value)  $default,){
final _that = this;
switch (_that) {
case _BiographiesPagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiographiesPagination value)?  $default,){
final _that = this;
switch (_that) {
case _BiographiesPagination() when $default != null:
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
case _BiographiesPagination() when $default != null:
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
case _BiographiesPagination():
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
case _BiographiesPagination() when $default != null:
return $default(_that.total,_that.count,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BiographiesPagination implements BiographiesPagination {
  const _BiographiesPagination({@JsonKey(name: 'total', fromJson: _stringToInt) this.total, @JsonKey(name: 'count', fromJson: _stringToInt) this.count, @JsonKey(name: 'per_page', fromJson: _stringToInt) this.perPage, @JsonKey(name: 'current_page', fromJson: _stringToInt) this.currentPage, @JsonKey(name: 'last_page', fromJson: _stringToInt) this.lastPage, @JsonKey(name: 'from', fromJson: _stringToInt) this.from, @JsonKey(name: 'to', fromJson: _stringToInt) this.to});
  factory _BiographiesPagination.fromJson(Map<String, dynamic> json) => _$BiographiesPaginationFromJson(json);

@override@JsonKey(name: 'total', fromJson: _stringToInt) final  int? total;
@override@JsonKey(name: 'count', fromJson: _stringToInt) final  int? count;
@override@JsonKey(name: 'per_page', fromJson: _stringToInt) final  int? perPage;
@override@JsonKey(name: 'current_page', fromJson: _stringToInt) final  int? currentPage;
@override@JsonKey(name: 'last_page', fromJson: _stringToInt) final  int? lastPage;
@override@JsonKey(name: 'from', fromJson: _stringToInt) final  int? from;
@override@JsonKey(name: 'to', fromJson: _stringToInt) final  int? to;

/// Create a copy of BiographiesPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiographiesPaginationCopyWith<_BiographiesPagination> get copyWith => __$BiographiesPaginationCopyWithImpl<_BiographiesPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiographiesPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiographiesPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'BiographiesPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$BiographiesPaginationCopyWith<$Res> implements $BiographiesPaginationCopyWith<$Res> {
  factory _$BiographiesPaginationCopyWith(_BiographiesPagination value, $Res Function(_BiographiesPagination) _then) = __$BiographiesPaginationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total', fromJson: _stringToInt) int? total,@JsonKey(name: 'count', fromJson: _stringToInt) int? count,@JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,@JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,@JsonKey(name: 'last_page', fromJson: _stringToInt) int? lastPage,@JsonKey(name: 'from', fromJson: _stringToInt) int? from,@JsonKey(name: 'to', fromJson: _stringToInt) int? to
});




}
/// @nodoc
class __$BiographiesPaginationCopyWithImpl<$Res>
    implements _$BiographiesPaginationCopyWith<$Res> {
  __$BiographiesPaginationCopyWithImpl(this._self, this._then);

  final _BiographiesPagination _self;
  final $Res Function(_BiographiesPagination) _then;

/// Create a copy of BiographiesPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? count = freezed,Object? perPage = freezed,Object? currentPage = freezed,Object? lastPage = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_BiographiesPagination(
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
mixin _$ArticleDetailModel {

 String? get status; ArticleDetailData? get data;
/// Create a copy of ArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleDetailModelCopyWith<ArticleDetailModel> get copyWith => _$ArticleDetailModelCopyWithImpl<ArticleDetailModel>(this as ArticleDetailModel, _$identity);

  /// Serializes this ArticleDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleDetailModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'ArticleDetailModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $ArticleDetailModelCopyWith<$Res>  {
  factory $ArticleDetailModelCopyWith(ArticleDetailModel value, $Res Function(ArticleDetailModel) _then) = _$ArticleDetailModelCopyWithImpl;
@useResult
$Res call({
 String? status, ArticleDetailData? data
});


$ArticleDetailDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$ArticleDetailModelCopyWithImpl<$Res>
    implements $ArticleDetailModelCopyWith<$Res> {
  _$ArticleDetailModelCopyWithImpl(this._self, this._then);

  final ArticleDetailModel _self;
  final $Res Function(ArticleDetailModel) _then;

/// Create a copy of ArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ArticleDetailData?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  ArticleDetailData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleDetailModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  ArticleDetailData? data)  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  ArticleDetailData? data)?  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailModel() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleDetailModel implements ArticleDetailModel {
  const _ArticleDetailModel({this.status, this.data});
  factory _ArticleDetailModel.fromJson(Map<String, dynamic> json) => _$ArticleDetailModelFromJson(json);

@override final  String? status;
@override final  ArticleDetailData? data;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleDetailModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'ArticleDetailModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ArticleDetailModelCopyWith<$Res> implements $ArticleDetailModelCopyWith<$Res> {
  factory _$ArticleDetailModelCopyWith(_ArticleDetailModel value, $Res Function(_ArticleDetailModel) _then) = __$ArticleDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, ArticleDetailData? data
});


@override $ArticleDetailDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$ArticleDetailModelCopyWithImpl<$Res>
    implements _$ArticleDetailModelCopyWith<$Res> {
  __$ArticleDetailModelCopyWithImpl(this._self, this._then);

  final _ArticleDetailModel _self;
  final $Res Function(_ArticleDetailModel) _then;

/// Create a copy of ArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,}) {
  return _then(_ArticleDetailModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ArticleDetailData?,
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
}
}


/// @nodoc
mixin _$ArticleDetailData {

@JsonKey(name: 'article_id', fromJson: _stringToInt) int? get articleId;@JsonKey(name: 'article_title') String? get articleTitle;@JsonKey(name: 'article_des') String? get articleDes;@JsonKey(name: 'article_summary') String? get articleSummary;@JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? get articleCatId;@JsonKey(name: 'article_pic') String? get articlePic;@JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? get articleVisitor;@JsonKey(name: 'article_priority', fromJson: _stringToInt) int? get articlePriority;@JsonKey(name: 'article_date') String? get articleDate;@JsonKey(name: 'article_active', fromJson: _stringToInt) int? get articleActive; ArticleDetailCategory? get category;
/// Create a copy of ArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleDetailDataCopyWith<ArticleDetailData> get copyWith => _$ArticleDetailDataCopyWithImpl<ArticleDetailData>(this as ArticleDetailData, _$identity);

  /// Serializes this ArticleDetailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleDetailData&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articlePriority, articlePriority) || other.articlePriority == articlePriority)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articleActive, articleActive) || other.articleActive == articleActive)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleDes,articleSummary,articleCatId,articlePic,articleVisitor,articlePriority,articleDate,articleActive,category);

@override
String toString() {
  return 'ArticleDetailData(articleId: $articleId, articleTitle: $articleTitle, articleDes: $articleDes, articleSummary: $articleSummary, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articlePriority: $articlePriority, articleDate: $articleDate, articleActive: $articleActive, category: $category)';
}


}

/// @nodoc
abstract mixin class $ArticleDetailDataCopyWith<$Res>  {
  factory $ArticleDetailDataCopyWith(ArticleDetailData value, $Res Function(ArticleDetailData) _then) = _$ArticleDetailDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? articleVisitor,@JsonKey(name: 'article_priority', fromJson: _stringToInt) int? articlePriority,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_active', fromJson: _stringToInt) int? articleActive, ArticleDetailCategory? category
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id', fromJson: _stringToInt)  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt)  int? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt)  int? articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt)  int? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt)  int? articleActive,  ArticleDetailCategory? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleDetailData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id', fromJson: _stringToInt)  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt)  int? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt)  int? articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt)  int? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt)  int? articleActive,  ArticleDetailCategory? category)  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'article_id', fromJson: _stringToInt)  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt)  int? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt)  int? articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt)  int? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt)  int? articleActive,  ArticleDetailCategory? category)?  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailData() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleDes,_that.articleSummary,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articlePriority,_that.articleDate,_that.articleActive,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleDetailData implements ArticleDetailData {
  const _ArticleDetailData({@JsonKey(name: 'article_id', fromJson: _stringToInt) this.articleId, @JsonKey(name: 'article_title') this.articleTitle, @JsonKey(name: 'article_des') this.articleDes, @JsonKey(name: 'article_summary') this.articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt) this.articleCatId, @JsonKey(name: 'article_pic') this.articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt) this.articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt) this.articlePriority, @JsonKey(name: 'article_date') this.articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt) this.articleActive, this.category});
  factory _ArticleDetailData.fromJson(Map<String, dynamic> json) => _$ArticleDetailDataFromJson(json);

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleDetailData&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articlePriority, articlePriority) || other.articlePriority == articlePriority)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articleActive, articleActive) || other.articleActive == articleActive)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleDes,articleSummary,articleCatId,articlePic,articleVisitor,articlePriority,articleDate,articleActive,category);

@override
String toString() {
  return 'ArticleDetailData(articleId: $articleId, articleTitle: $articleTitle, articleDes: $articleDes, articleSummary: $articleSummary, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articlePriority: $articlePriority, articleDate: $articleDate, articleActive: $articleActive, category: $category)';
}


}

/// @nodoc
abstract mixin class _$ArticleDetailDataCopyWith<$Res> implements $ArticleDetailDataCopyWith<$Res> {
  factory _$ArticleDetailDataCopyWith(_ArticleDetailData value, $Res Function(_ArticleDetailData) _then) = __$ArticleDetailDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? articleVisitor,@JsonKey(name: 'article_priority', fromJson: _stringToInt) int? articlePriority,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_active', fromJson: _stringToInt) int? articleActive, ArticleDetailCategory? category
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
@override @pragma('vm:prefer-inline') $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleDes = freezed,Object? articleSummary = freezed,Object? articleCatId = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articlePriority = freezed,Object? articleDate = freezed,Object? articleActive = freezed,Object? category = freezed,}) {
  return _then(_ArticleDetailData(
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

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? get catPos;@JsonKey(name: 'cat_father_id', fromJson: _stringToInt) int? get catFatherId;
/// Create a copy of ArticleDetailCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleDetailCategoryCopyWith<ArticleDetailCategory> get copyWith => _$ArticleDetailCategoryCopyWithImpl<ArticleDetailCategory>(this as ArticleDetailCategory, _$identity);

  /// Serializes this ArticleDetailCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleDetailCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,catFatherId);

@override
String toString() {
  return 'ArticleDetailCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catFatherId: $catFatherId)';
}


}

/// @nodoc
abstract mixin class $ArticleDetailCategoryCopyWith<$Res>  {
  factory $ArticleDetailCategoryCopyWith(ArticleDetailCategory value, $Res Function(ArticleDetailCategory) _then) = _$ArticleDetailCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,@JsonKey(name: 'cat_father_id', fromJson: _stringToInt) int? catFatherId
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos, @JsonKey(name: 'cat_father_id', fromJson: _stringToInt)  int? catFatherId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleDetailCategory() when $default != null:
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
case _ArticleDetailCategory():
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
case _ArticleDetailCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catFatherId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleDetailCategory implements ArticleDetailCategory {
  const _ArticleDetailCategory({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt) this.catPos, @JsonKey(name: 'cat_father_id', fromJson: _stringToInt) this.catFatherId});
  factory _ArticleDetailCategory.fromJson(Map<String, dynamic> json) => _$ArticleDetailCategoryFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_pos', fromJson: _stringToInt) final  int? catPos;
@override@JsonKey(name: 'cat_father_id', fromJson: _stringToInt) final  int? catFatherId;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleDetailCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,catFatherId);

@override
String toString() {
  return 'ArticleDetailCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catFatherId: $catFatherId)';
}


}

/// @nodoc
abstract mixin class _$ArticleDetailCategoryCopyWith<$Res> implements $ArticleDetailCategoryCopyWith<$Res> {
  factory _$ArticleDetailCategoryCopyWith(_ArticleDetailCategory value, $Res Function(_ArticleDetailCategory) _then) = __$ArticleDetailCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,@JsonKey(name: 'cat_father_id', fromJson: _stringToInt) int? catFatherId
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
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? catFatherId = freezed,}) {
  return _then(_ArticleDetailCategory(
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
