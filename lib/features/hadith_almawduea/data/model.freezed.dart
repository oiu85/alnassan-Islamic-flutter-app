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
mixin _$AlmawdueaModel {

 String? get status; AlmawdueaData? get data; AlmawdueaMeta? get meta;
/// Create a copy of AlmawdueaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlmawdueaModelCopyWith<AlmawdueaModel> get copyWith => _$AlmawdueaModelCopyWithImpl<AlmawdueaModel>(this as AlmawdueaModel, _$identity);

  /// Serializes this AlmawdueaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlmawdueaModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,meta);

@override
String toString() {
  return 'AlmawdueaModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $AlmawdueaModelCopyWith<$Res>  {
  factory $AlmawdueaModelCopyWith(AlmawdueaModel value, $Res Function(AlmawdueaModel) _then) = _$AlmawdueaModelCopyWithImpl;
@useResult
$Res call({
 String? status, AlmawdueaData? data, AlmawdueaMeta? meta
});


$AlmawdueaDataCopyWith<$Res>? get data;$AlmawdueaMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$AlmawdueaModelCopyWithImpl<$Res>
    implements $AlmawdueaModelCopyWith<$Res> {
  _$AlmawdueaModelCopyWithImpl(this._self, this._then);

  final AlmawdueaModel _self;
  final $Res Function(AlmawdueaModel) _then;

/// Create a copy of AlmawdueaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AlmawdueaData?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as AlmawdueaMeta?,
  ));
}
/// Create a copy of AlmawdueaModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlmawdueaDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AlmawdueaDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of AlmawdueaModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlmawdueaMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $AlmawdueaMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [AlmawdueaModel].
extension AlmawdueaModelPatterns on AlmawdueaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlmawdueaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlmawdueaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlmawdueaModel value)  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlmawdueaModel value)?  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  AlmawdueaData? data,  AlmawdueaMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlmawdueaModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  AlmawdueaData? data,  AlmawdueaMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _AlmawdueaModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  AlmawdueaData? data,  AlmawdueaMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _AlmawdueaModel() when $default != null:
return $default(_that.status,_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlmawdueaModel implements AlmawdueaModel {
  const _AlmawdueaModel({this.status, this.data, this.meta});
  factory _AlmawdueaModel.fromJson(Map<String, dynamic> json) => _$AlmawdueaModelFromJson(json);

@override final  String? status;
@override final  AlmawdueaData? data;
@override final  AlmawdueaMeta? meta;

/// Create a copy of AlmawdueaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlmawdueaModelCopyWith<_AlmawdueaModel> get copyWith => __$AlmawdueaModelCopyWithImpl<_AlmawdueaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlmawdueaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlmawdueaModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,meta);

@override
String toString() {
  return 'AlmawdueaModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$AlmawdueaModelCopyWith<$Res> implements $AlmawdueaModelCopyWith<$Res> {
  factory _$AlmawdueaModelCopyWith(_AlmawdueaModel value, $Res Function(_AlmawdueaModel) _then) = __$AlmawdueaModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, AlmawdueaData? data, AlmawdueaMeta? meta
});


@override $AlmawdueaDataCopyWith<$Res>? get data;@override $AlmawdueaMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$AlmawdueaModelCopyWithImpl<$Res>
    implements _$AlmawdueaModelCopyWith<$Res> {
  __$AlmawdueaModelCopyWithImpl(this._self, this._then);

  final _AlmawdueaModel _self;
  final $Res Function(_AlmawdueaModel) _then;

/// Create a copy of AlmawdueaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_AlmawdueaModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AlmawdueaData?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as AlmawdueaMeta?,
  ));
}

/// Create a copy of AlmawdueaModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlmawdueaDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AlmawdueaDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of AlmawdueaModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlmawdueaMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $AlmawdueaMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$AlmawdueaData {

 List<AlmawdueaCategoryWithArticles>? get categories;
/// Create a copy of AlmawdueaData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlmawdueaDataCopyWith<AlmawdueaData> get copyWith => _$AlmawdueaDataCopyWithImpl<AlmawdueaData>(this as AlmawdueaData, _$identity);

  /// Serializes this AlmawdueaData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlmawdueaData&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'AlmawdueaData(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $AlmawdueaDataCopyWith<$Res>  {
  factory $AlmawdueaDataCopyWith(AlmawdueaData value, $Res Function(AlmawdueaData) _then) = _$AlmawdueaDataCopyWithImpl;
@useResult
$Res call({
 List<AlmawdueaCategoryWithArticles>? categories
});




}
/// @nodoc
class _$AlmawdueaDataCopyWithImpl<$Res>
    implements $AlmawdueaDataCopyWith<$Res> {
  _$AlmawdueaDataCopyWithImpl(this._self, this._then);

  final AlmawdueaData _self;
  final $Res Function(AlmawdueaData) _then;

/// Create a copy of AlmawdueaData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = freezed,}) {
  return _then(_self.copyWith(
categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<AlmawdueaCategoryWithArticles>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AlmawdueaData].
extension AlmawdueaDataPatterns on AlmawdueaData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlmawdueaData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlmawdueaData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlmawdueaData value)  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlmawdueaData value)?  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AlmawdueaCategoryWithArticles>? categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlmawdueaData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AlmawdueaCategoryWithArticles>? categories)  $default,) {final _that = this;
switch (_that) {
case _AlmawdueaData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AlmawdueaCategoryWithArticles>? categories)?  $default,) {final _that = this;
switch (_that) {
case _AlmawdueaData() when $default != null:
return $default(_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlmawdueaData implements AlmawdueaData {
  const _AlmawdueaData({final  List<AlmawdueaCategoryWithArticles>? categories}): _categories = categories;
  factory _AlmawdueaData.fromJson(Map<String, dynamic> json) => _$AlmawdueaDataFromJson(json);

 final  List<AlmawdueaCategoryWithArticles>? _categories;
@override List<AlmawdueaCategoryWithArticles>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AlmawdueaData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlmawdueaDataCopyWith<_AlmawdueaData> get copyWith => __$AlmawdueaDataCopyWithImpl<_AlmawdueaData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlmawdueaDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlmawdueaData&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'AlmawdueaData(categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$AlmawdueaDataCopyWith<$Res> implements $AlmawdueaDataCopyWith<$Res> {
  factory _$AlmawdueaDataCopyWith(_AlmawdueaData value, $Res Function(_AlmawdueaData) _then) = __$AlmawdueaDataCopyWithImpl;
@override @useResult
$Res call({
 List<AlmawdueaCategoryWithArticles>? categories
});




}
/// @nodoc
class __$AlmawdueaDataCopyWithImpl<$Res>
    implements _$AlmawdueaDataCopyWith<$Res> {
  __$AlmawdueaDataCopyWithImpl(this._self, this._then);

  final _AlmawdueaData _self;
  final $Res Function(_AlmawdueaData) _then;

/// Create a copy of AlmawdueaData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = freezed,}) {
  return _then(_AlmawdueaData(
categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<AlmawdueaCategoryWithArticles>?,
  ));
}


}


/// @nodoc
mixin _$AlmawdueaCategoryWithArticles {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? get catPos; dynamic get parent; List<dynamic>? get children; List<AlmawdueaHierarchy>? get hierarchy; List<AlmawdueaArticle>? get articles; AlmawdueaPagination? get pagination;
/// Create a copy of AlmawdueaCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlmawdueaCategoryWithArticlesCopyWith<AlmawdueaCategoryWithArticles> get copyWith => _$AlmawdueaCategoryWithArticlesCopyWithImpl<AlmawdueaCategoryWithArticles>(this as AlmawdueaCategoryWithArticles, _$identity);

  /// Serializes this AlmawdueaCategoryWithArticles to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlmawdueaCategoryWithArticles&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other.children, children)&&const DeepCollectionEquality().equals(other.hierarchy, hierarchy)&&const DeepCollectionEquality().equals(other.articles, articles)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(children),const DeepCollectionEquality().hash(hierarchy),const DeepCollectionEquality().hash(articles),pagination);

@override
String toString() {
  return 'AlmawdueaCategoryWithArticles(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, parent: $parent, children: $children, hierarchy: $hierarchy, articles: $articles, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $AlmawdueaCategoryWithArticlesCopyWith<$Res>  {
  factory $AlmawdueaCategoryWithArticlesCopyWith(AlmawdueaCategoryWithArticles value, $Res Function(AlmawdueaCategoryWithArticles) _then) = _$AlmawdueaCategoryWithArticlesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos, dynamic parent, List<dynamic>? children, List<AlmawdueaHierarchy>? hierarchy, List<AlmawdueaArticle>? articles, AlmawdueaPagination? pagination
});


$AlmawdueaPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$AlmawdueaCategoryWithArticlesCopyWithImpl<$Res>
    implements $AlmawdueaCategoryWithArticlesCopyWith<$Res> {
  _$AlmawdueaCategoryWithArticlesCopyWithImpl(this._self, this._then);

  final AlmawdueaCategoryWithArticles _self;
  final $Res Function(AlmawdueaCategoryWithArticles) _then;

/// Create a copy of AlmawdueaCategoryWithArticles
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
as List<AlmawdueaHierarchy>?,articles: freezed == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<AlmawdueaArticle>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as AlmawdueaPagination?,
  ));
}
/// Create a copy of AlmawdueaCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlmawdueaPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $AlmawdueaPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [AlmawdueaCategoryWithArticles].
extension AlmawdueaCategoryWithArticlesPatterns on AlmawdueaCategoryWithArticles {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlmawdueaCategoryWithArticles value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlmawdueaCategoryWithArticles() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlmawdueaCategoryWithArticles value)  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaCategoryWithArticles():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlmawdueaCategoryWithArticles value)?  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaCategoryWithArticles() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos,  dynamic parent,  List<dynamic>? children,  List<AlmawdueaHierarchy>? hierarchy,  List<AlmawdueaArticle>? articles,  AlmawdueaPagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlmawdueaCategoryWithArticles() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos,  dynamic parent,  List<dynamic>? children,  List<AlmawdueaHierarchy>? hierarchy,  List<AlmawdueaArticle>? articles,  AlmawdueaPagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _AlmawdueaCategoryWithArticles():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt)  int? catPos,  dynamic parent,  List<dynamic>? children,  List<AlmawdueaHierarchy>? hierarchy,  List<AlmawdueaArticle>? articles,  AlmawdueaPagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _AlmawdueaCategoryWithArticles() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.parent,_that.children,_that.hierarchy,_that.articles,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlmawdueaCategoryWithArticles implements AlmawdueaCategoryWithArticles {
  const _AlmawdueaCategoryWithArticles({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt) this.catPos, this.parent, final  List<dynamic>? children, final  List<AlmawdueaHierarchy>? hierarchy, final  List<AlmawdueaArticle>? articles, this.pagination}): _children = children,_hierarchy = hierarchy,_articles = articles;
  factory _AlmawdueaCategoryWithArticles.fromJson(Map<String, dynamic> json) => _$AlmawdueaCategoryWithArticlesFromJson(json);

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

 final  List<AlmawdueaHierarchy>? _hierarchy;
@override List<AlmawdueaHierarchy>? get hierarchy {
  final value = _hierarchy;
  if (value == null) return null;
  if (_hierarchy is EqualUnmodifiableListView) return _hierarchy;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AlmawdueaArticle>? _articles;
@override List<AlmawdueaArticle>? get articles {
  final value = _articles;
  if (value == null) return null;
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  AlmawdueaPagination? pagination;

/// Create a copy of AlmawdueaCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlmawdueaCategoryWithArticlesCopyWith<_AlmawdueaCategoryWithArticles> get copyWith => __$AlmawdueaCategoryWithArticlesCopyWithImpl<_AlmawdueaCategoryWithArticles>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlmawdueaCategoryWithArticlesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlmawdueaCategoryWithArticles&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other._children, _children)&&const DeepCollectionEquality().equals(other._hierarchy, _hierarchy)&&const DeepCollectionEquality().equals(other._articles, _articles)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(_children),const DeepCollectionEquality().hash(_hierarchy),const DeepCollectionEquality().hash(_articles),pagination);

@override
String toString() {
  return 'AlmawdueaCategoryWithArticles(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, parent: $parent, children: $children, hierarchy: $hierarchy, articles: $articles, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$AlmawdueaCategoryWithArticlesCopyWith<$Res> implements $AlmawdueaCategoryWithArticlesCopyWith<$Res> {
  factory _$AlmawdueaCategoryWithArticlesCopyWith(_AlmawdueaCategoryWithArticles value, $Res Function(_AlmawdueaCategoryWithArticles) _then) = __$AlmawdueaCategoryWithArticlesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos, dynamic parent, List<dynamic>? children, List<AlmawdueaHierarchy>? hierarchy, List<AlmawdueaArticle>? articles, AlmawdueaPagination? pagination
});


@override $AlmawdueaPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$AlmawdueaCategoryWithArticlesCopyWithImpl<$Res>
    implements _$AlmawdueaCategoryWithArticlesCopyWith<$Res> {
  __$AlmawdueaCategoryWithArticlesCopyWithImpl(this._self, this._then);

  final _AlmawdueaCategoryWithArticles _self;
  final $Res Function(_AlmawdueaCategoryWithArticles) _then;

/// Create a copy of AlmawdueaCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? parent = freezed,Object? children = freezed,Object? hierarchy = freezed,Object? articles = freezed,Object? pagination = freezed,}) {
  return _then(_AlmawdueaCategoryWithArticles(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as int?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as dynamic,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,hierarchy: freezed == hierarchy ? _self._hierarchy : hierarchy // ignore: cast_nullable_to_non_nullable
as List<AlmawdueaHierarchy>?,articles: freezed == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<AlmawdueaArticle>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as AlmawdueaPagination?,
  ));
}

/// Create a copy of AlmawdueaCategoryWithArticles
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlmawdueaPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $AlmawdueaPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$AlmawdueaHierarchy {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'level', fromJson: _stringToInt) int? get level;
/// Create a copy of AlmawdueaHierarchy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlmawdueaHierarchyCopyWith<AlmawdueaHierarchy> get copyWith => _$AlmawdueaHierarchyCopyWithImpl<AlmawdueaHierarchy>(this as AlmawdueaHierarchy, _$identity);

  /// Serializes this AlmawdueaHierarchy to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlmawdueaHierarchy&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,level);

@override
String toString() {
  return 'AlmawdueaHierarchy(catId: $catId, catTitle: $catTitle, level: $level)';
}


}

/// @nodoc
abstract mixin class $AlmawdueaHierarchyCopyWith<$Res>  {
  factory $AlmawdueaHierarchyCopyWith(AlmawdueaHierarchy value, $Res Function(AlmawdueaHierarchy) _then) = _$AlmawdueaHierarchyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'level', fromJson: _stringToInt) int? level
});




}
/// @nodoc
class _$AlmawdueaHierarchyCopyWithImpl<$Res>
    implements $AlmawdueaHierarchyCopyWith<$Res> {
  _$AlmawdueaHierarchyCopyWithImpl(this._self, this._then);

  final AlmawdueaHierarchy _self;
  final $Res Function(AlmawdueaHierarchy) _then;

/// Create a copy of AlmawdueaHierarchy
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


/// Adds pattern-matching-related methods to [AlmawdueaHierarchy].
extension AlmawdueaHierarchyPatterns on AlmawdueaHierarchy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlmawdueaHierarchy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlmawdueaHierarchy() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlmawdueaHierarchy value)  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaHierarchy():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlmawdueaHierarchy value)?  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaHierarchy() when $default != null:
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
case _AlmawdueaHierarchy() when $default != null:
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
case _AlmawdueaHierarchy():
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
case _AlmawdueaHierarchy() when $default != null:
return $default(_that.catId,_that.catTitle,_that.level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlmawdueaHierarchy implements AlmawdueaHierarchy {
  const _AlmawdueaHierarchy({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'level', fromJson: _stringToInt) this.level});
  factory _AlmawdueaHierarchy.fromJson(Map<String, dynamic> json) => _$AlmawdueaHierarchyFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'level', fromJson: _stringToInt) final  int? level;

/// Create a copy of AlmawdueaHierarchy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlmawdueaHierarchyCopyWith<_AlmawdueaHierarchy> get copyWith => __$AlmawdueaHierarchyCopyWithImpl<_AlmawdueaHierarchy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlmawdueaHierarchyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlmawdueaHierarchy&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,level);

@override
String toString() {
  return 'AlmawdueaHierarchy(catId: $catId, catTitle: $catTitle, level: $level)';
}


}

/// @nodoc
abstract mixin class _$AlmawdueaHierarchyCopyWith<$Res> implements $AlmawdueaHierarchyCopyWith<$Res> {
  factory _$AlmawdueaHierarchyCopyWith(_AlmawdueaHierarchy value, $Res Function(_AlmawdueaHierarchy) _then) = __$AlmawdueaHierarchyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'level', fromJson: _stringToInt) int? level
});




}
/// @nodoc
class __$AlmawdueaHierarchyCopyWithImpl<$Res>
    implements _$AlmawdueaHierarchyCopyWith<$Res> {
  __$AlmawdueaHierarchyCopyWithImpl(this._self, this._then);

  final _AlmawdueaHierarchy _self;
  final $Res Function(_AlmawdueaHierarchy) _then;

/// Create a copy of AlmawdueaHierarchy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? level = freezed,}) {
  return _then(_AlmawdueaHierarchy(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$AlmawdueaCategory {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? get catPos; dynamic get parent; List<dynamic>? get children;
/// Create a copy of AlmawdueaCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlmawdueaCategoryCopyWith<AlmawdueaCategory> get copyWith => _$AlmawdueaCategoryCopyWithImpl<AlmawdueaCategory>(this as AlmawdueaCategory, _$identity);

  /// Serializes this AlmawdueaCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlmawdueaCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'AlmawdueaCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, parent: $parent, children: $children)';
}


}

/// @nodoc
abstract mixin class $AlmawdueaCategoryCopyWith<$Res>  {
  factory $AlmawdueaCategoryCopyWith(AlmawdueaCategory value, $Res Function(AlmawdueaCategory) _then) = _$AlmawdueaCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos, dynamic parent, List<dynamic>? children
});




}
/// @nodoc
class _$AlmawdueaCategoryCopyWithImpl<$Res>
    implements $AlmawdueaCategoryCopyWith<$Res> {
  _$AlmawdueaCategoryCopyWithImpl(this._self, this._then);

  final AlmawdueaCategory _self;
  final $Res Function(AlmawdueaCategory) _then;

/// Create a copy of AlmawdueaCategory
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


/// Adds pattern-matching-related methods to [AlmawdueaCategory].
extension AlmawdueaCategoryPatterns on AlmawdueaCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlmawdueaCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlmawdueaCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlmawdueaCategory value)  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlmawdueaCategory value)?  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaCategory() when $default != null:
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
case _AlmawdueaCategory() when $default != null:
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
case _AlmawdueaCategory():
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
case _AlmawdueaCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.parent,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlmawdueaCategory implements AlmawdueaCategory {
  const _AlmawdueaCategory({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt) this.catPos, this.parent, final  List<dynamic>? children}): _children = children;
  factory _AlmawdueaCategory.fromJson(Map<String, dynamic> json) => _$AlmawdueaCategoryFromJson(json);

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


/// Create a copy of AlmawdueaCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlmawdueaCategoryCopyWith<_AlmawdueaCategory> get copyWith => __$AlmawdueaCategoryCopyWithImpl<_AlmawdueaCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlmawdueaCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlmawdueaCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'AlmawdueaCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, parent: $parent, children: $children)';
}


}

/// @nodoc
abstract mixin class _$AlmawdueaCategoryCopyWith<$Res> implements $AlmawdueaCategoryCopyWith<$Res> {
  factory _$AlmawdueaCategoryCopyWith(_AlmawdueaCategory value, $Res Function(_AlmawdueaCategory) _then) = __$AlmawdueaCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos, dynamic parent, List<dynamic>? children
});




}
/// @nodoc
class __$AlmawdueaCategoryCopyWithImpl<$Res>
    implements _$AlmawdueaCategoryCopyWith<$Res> {
  __$AlmawdueaCategoryCopyWithImpl(this._self, this._then);

  final _AlmawdueaCategory _self;
  final $Res Function(_AlmawdueaCategory) _then;

/// Create a copy of AlmawdueaCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? parent = freezed,Object? children = freezed,}) {
  return _then(_AlmawdueaCategory(
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
mixin _$AlmawdueaArticle {

@JsonKey(name: 'article_id') int? get articleId;@JsonKey(name: 'article_title') String? get articleTitle;@JsonKey(name: 'article_summary') String? get articleSummary;@JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? get articleCatId;@JsonKey(name: 'article_pic') String? get articlePic;@JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? get articleVisitor;@JsonKey(name: 'article_priority', fromJson: _stringToInt) int? get articlePriority;@JsonKey(name: 'article_date') String? get articleDate;@JsonKey(name: 'article_active', fromJson: _stringToInt) int? get articleActive; AlmawdueaArticleCategory? get category;
/// Create a copy of AlmawdueaArticle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlmawdueaArticleCopyWith<AlmawdueaArticle> get copyWith => _$AlmawdueaArticleCopyWithImpl<AlmawdueaArticle>(this as AlmawdueaArticle, _$identity);

  /// Serializes this AlmawdueaArticle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlmawdueaArticle&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articlePriority, articlePriority) || other.articlePriority == articlePriority)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articleActive, articleActive) || other.articleActive == articleActive)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleSummary,articleCatId,articlePic,articleVisitor,articlePriority,articleDate,articleActive,category);

@override
String toString() {
  return 'AlmawdueaArticle(articleId: $articleId, articleTitle: $articleTitle, articleSummary: $articleSummary, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articlePriority: $articlePriority, articleDate: $articleDate, articleActive: $articleActive, category: $category)';
}


}

/// @nodoc
abstract mixin class $AlmawdueaArticleCopyWith<$Res>  {
  factory $AlmawdueaArticleCopyWith(AlmawdueaArticle value, $Res Function(AlmawdueaArticle) _then) = _$AlmawdueaArticleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'article_id') int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? articleVisitor,@JsonKey(name: 'article_priority', fromJson: _stringToInt) int? articlePriority,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_active', fromJson: _stringToInt) int? articleActive, AlmawdueaArticleCategory? category
});


$AlmawdueaArticleCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$AlmawdueaArticleCopyWithImpl<$Res>
    implements $AlmawdueaArticleCopyWith<$Res> {
  _$AlmawdueaArticleCopyWithImpl(this._self, this._then);

  final AlmawdueaArticle _self;
  final $Res Function(AlmawdueaArticle) _then;

/// Create a copy of AlmawdueaArticle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleSummary = freezed,Object? articleCatId = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articlePriority = freezed,Object? articleDate = freezed,Object? articleActive = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
articleId: freezed == articleId ? _self.articleId : articleId // ignore: cast_nullable_to_non_nullable
as int?,articleTitle: freezed == articleTitle ? _self.articleTitle : articleTitle // ignore: cast_nullable_to_non_nullable
as String?,articleSummary: freezed == articleSummary ? _self.articleSummary : articleSummary // ignore: cast_nullable_to_non_nullable
as String?,articleCatId: freezed == articleCatId ? _self.articleCatId : articleCatId // ignore: cast_nullable_to_non_nullable
as int?,articlePic: freezed == articlePic ? _self.articlePic : articlePic // ignore: cast_nullable_to_non_nullable
as String?,articleVisitor: freezed == articleVisitor ? _self.articleVisitor : articleVisitor // ignore: cast_nullable_to_non_nullable
as int?,articlePriority: freezed == articlePriority ? _self.articlePriority : articlePriority // ignore: cast_nullable_to_non_nullable
as int?,articleDate: freezed == articleDate ? _self.articleDate : articleDate // ignore: cast_nullable_to_non_nullable
as String?,articleActive: freezed == articleActive ? _self.articleActive : articleActive // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as AlmawdueaArticleCategory?,
  ));
}
/// Create a copy of AlmawdueaArticle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlmawdueaArticleCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $AlmawdueaArticleCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [AlmawdueaArticle].
extension AlmawdueaArticlePatterns on AlmawdueaArticle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlmawdueaArticle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlmawdueaArticle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlmawdueaArticle value)  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaArticle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlmawdueaArticle value)?  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaArticle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt)  int? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt)  int? articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt)  int? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt)  int? articleActive,  AlmawdueaArticleCategory? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlmawdueaArticle() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt)  int? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt)  int? articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt)  int? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt)  int? articleActive,  AlmawdueaArticleCategory? category)  $default,) {final _that = this;
switch (_that) {
case _AlmawdueaArticle():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt)  int? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt)  int? articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt)  int? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt)  int? articleActive,  AlmawdueaArticleCategory? category)?  $default,) {final _that = this;
switch (_that) {
case _AlmawdueaArticle() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articlePriority,_that.articleDate,_that.articleActive,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlmawdueaArticle implements AlmawdueaArticle {
  const _AlmawdueaArticle({@JsonKey(name: 'article_id') this.articleId, @JsonKey(name: 'article_title') this.articleTitle, @JsonKey(name: 'article_summary') this.articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt) this.articleCatId, @JsonKey(name: 'article_pic') this.articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt) this.articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt) this.articlePriority, @JsonKey(name: 'article_date') this.articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt) this.articleActive, this.category});
  factory _AlmawdueaArticle.fromJson(Map<String, dynamic> json) => _$AlmawdueaArticleFromJson(json);

@override@JsonKey(name: 'article_id') final  int? articleId;
@override@JsonKey(name: 'article_title') final  String? articleTitle;
@override@JsonKey(name: 'article_summary') final  String? articleSummary;
@override@JsonKey(name: 'article_cat_id', fromJson: _stringToInt) final  int? articleCatId;
@override@JsonKey(name: 'article_pic') final  String? articlePic;
@override@JsonKey(name: 'article_visitor', fromJson: _stringToInt) final  int? articleVisitor;
@override@JsonKey(name: 'article_priority', fromJson: _stringToInt) final  int? articlePriority;
@override@JsonKey(name: 'article_date') final  String? articleDate;
@override@JsonKey(name: 'article_active', fromJson: _stringToInt) final  int? articleActive;
@override final  AlmawdueaArticleCategory? category;

/// Create a copy of AlmawdueaArticle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlmawdueaArticleCopyWith<_AlmawdueaArticle> get copyWith => __$AlmawdueaArticleCopyWithImpl<_AlmawdueaArticle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlmawdueaArticleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlmawdueaArticle&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articlePriority, articlePriority) || other.articlePriority == articlePriority)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articleActive, articleActive) || other.articleActive == articleActive)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleSummary,articleCatId,articlePic,articleVisitor,articlePriority,articleDate,articleActive,category);

@override
String toString() {
  return 'AlmawdueaArticle(articleId: $articleId, articleTitle: $articleTitle, articleSummary: $articleSummary, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articlePriority: $articlePriority, articleDate: $articleDate, articleActive: $articleActive, category: $category)';
}


}

/// @nodoc
abstract mixin class _$AlmawdueaArticleCopyWith<$Res> implements $AlmawdueaArticleCopyWith<$Res> {
  factory _$AlmawdueaArticleCopyWith(_AlmawdueaArticle value, $Res Function(_AlmawdueaArticle) _then) = __$AlmawdueaArticleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'article_id') int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? articleVisitor,@JsonKey(name: 'article_priority', fromJson: _stringToInt) int? articlePriority,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_active', fromJson: _stringToInt) int? articleActive, AlmawdueaArticleCategory? category
});


@override $AlmawdueaArticleCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$AlmawdueaArticleCopyWithImpl<$Res>
    implements _$AlmawdueaArticleCopyWith<$Res> {
  __$AlmawdueaArticleCopyWithImpl(this._self, this._then);

  final _AlmawdueaArticle _self;
  final $Res Function(_AlmawdueaArticle) _then;

/// Create a copy of AlmawdueaArticle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleSummary = freezed,Object? articleCatId = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articlePriority = freezed,Object? articleDate = freezed,Object? articleActive = freezed,Object? category = freezed,}) {
  return _then(_AlmawdueaArticle(
articleId: freezed == articleId ? _self.articleId : articleId // ignore: cast_nullable_to_non_nullable
as int?,articleTitle: freezed == articleTitle ? _self.articleTitle : articleTitle // ignore: cast_nullable_to_non_nullable
as String?,articleSummary: freezed == articleSummary ? _self.articleSummary : articleSummary // ignore: cast_nullable_to_non_nullable
as String?,articleCatId: freezed == articleCatId ? _self.articleCatId : articleCatId // ignore: cast_nullable_to_non_nullable
as int?,articlePic: freezed == articlePic ? _self.articlePic : articlePic // ignore: cast_nullable_to_non_nullable
as String?,articleVisitor: freezed == articleVisitor ? _self.articleVisitor : articleVisitor // ignore: cast_nullable_to_non_nullable
as int?,articlePriority: freezed == articlePriority ? _self.articlePriority : articlePriority // ignore: cast_nullable_to_non_nullable
as int?,articleDate: freezed == articleDate ? _self.articleDate : articleDate // ignore: cast_nullable_to_non_nullable
as String?,articleActive: freezed == articleActive ? _self.articleActive : articleActive // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as AlmawdueaArticleCategory?,
  ));
}

/// Create a copy of AlmawdueaArticle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlmawdueaArticleCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $AlmawdueaArticleCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$AlmawdueaArticleCategory {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;
/// Create a copy of AlmawdueaArticleCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlmawdueaArticleCategoryCopyWith<AlmawdueaArticleCategory> get copyWith => _$AlmawdueaArticleCategoryCopyWithImpl<AlmawdueaArticleCategory>(this as AlmawdueaArticleCategory, _$identity);

  /// Serializes this AlmawdueaArticleCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlmawdueaArticleCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle);

@override
String toString() {
  return 'AlmawdueaArticleCategory(catId: $catId, catTitle: $catTitle)';
}


}

/// @nodoc
abstract mixin class $AlmawdueaArticleCategoryCopyWith<$Res>  {
  factory $AlmawdueaArticleCategoryCopyWith(AlmawdueaArticleCategory value, $Res Function(AlmawdueaArticleCategory) _then) = _$AlmawdueaArticleCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle
});




}
/// @nodoc
class _$AlmawdueaArticleCategoryCopyWithImpl<$Res>
    implements $AlmawdueaArticleCategoryCopyWith<$Res> {
  _$AlmawdueaArticleCategoryCopyWithImpl(this._self, this._then);

  final AlmawdueaArticleCategory _self;
  final $Res Function(AlmawdueaArticleCategory) _then;

/// Create a copy of AlmawdueaArticleCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catTitle = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AlmawdueaArticleCategory].
extension AlmawdueaArticleCategoryPatterns on AlmawdueaArticleCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlmawdueaArticleCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlmawdueaArticleCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlmawdueaArticleCategory value)  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaArticleCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlmawdueaArticleCategory value)?  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaArticleCategory() when $default != null:
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
case _AlmawdueaArticleCategory() when $default != null:
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
case _AlmawdueaArticleCategory():
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
case _AlmawdueaArticleCategory() when $default != null:
return $default(_that.catId,_that.catTitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlmawdueaArticleCategory implements AlmawdueaArticleCategory {
  const _AlmawdueaArticleCategory({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle});
  factory _AlmawdueaArticleCategory.fromJson(Map<String, dynamic> json) => _$AlmawdueaArticleCategoryFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;

/// Create a copy of AlmawdueaArticleCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlmawdueaArticleCategoryCopyWith<_AlmawdueaArticleCategory> get copyWith => __$AlmawdueaArticleCategoryCopyWithImpl<_AlmawdueaArticleCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlmawdueaArticleCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlmawdueaArticleCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle);

@override
String toString() {
  return 'AlmawdueaArticleCategory(catId: $catId, catTitle: $catTitle)';
}


}

/// @nodoc
abstract mixin class _$AlmawdueaArticleCategoryCopyWith<$Res> implements $AlmawdueaArticleCategoryCopyWith<$Res> {
  factory _$AlmawdueaArticleCategoryCopyWith(_AlmawdueaArticleCategory value, $Res Function(_AlmawdueaArticleCategory) _then) = __$AlmawdueaArticleCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle
});




}
/// @nodoc
class __$AlmawdueaArticleCategoryCopyWithImpl<$Res>
    implements _$AlmawdueaArticleCategoryCopyWith<$Res> {
  __$AlmawdueaArticleCategoryCopyWithImpl(this._self, this._then);

  final _AlmawdueaArticleCategory _self;
  final $Res Function(_AlmawdueaArticleCategory) _then;

/// Create a copy of AlmawdueaArticleCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,}) {
  return _then(_AlmawdueaArticleCategory(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AlmawdueaMeta {

 AlmawdueaPagination? get pagination;
/// Create a copy of AlmawdueaMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlmawdueaMetaCopyWith<AlmawdueaMeta> get copyWith => _$AlmawdueaMetaCopyWithImpl<AlmawdueaMeta>(this as AlmawdueaMeta, _$identity);

  /// Serializes this AlmawdueaMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlmawdueaMeta&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pagination);

@override
String toString() {
  return 'AlmawdueaMeta(pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $AlmawdueaMetaCopyWith<$Res>  {
  factory $AlmawdueaMetaCopyWith(AlmawdueaMeta value, $Res Function(AlmawdueaMeta) _then) = _$AlmawdueaMetaCopyWithImpl;
@useResult
$Res call({
 AlmawdueaPagination? pagination
});


$AlmawdueaPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$AlmawdueaMetaCopyWithImpl<$Res>
    implements $AlmawdueaMetaCopyWith<$Res> {
  _$AlmawdueaMetaCopyWithImpl(this._self, this._then);

  final AlmawdueaMeta _self;
  final $Res Function(AlmawdueaMeta) _then;

/// Create a copy of AlmawdueaMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagination = freezed,}) {
  return _then(_self.copyWith(
pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as AlmawdueaPagination?,
  ));
}
/// Create a copy of AlmawdueaMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlmawdueaPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $AlmawdueaPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [AlmawdueaMeta].
extension AlmawdueaMetaPatterns on AlmawdueaMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlmawdueaMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlmawdueaMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlmawdueaMeta value)  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlmawdueaMeta value)?  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AlmawdueaPagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlmawdueaMeta() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AlmawdueaPagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _AlmawdueaMeta():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AlmawdueaPagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _AlmawdueaMeta() when $default != null:
return $default(_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlmawdueaMeta implements AlmawdueaMeta {
  const _AlmawdueaMeta({this.pagination});
  factory _AlmawdueaMeta.fromJson(Map<String, dynamic> json) => _$AlmawdueaMetaFromJson(json);

@override final  AlmawdueaPagination? pagination;

/// Create a copy of AlmawdueaMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlmawdueaMetaCopyWith<_AlmawdueaMeta> get copyWith => __$AlmawdueaMetaCopyWithImpl<_AlmawdueaMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlmawdueaMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlmawdueaMeta&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pagination);

@override
String toString() {
  return 'AlmawdueaMeta(pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$AlmawdueaMetaCopyWith<$Res> implements $AlmawdueaMetaCopyWith<$Res> {
  factory _$AlmawdueaMetaCopyWith(_AlmawdueaMeta value, $Res Function(_AlmawdueaMeta) _then) = __$AlmawdueaMetaCopyWithImpl;
@override @useResult
$Res call({
 AlmawdueaPagination? pagination
});


@override $AlmawdueaPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$AlmawdueaMetaCopyWithImpl<$Res>
    implements _$AlmawdueaMetaCopyWith<$Res> {
  __$AlmawdueaMetaCopyWithImpl(this._self, this._then);

  final _AlmawdueaMeta _self;
  final $Res Function(_AlmawdueaMeta) _then;

/// Create a copy of AlmawdueaMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagination = freezed,}) {
  return _then(_AlmawdueaMeta(
pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as AlmawdueaPagination?,
  ));
}

/// Create a copy of AlmawdueaMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlmawdueaPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $AlmawdueaPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$AlmawdueaPagination {

@JsonKey(name: 'total', fromJson: _stringToInt) int? get total;@JsonKey(name: 'count', fromJson: _stringToInt) int? get count;@JsonKey(name: 'per_page', fromJson: _stringToInt) int? get perPage;@JsonKey(name: 'current_page', fromJson: _stringToInt) int? get currentPage;@JsonKey(name: 'last_page', fromJson: _stringToInt) int? get lastPage;@JsonKey(name: 'from', fromJson: _stringToInt) int? get from;@JsonKey(name: 'to', fromJson: _stringToInt) int? get to;
/// Create a copy of AlmawdueaPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlmawdueaPaginationCopyWith<AlmawdueaPagination> get copyWith => _$AlmawdueaPaginationCopyWithImpl<AlmawdueaPagination>(this as AlmawdueaPagination, _$identity);

  /// Serializes this AlmawdueaPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlmawdueaPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'AlmawdueaPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $AlmawdueaPaginationCopyWith<$Res>  {
  factory $AlmawdueaPaginationCopyWith(AlmawdueaPagination value, $Res Function(AlmawdueaPagination) _then) = _$AlmawdueaPaginationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total', fromJson: _stringToInt) int? total,@JsonKey(name: 'count', fromJson: _stringToInt) int? count,@JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,@JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,@JsonKey(name: 'last_page', fromJson: _stringToInt) int? lastPage,@JsonKey(name: 'from', fromJson: _stringToInt) int? from,@JsonKey(name: 'to', fromJson: _stringToInt) int? to
});




}
/// @nodoc
class _$AlmawdueaPaginationCopyWithImpl<$Res>
    implements $AlmawdueaPaginationCopyWith<$Res> {
  _$AlmawdueaPaginationCopyWithImpl(this._self, this._then);

  final AlmawdueaPagination _self;
  final $Res Function(AlmawdueaPagination) _then;

/// Create a copy of AlmawdueaPagination
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


/// Adds pattern-matching-related methods to [AlmawdueaPagination].
extension AlmawdueaPaginationPatterns on AlmawdueaPagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlmawdueaPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlmawdueaPagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlmawdueaPagination value)  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaPagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlmawdueaPagination value)?  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaPagination() when $default != null:
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
case _AlmawdueaPagination() when $default != null:
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
case _AlmawdueaPagination():
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
case _AlmawdueaPagination() when $default != null:
return $default(_that.total,_that.count,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlmawdueaPagination implements AlmawdueaPagination {
  const _AlmawdueaPagination({@JsonKey(name: 'total', fromJson: _stringToInt) this.total, @JsonKey(name: 'count', fromJson: _stringToInt) this.count, @JsonKey(name: 'per_page', fromJson: _stringToInt) this.perPage, @JsonKey(name: 'current_page', fromJson: _stringToInt) this.currentPage, @JsonKey(name: 'last_page', fromJson: _stringToInt) this.lastPage, @JsonKey(name: 'from', fromJson: _stringToInt) this.from, @JsonKey(name: 'to', fromJson: _stringToInt) this.to});
  factory _AlmawdueaPagination.fromJson(Map<String, dynamic> json) => _$AlmawdueaPaginationFromJson(json);

@override@JsonKey(name: 'total', fromJson: _stringToInt) final  int? total;
@override@JsonKey(name: 'count', fromJson: _stringToInt) final  int? count;
@override@JsonKey(name: 'per_page', fromJson: _stringToInt) final  int? perPage;
@override@JsonKey(name: 'current_page', fromJson: _stringToInt) final  int? currentPage;
@override@JsonKey(name: 'last_page', fromJson: _stringToInt) final  int? lastPage;
@override@JsonKey(name: 'from', fromJson: _stringToInt) final  int? from;
@override@JsonKey(name: 'to', fromJson: _stringToInt) final  int? to;

/// Create a copy of AlmawdueaPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlmawdueaPaginationCopyWith<_AlmawdueaPagination> get copyWith => __$AlmawdueaPaginationCopyWithImpl<_AlmawdueaPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlmawdueaPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlmawdueaPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'AlmawdueaPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$AlmawdueaPaginationCopyWith<$Res> implements $AlmawdueaPaginationCopyWith<$Res> {
  factory _$AlmawdueaPaginationCopyWith(_AlmawdueaPagination value, $Res Function(_AlmawdueaPagination) _then) = __$AlmawdueaPaginationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total', fromJson: _stringToInt) int? total,@JsonKey(name: 'count', fromJson: _stringToInt) int? count,@JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,@JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,@JsonKey(name: 'last_page', fromJson: _stringToInt) int? lastPage,@JsonKey(name: 'from', fromJson: _stringToInt) int? from,@JsonKey(name: 'to', fromJson: _stringToInt) int? to
});




}
/// @nodoc
class __$AlmawdueaPaginationCopyWithImpl<$Res>
    implements _$AlmawdueaPaginationCopyWith<$Res> {
  __$AlmawdueaPaginationCopyWithImpl(this._self, this._then);

  final _AlmawdueaPagination _self;
  final $Res Function(_AlmawdueaPagination) _then;

/// Create a copy of AlmawdueaPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? count = freezed,Object? perPage = freezed,Object? currentPage = freezed,Object? lastPage = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_AlmawdueaPagination(
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
mixin _$AlmawdueaArticleDetailModel {

 String? get status; AlmawdueaArticleDetailData? get data;
/// Create a copy of AlmawdueaArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlmawdueaArticleDetailModelCopyWith<AlmawdueaArticleDetailModel> get copyWith => _$AlmawdueaArticleDetailModelCopyWithImpl<AlmawdueaArticleDetailModel>(this as AlmawdueaArticleDetailModel, _$identity);

  /// Serializes this AlmawdueaArticleDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlmawdueaArticleDetailModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'AlmawdueaArticleDetailModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $AlmawdueaArticleDetailModelCopyWith<$Res>  {
  factory $AlmawdueaArticleDetailModelCopyWith(AlmawdueaArticleDetailModel value, $Res Function(AlmawdueaArticleDetailModel) _then) = _$AlmawdueaArticleDetailModelCopyWithImpl;
@useResult
$Res call({
 String? status, AlmawdueaArticleDetailData? data
});


$AlmawdueaArticleDetailDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$AlmawdueaArticleDetailModelCopyWithImpl<$Res>
    implements $AlmawdueaArticleDetailModelCopyWith<$Res> {
  _$AlmawdueaArticleDetailModelCopyWithImpl(this._self, this._then);

  final AlmawdueaArticleDetailModel _self;
  final $Res Function(AlmawdueaArticleDetailModel) _then;

/// Create a copy of AlmawdueaArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AlmawdueaArticleDetailData?,
  ));
}
/// Create a copy of AlmawdueaArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlmawdueaArticleDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AlmawdueaArticleDetailDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AlmawdueaArticleDetailModel].
extension AlmawdueaArticleDetailModelPatterns on AlmawdueaArticleDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlmawdueaArticleDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlmawdueaArticleDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlmawdueaArticleDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  AlmawdueaArticleDetailData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  AlmawdueaArticleDetailData? data)  $default,) {final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  AlmawdueaArticleDetailData? data)?  $default,) {final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailModel() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlmawdueaArticleDetailModel implements AlmawdueaArticleDetailModel {
  const _AlmawdueaArticleDetailModel({this.status, this.data});
  factory _AlmawdueaArticleDetailModel.fromJson(Map<String, dynamic> json) => _$AlmawdueaArticleDetailModelFromJson(json);

@override final  String? status;
@override final  AlmawdueaArticleDetailData? data;

/// Create a copy of AlmawdueaArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlmawdueaArticleDetailModelCopyWith<_AlmawdueaArticleDetailModel> get copyWith => __$AlmawdueaArticleDetailModelCopyWithImpl<_AlmawdueaArticleDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlmawdueaArticleDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlmawdueaArticleDetailModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'AlmawdueaArticleDetailModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AlmawdueaArticleDetailModelCopyWith<$Res> implements $AlmawdueaArticleDetailModelCopyWith<$Res> {
  factory _$AlmawdueaArticleDetailModelCopyWith(_AlmawdueaArticleDetailModel value, $Res Function(_AlmawdueaArticleDetailModel) _then) = __$AlmawdueaArticleDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, AlmawdueaArticleDetailData? data
});


@override $AlmawdueaArticleDetailDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$AlmawdueaArticleDetailModelCopyWithImpl<$Res>
    implements _$AlmawdueaArticleDetailModelCopyWith<$Res> {
  __$AlmawdueaArticleDetailModelCopyWithImpl(this._self, this._then);

  final _AlmawdueaArticleDetailModel _self;
  final $Res Function(_AlmawdueaArticleDetailModel) _then;

/// Create a copy of AlmawdueaArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,}) {
  return _then(_AlmawdueaArticleDetailModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AlmawdueaArticleDetailData?,
  ));
}

/// Create a copy of AlmawdueaArticleDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlmawdueaArticleDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AlmawdueaArticleDetailDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AlmawdueaArticleDetailData {

@JsonKey(name: 'article_id', fromJson: _stringToInt) int? get articleId;@JsonKey(name: 'article_title') String? get articleTitle;@JsonKey(name: 'article_des') String? get articleDes;@JsonKey(name: 'article_summary') String? get articleSummary;@JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? get articleCatId;@JsonKey(name: 'article_pic') String? get articlePic;@JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? get articleVisitor;@JsonKey(name: 'article_priority', fromJson: _stringToInt) int? get articlePriority;@JsonKey(name: 'article_date') String? get articleDate;@JsonKey(name: 'article_active', fromJson: _stringToInt) int? get articleActive; AlmawdueaArticleDetailCategory? get category;
/// Create a copy of AlmawdueaArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlmawdueaArticleDetailDataCopyWith<AlmawdueaArticleDetailData> get copyWith => _$AlmawdueaArticleDetailDataCopyWithImpl<AlmawdueaArticleDetailData>(this as AlmawdueaArticleDetailData, _$identity);

  /// Serializes this AlmawdueaArticleDetailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlmawdueaArticleDetailData&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articlePriority, articlePriority) || other.articlePriority == articlePriority)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articleActive, articleActive) || other.articleActive == articleActive)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleDes,articleSummary,articleCatId,articlePic,articleVisitor,articlePriority,articleDate,articleActive,category);

@override
String toString() {
  return 'AlmawdueaArticleDetailData(articleId: $articleId, articleTitle: $articleTitle, articleDes: $articleDes, articleSummary: $articleSummary, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articlePriority: $articlePriority, articleDate: $articleDate, articleActive: $articleActive, category: $category)';
}


}

/// @nodoc
abstract mixin class $AlmawdueaArticleDetailDataCopyWith<$Res>  {
  factory $AlmawdueaArticleDetailDataCopyWith(AlmawdueaArticleDetailData value, $Res Function(AlmawdueaArticleDetailData) _then) = _$AlmawdueaArticleDetailDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? articleVisitor,@JsonKey(name: 'article_priority', fromJson: _stringToInt) int? articlePriority,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_active', fromJson: _stringToInt) int? articleActive, AlmawdueaArticleDetailCategory? category
});


$AlmawdueaArticleDetailCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$AlmawdueaArticleDetailDataCopyWithImpl<$Res>
    implements $AlmawdueaArticleDetailDataCopyWith<$Res> {
  _$AlmawdueaArticleDetailDataCopyWithImpl(this._self, this._then);

  final AlmawdueaArticleDetailData _self;
  final $Res Function(AlmawdueaArticleDetailData) _then;

/// Create a copy of AlmawdueaArticleDetailData
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
as AlmawdueaArticleDetailCategory?,
  ));
}
/// Create a copy of AlmawdueaArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlmawdueaArticleDetailCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $AlmawdueaArticleDetailCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [AlmawdueaArticleDetailData].
extension AlmawdueaArticleDetailDataPatterns on AlmawdueaArticleDetailData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlmawdueaArticleDetailData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlmawdueaArticleDetailData value)  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlmawdueaArticleDetailData value)?  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id', fromJson: _stringToInt)  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt)  int? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt)  int? articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt)  int? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt)  int? articleActive,  AlmawdueaArticleDetailCategory? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id', fromJson: _stringToInt)  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt)  int? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt)  int? articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt)  int? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt)  int? articleActive,  AlmawdueaArticleDetailCategory? category)  $default,) {final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'article_id', fromJson: _stringToInt)  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt)  int? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt)  int? articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt)  int? articlePriority, @JsonKey(name: 'article_date')  String? articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt)  int? articleActive,  AlmawdueaArticleDetailCategory? category)?  $default,) {final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailData() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleDes,_that.articleSummary,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articlePriority,_that.articleDate,_that.articleActive,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlmawdueaArticleDetailData implements AlmawdueaArticleDetailData {
  const _AlmawdueaArticleDetailData({@JsonKey(name: 'article_id', fromJson: _stringToInt) this.articleId, @JsonKey(name: 'article_title') this.articleTitle, @JsonKey(name: 'article_des') this.articleDes, @JsonKey(name: 'article_summary') this.articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _stringToInt) this.articleCatId, @JsonKey(name: 'article_pic') this.articlePic, @JsonKey(name: 'article_visitor', fromJson: _stringToInt) this.articleVisitor, @JsonKey(name: 'article_priority', fromJson: _stringToInt) this.articlePriority, @JsonKey(name: 'article_date') this.articleDate, @JsonKey(name: 'article_active', fromJson: _stringToInt) this.articleActive, this.category});
  factory _AlmawdueaArticleDetailData.fromJson(Map<String, dynamic> json) => _$AlmawdueaArticleDetailDataFromJson(json);

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
@override final  AlmawdueaArticleDetailCategory? category;

/// Create a copy of AlmawdueaArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlmawdueaArticleDetailDataCopyWith<_AlmawdueaArticleDetailData> get copyWith => __$AlmawdueaArticleDetailDataCopyWithImpl<_AlmawdueaArticleDetailData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlmawdueaArticleDetailDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlmawdueaArticleDetailData&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articlePriority, articlePriority) || other.articlePriority == articlePriority)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.articleActive, articleActive) || other.articleActive == articleActive)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleDes,articleSummary,articleCatId,articlePic,articleVisitor,articlePriority,articleDate,articleActive,category);

@override
String toString() {
  return 'AlmawdueaArticleDetailData(articleId: $articleId, articleTitle: $articleTitle, articleDes: $articleDes, articleSummary: $articleSummary, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articlePriority: $articlePriority, articleDate: $articleDate, articleActive: $articleActive, category: $category)';
}


}

/// @nodoc
abstract mixin class _$AlmawdueaArticleDetailDataCopyWith<$Res> implements $AlmawdueaArticleDetailDataCopyWith<$Res> {
  factory _$AlmawdueaArticleDetailDataCopyWith(_AlmawdueaArticleDetailData value, $Res Function(_AlmawdueaArticleDetailData) _then) = __$AlmawdueaArticleDetailDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? articleVisitor,@JsonKey(name: 'article_priority', fromJson: _stringToInt) int? articlePriority,@JsonKey(name: 'article_date') String? articleDate,@JsonKey(name: 'article_active', fromJson: _stringToInt) int? articleActive, AlmawdueaArticleDetailCategory? category
});


@override $AlmawdueaArticleDetailCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$AlmawdueaArticleDetailDataCopyWithImpl<$Res>
    implements _$AlmawdueaArticleDetailDataCopyWith<$Res> {
  __$AlmawdueaArticleDetailDataCopyWithImpl(this._self, this._then);

  final _AlmawdueaArticleDetailData _self;
  final $Res Function(_AlmawdueaArticleDetailData) _then;

/// Create a copy of AlmawdueaArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleDes = freezed,Object? articleSummary = freezed,Object? articleCatId = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articlePriority = freezed,Object? articleDate = freezed,Object? articleActive = freezed,Object? category = freezed,}) {
  return _then(_AlmawdueaArticleDetailData(
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
as AlmawdueaArticleDetailCategory?,
  ));
}

/// Create a copy of AlmawdueaArticleDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlmawdueaArticleDetailCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $AlmawdueaArticleDetailCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$AlmawdueaArticleDetailCategory {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? get catPos;@JsonKey(name: 'cat_father_id', fromJson: _stringToInt) int? get catFatherId;
/// Create a copy of AlmawdueaArticleDetailCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlmawdueaArticleDetailCategoryCopyWith<AlmawdueaArticleDetailCategory> get copyWith => _$AlmawdueaArticleDetailCategoryCopyWithImpl<AlmawdueaArticleDetailCategory>(this as AlmawdueaArticleDetailCategory, _$identity);

  /// Serializes this AlmawdueaArticleDetailCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlmawdueaArticleDetailCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,catFatherId);

@override
String toString() {
  return 'AlmawdueaArticleDetailCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catFatherId: $catFatherId)';
}


}

/// @nodoc
abstract mixin class $AlmawdueaArticleDetailCategoryCopyWith<$Res>  {
  factory $AlmawdueaArticleDetailCategoryCopyWith(AlmawdueaArticleDetailCategory value, $Res Function(AlmawdueaArticleDetailCategory) _then) = _$AlmawdueaArticleDetailCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,@JsonKey(name: 'cat_father_id', fromJson: _stringToInt) int? catFatherId
});




}
/// @nodoc
class _$AlmawdueaArticleDetailCategoryCopyWithImpl<$Res>
    implements $AlmawdueaArticleDetailCategoryCopyWith<$Res> {
  _$AlmawdueaArticleDetailCategoryCopyWithImpl(this._self, this._then);

  final AlmawdueaArticleDetailCategory _self;
  final $Res Function(AlmawdueaArticleDetailCategory) _then;

/// Create a copy of AlmawdueaArticleDetailCategory
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


/// Adds pattern-matching-related methods to [AlmawdueaArticleDetailCategory].
extension AlmawdueaArticleDetailCategoryPatterns on AlmawdueaArticleDetailCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlmawdueaArticleDetailCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlmawdueaArticleDetailCategory value)  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlmawdueaArticleDetailCategory value)?  $default,){
final _that = this;
switch (_that) {
case _AlmawdueaArticleDetailCategory() when $default != null:
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
case _AlmawdueaArticleDetailCategory() when $default != null:
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
case _AlmawdueaArticleDetailCategory():
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
case _AlmawdueaArticleDetailCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catFatherId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlmawdueaArticleDetailCategory implements AlmawdueaArticleDetailCategory {
  const _AlmawdueaArticleDetailCategory({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos', fromJson: _stringToInt) this.catPos, @JsonKey(name: 'cat_father_id', fromJson: _stringToInt) this.catFatherId});
  factory _AlmawdueaArticleDetailCategory.fromJson(Map<String, dynamic> json) => _$AlmawdueaArticleDetailCategoryFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_pos', fromJson: _stringToInt) final  int? catPos;
@override@JsonKey(name: 'cat_father_id', fromJson: _stringToInt) final  int? catFatherId;

/// Create a copy of AlmawdueaArticleDetailCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlmawdueaArticleDetailCategoryCopyWith<_AlmawdueaArticleDetailCategory> get copyWith => __$AlmawdueaArticleDetailCategoryCopyWithImpl<_AlmawdueaArticleDetailCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlmawdueaArticleDetailCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlmawdueaArticleDetailCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catPos,catFatherId);

@override
String toString() {
  return 'AlmawdueaArticleDetailCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catFatherId: $catFatherId)';
}


}

/// @nodoc
abstract mixin class _$AlmawdueaArticleDetailCategoryCopyWith<$Res> implements $AlmawdueaArticleDetailCategoryCopyWith<$Res> {
  factory _$AlmawdueaArticleDetailCategoryCopyWith(_AlmawdueaArticleDetailCategory value, $Res Function(_AlmawdueaArticleDetailCategory) _then) = __$AlmawdueaArticleDetailCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,@JsonKey(name: 'cat_father_id', fromJson: _stringToInt) int? catFatherId
});




}
/// @nodoc
class __$AlmawdueaArticleDetailCategoryCopyWithImpl<$Res>
    implements _$AlmawdueaArticleDetailCategoryCopyWith<$Res> {
  __$AlmawdueaArticleDetailCategoryCopyWithImpl(this._self, this._then);

  final _AlmawdueaArticleDetailCategory _self;
  final $Res Function(_AlmawdueaArticleDetailCategory) _then;

/// Create a copy of AlmawdueaArticleDetailCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? catFatherId = freezed,}) {
  return _then(_AlmawdueaArticleDetailCategory(
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
