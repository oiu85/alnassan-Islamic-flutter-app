// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'words_on_occasions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WordsOnOccasionsModel {

 String? get status; WordsOnOccasionsData? get data; WordsOnOccasionsMeta? get meta;
/// Create a copy of WordsOnOccasionsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordsOnOccasionsModelCopyWith<WordsOnOccasionsModel> get copyWith => _$WordsOnOccasionsModelCopyWithImpl<WordsOnOccasionsModel>(this as WordsOnOccasionsModel, _$identity);

  /// Serializes this WordsOnOccasionsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordsOnOccasionsModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,meta);

@override
String toString() {
  return 'WordsOnOccasionsModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $WordsOnOccasionsModelCopyWith<$Res>  {
  factory $WordsOnOccasionsModelCopyWith(WordsOnOccasionsModel value, $Res Function(WordsOnOccasionsModel) _then) = _$WordsOnOccasionsModelCopyWithImpl;
@useResult
$Res call({
 String? status, WordsOnOccasionsData? data, WordsOnOccasionsMeta? meta
});


$WordsOnOccasionsDataCopyWith<$Res>? get data;$WordsOnOccasionsMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$WordsOnOccasionsModelCopyWithImpl<$Res>
    implements $WordsOnOccasionsModelCopyWith<$Res> {
  _$WordsOnOccasionsModelCopyWithImpl(this._self, this._then);

  final WordsOnOccasionsModel _self;
  final $Res Function(WordsOnOccasionsModel) _then;

/// Create a copy of WordsOnOccasionsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as WordsOnOccasionsData?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as WordsOnOccasionsMeta?,
  ));
}
/// Create a copy of WordsOnOccasionsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordsOnOccasionsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $WordsOnOccasionsDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of WordsOnOccasionsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordsOnOccasionsMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $WordsOnOccasionsMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [WordsOnOccasionsModel].
extension WordsOnOccasionsModelPatterns on WordsOnOccasionsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordsOnOccasionsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordsOnOccasionsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordsOnOccasionsModel value)  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordsOnOccasionsModel value)?  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  WordsOnOccasionsData? data,  WordsOnOccasionsMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordsOnOccasionsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  WordsOnOccasionsData? data,  WordsOnOccasionsMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _WordsOnOccasionsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  WordsOnOccasionsData? data,  WordsOnOccasionsMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _WordsOnOccasionsModel() when $default != null:
return $default(_that.status,_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordsOnOccasionsModel implements WordsOnOccasionsModel {
  const _WordsOnOccasionsModel({this.status, this.data, this.meta});
  factory _WordsOnOccasionsModel.fromJson(Map<String, dynamic> json) => _$WordsOnOccasionsModelFromJson(json);

@override final  String? status;
@override final  WordsOnOccasionsData? data;
@override final  WordsOnOccasionsMeta? meta;

/// Create a copy of WordsOnOccasionsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordsOnOccasionsModelCopyWith<_WordsOnOccasionsModel> get copyWith => __$WordsOnOccasionsModelCopyWithImpl<_WordsOnOccasionsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordsOnOccasionsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordsOnOccasionsModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,meta);

@override
String toString() {
  return 'WordsOnOccasionsModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$WordsOnOccasionsModelCopyWith<$Res> implements $WordsOnOccasionsModelCopyWith<$Res> {
  factory _$WordsOnOccasionsModelCopyWith(_WordsOnOccasionsModel value, $Res Function(_WordsOnOccasionsModel) _then) = __$WordsOnOccasionsModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, WordsOnOccasionsData? data, WordsOnOccasionsMeta? meta
});


@override $WordsOnOccasionsDataCopyWith<$Res>? get data;@override $WordsOnOccasionsMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$WordsOnOccasionsModelCopyWithImpl<$Res>
    implements _$WordsOnOccasionsModelCopyWith<$Res> {
  __$WordsOnOccasionsModelCopyWithImpl(this._self, this._then);

  final _WordsOnOccasionsModel _self;
  final $Res Function(_WordsOnOccasionsModel) _then;

/// Create a copy of WordsOnOccasionsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_WordsOnOccasionsModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as WordsOnOccasionsData?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as WordsOnOccasionsMeta?,
  ));
}

/// Create a copy of WordsOnOccasionsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordsOnOccasionsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $WordsOnOccasionsDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of WordsOnOccasionsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordsOnOccasionsMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $WordsOnOccasionsMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$WordsOnOccasionsData {

@JsonKey(name: 'sub_categories') List<WordsOnOccasionsCategory>? get subCategories;
/// Create a copy of WordsOnOccasionsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordsOnOccasionsDataCopyWith<WordsOnOccasionsData> get copyWith => _$WordsOnOccasionsDataCopyWithImpl<WordsOnOccasionsData>(this as WordsOnOccasionsData, _$identity);

  /// Serializes this WordsOnOccasionsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordsOnOccasionsData&&const DeepCollectionEquality().equals(other.subCategories, subCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(subCategories));

@override
String toString() {
  return 'WordsOnOccasionsData(subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class $WordsOnOccasionsDataCopyWith<$Res>  {
  factory $WordsOnOccasionsDataCopyWith(WordsOnOccasionsData value, $Res Function(WordsOnOccasionsData) _then) = _$WordsOnOccasionsDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sub_categories') List<WordsOnOccasionsCategory>? subCategories
});




}
/// @nodoc
class _$WordsOnOccasionsDataCopyWithImpl<$Res>
    implements $WordsOnOccasionsDataCopyWith<$Res> {
  _$WordsOnOccasionsDataCopyWithImpl(this._self, this._then);

  final WordsOnOccasionsData _self;
  final $Res Function(WordsOnOccasionsData) _then;

/// Create a copy of WordsOnOccasionsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subCategories = freezed,}) {
  return _then(_self.copyWith(
subCategories: freezed == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<WordsOnOccasionsCategory>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordsOnOccasionsData].
extension WordsOnOccasionsDataPatterns on WordsOnOccasionsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordsOnOccasionsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordsOnOccasionsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordsOnOccasionsData value)  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordsOnOccasionsData value)?  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sub_categories')  List<WordsOnOccasionsCategory>? subCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordsOnOccasionsData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sub_categories')  List<WordsOnOccasionsCategory>? subCategories)  $default,) {final _that = this;
switch (_that) {
case _WordsOnOccasionsData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sub_categories')  List<WordsOnOccasionsCategory>? subCategories)?  $default,) {final _that = this;
switch (_that) {
case _WordsOnOccasionsData() when $default != null:
return $default(_that.subCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordsOnOccasionsData implements WordsOnOccasionsData {
  const _WordsOnOccasionsData({@JsonKey(name: 'sub_categories') final  List<WordsOnOccasionsCategory>? subCategories}): _subCategories = subCategories;
  factory _WordsOnOccasionsData.fromJson(Map<String, dynamic> json) => _$WordsOnOccasionsDataFromJson(json);

 final  List<WordsOnOccasionsCategory>? _subCategories;
@override@JsonKey(name: 'sub_categories') List<WordsOnOccasionsCategory>? get subCategories {
  final value = _subCategories;
  if (value == null) return null;
  if (_subCategories is EqualUnmodifiableListView) return _subCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of WordsOnOccasionsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordsOnOccasionsDataCopyWith<_WordsOnOccasionsData> get copyWith => __$WordsOnOccasionsDataCopyWithImpl<_WordsOnOccasionsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordsOnOccasionsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordsOnOccasionsData&&const DeepCollectionEquality().equals(other._subCategories, _subCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_subCategories));

@override
String toString() {
  return 'WordsOnOccasionsData(subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class _$WordsOnOccasionsDataCopyWith<$Res> implements $WordsOnOccasionsDataCopyWith<$Res> {
  factory _$WordsOnOccasionsDataCopyWith(_WordsOnOccasionsData value, $Res Function(_WordsOnOccasionsData) _then) = __$WordsOnOccasionsDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sub_categories') List<WordsOnOccasionsCategory>? subCategories
});




}
/// @nodoc
class __$WordsOnOccasionsDataCopyWithImpl<$Res>
    implements _$WordsOnOccasionsDataCopyWith<$Res> {
  __$WordsOnOccasionsDataCopyWithImpl(this._self, this._then);

  final _WordsOnOccasionsData _self;
  final $Res Function(_WordsOnOccasionsData) _then;

/// Create a copy of WordsOnOccasionsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subCategories = freezed,}) {
  return _then(_WordsOnOccasionsData(
subCategories: freezed == subCategories ? _self._subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<WordsOnOccasionsCategory>?,
  ));
}


}


/// @nodoc
mixin _$WordsOnOccasionsCategory {

@JsonKey(name: 'cat_id') int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_menus', fromJson: _intToString) String? get catMenus;@JsonKey(name: 'cat_pos', fromJson: _intToString) String? get catPos;@JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString) String? get catInSubMenu; WordsOnOccasionsArticlesWrapper? get articles;
/// Create a copy of WordsOnOccasionsCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordsOnOccasionsCategoryCopyWith<WordsOnOccasionsCategory> get copyWith => _$WordsOnOccasionsCategoryCopyWithImpl<WordsOnOccasionsCategory>(this as WordsOnOccasionsCategory, _$identity);

  /// Serializes this WordsOnOccasionsCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordsOnOccasionsCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catInSubMenu, catInSubMenu) || other.catInSubMenu == catInSubMenu)&&(identical(other.articles, articles) || other.articles == articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catMenus,catPos,catInSubMenu,articles);

@override
String toString() {
  return 'WordsOnOccasionsCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catMenus: $catMenus, catPos: $catPos, catInSubMenu: $catInSubMenu, articles: $articles)';
}


}

/// @nodoc
abstract mixin class $WordsOnOccasionsCategoryCopyWith<$Res>  {
  factory $WordsOnOccasionsCategoryCopyWith(WordsOnOccasionsCategory value, $Res Function(WordsOnOccasionsCategory) _then) = _$WordsOnOccasionsCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_menus', fromJson: _intToString) String? catMenus,@JsonKey(name: 'cat_pos', fromJson: _intToString) String? catPos,@JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString) String? catInSubMenu, WordsOnOccasionsArticlesWrapper? articles
});


$WordsOnOccasionsArticlesWrapperCopyWith<$Res>? get articles;

}
/// @nodoc
class _$WordsOnOccasionsCategoryCopyWithImpl<$Res>
    implements $WordsOnOccasionsCategoryCopyWith<$Res> {
  _$WordsOnOccasionsCategoryCopyWithImpl(this._self, this._then);

  final WordsOnOccasionsCategory _self;
  final $Res Function(WordsOnOccasionsCategory) _then;

/// Create a copy of WordsOnOccasionsCategory
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
as WordsOnOccasionsArticlesWrapper?,
  ));
}
/// Create a copy of WordsOnOccasionsCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordsOnOccasionsArticlesWrapperCopyWith<$Res>? get articles {
    if (_self.articles == null) {
    return null;
  }

  return $WordsOnOccasionsArticlesWrapperCopyWith<$Res>(_self.articles!, (value) {
    return _then(_self.copyWith(articles: value));
  });
}
}


/// Adds pattern-matching-related methods to [WordsOnOccasionsCategory].
extension WordsOnOccasionsCategoryPatterns on WordsOnOccasionsCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordsOnOccasionsCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordsOnOccasionsCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordsOnOccasionsCategory value)  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordsOnOccasionsCategory value)?  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus', fromJson: _intToString)  String? catMenus, @JsonKey(name: 'cat_pos', fromJson: _intToString)  String? catPos, @JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString)  String? catInSubMenu,  WordsOnOccasionsArticlesWrapper? articles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordsOnOccasionsCategory() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus', fromJson: _intToString)  String? catMenus, @JsonKey(name: 'cat_pos', fromJson: _intToString)  String? catPos, @JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString)  String? catInSubMenu,  WordsOnOccasionsArticlesWrapper? articles)  $default,) {final _that = this;
switch (_that) {
case _WordsOnOccasionsCategory():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus', fromJson: _intToString)  String? catMenus, @JsonKey(name: 'cat_pos', fromJson: _intToString)  String? catPos, @JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString)  String? catInSubMenu,  WordsOnOccasionsArticlesWrapper? articles)?  $default,) {final _that = this;
switch (_that) {
case _WordsOnOccasionsCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catMenus,_that.catPos,_that.catInSubMenu,_that.articles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordsOnOccasionsCategory implements WordsOnOccasionsCategory {
  const _WordsOnOccasionsCategory({@JsonKey(name: 'cat_id') this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_menus', fromJson: _intToString) this.catMenus, @JsonKey(name: 'cat_pos', fromJson: _intToString) this.catPos, @JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString) this.catInSubMenu, this.articles});
  factory _WordsOnOccasionsCategory.fromJson(Map<String, dynamic> json) => _$WordsOnOccasionsCategoryFromJson(json);

@override@JsonKey(name: 'cat_id') final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_menus', fromJson: _intToString) final  String? catMenus;
@override@JsonKey(name: 'cat_pos', fromJson: _intToString) final  String? catPos;
@override@JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString) final  String? catInSubMenu;
@override final  WordsOnOccasionsArticlesWrapper? articles;

/// Create a copy of WordsOnOccasionsCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordsOnOccasionsCategoryCopyWith<_WordsOnOccasionsCategory> get copyWith => __$WordsOnOccasionsCategoryCopyWithImpl<_WordsOnOccasionsCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordsOnOccasionsCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordsOnOccasionsCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catInSubMenu, catInSubMenu) || other.catInSubMenu == catInSubMenu)&&(identical(other.articles, articles) || other.articles == articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catMenus,catPos,catInSubMenu,articles);

@override
String toString() {
  return 'WordsOnOccasionsCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catMenus: $catMenus, catPos: $catPos, catInSubMenu: $catInSubMenu, articles: $articles)';
}


}

/// @nodoc
abstract mixin class _$WordsOnOccasionsCategoryCopyWith<$Res> implements $WordsOnOccasionsCategoryCopyWith<$Res> {
  factory _$WordsOnOccasionsCategoryCopyWith(_WordsOnOccasionsCategory value, $Res Function(_WordsOnOccasionsCategory) _then) = __$WordsOnOccasionsCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_menus', fromJson: _intToString) String? catMenus,@JsonKey(name: 'cat_pos', fromJson: _intToString) String? catPos,@JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString) String? catInSubMenu, WordsOnOccasionsArticlesWrapper? articles
});


@override $WordsOnOccasionsArticlesWrapperCopyWith<$Res>? get articles;

}
/// @nodoc
class __$WordsOnOccasionsCategoryCopyWithImpl<$Res>
    implements _$WordsOnOccasionsCategoryCopyWith<$Res> {
  __$WordsOnOccasionsCategoryCopyWithImpl(this._self, this._then);

  final _WordsOnOccasionsCategory _self;
  final $Res Function(_WordsOnOccasionsCategory) _then;

/// Create a copy of WordsOnOccasionsCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catMenus = freezed,Object? catPos = freezed,Object? catInSubMenu = freezed,Object? articles = freezed,}) {
  return _then(_WordsOnOccasionsCategory(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catMenus: freezed == catMenus ? _self.catMenus : catMenus // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,catInSubMenu: freezed == catInSubMenu ? _self.catInSubMenu : catInSubMenu // ignore: cast_nullable_to_non_nullable
as String?,articles: freezed == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as WordsOnOccasionsArticlesWrapper?,
  ));
}

/// Create a copy of WordsOnOccasionsCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordsOnOccasionsArticlesWrapperCopyWith<$Res>? get articles {
    if (_self.articles == null) {
    return null;
  }

  return $WordsOnOccasionsArticlesWrapperCopyWith<$Res>(_self.articles!, (value) {
    return _then(_self.copyWith(articles: value));
  });
}
}


/// @nodoc
mixin _$WordsOnOccasionsArticlesWrapper {

 List<WordsOnOccasionsArticle>? get data; WordsOnOccasionsPagination? get pagination;
/// Create a copy of WordsOnOccasionsArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordsOnOccasionsArticlesWrapperCopyWith<WordsOnOccasionsArticlesWrapper> get copyWith => _$WordsOnOccasionsArticlesWrapperCopyWithImpl<WordsOnOccasionsArticlesWrapper>(this as WordsOnOccasionsArticlesWrapper, _$identity);

  /// Serializes this WordsOnOccasionsArticlesWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordsOnOccasionsArticlesWrapper&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'WordsOnOccasionsArticlesWrapper(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $WordsOnOccasionsArticlesWrapperCopyWith<$Res>  {
  factory $WordsOnOccasionsArticlesWrapperCopyWith(WordsOnOccasionsArticlesWrapper value, $Res Function(WordsOnOccasionsArticlesWrapper) _then) = _$WordsOnOccasionsArticlesWrapperCopyWithImpl;
@useResult
$Res call({
 List<WordsOnOccasionsArticle>? data, WordsOnOccasionsPagination? pagination
});


$WordsOnOccasionsPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$WordsOnOccasionsArticlesWrapperCopyWithImpl<$Res>
    implements $WordsOnOccasionsArticlesWrapperCopyWith<$Res> {
  _$WordsOnOccasionsArticlesWrapperCopyWithImpl(this._self, this._then);

  final WordsOnOccasionsArticlesWrapper _self;
  final $Res Function(WordsOnOccasionsArticlesWrapper) _then;

/// Create a copy of WordsOnOccasionsArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<WordsOnOccasionsArticle>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as WordsOnOccasionsPagination?,
  ));
}
/// Create a copy of WordsOnOccasionsArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordsOnOccasionsPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $WordsOnOccasionsPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [WordsOnOccasionsArticlesWrapper].
extension WordsOnOccasionsArticlesWrapperPatterns on WordsOnOccasionsArticlesWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordsOnOccasionsArticlesWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordsOnOccasionsArticlesWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordsOnOccasionsArticlesWrapper value)  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsArticlesWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordsOnOccasionsArticlesWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsArticlesWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WordsOnOccasionsArticle>? data,  WordsOnOccasionsPagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordsOnOccasionsArticlesWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WordsOnOccasionsArticle>? data,  WordsOnOccasionsPagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _WordsOnOccasionsArticlesWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WordsOnOccasionsArticle>? data,  WordsOnOccasionsPagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _WordsOnOccasionsArticlesWrapper() when $default != null:
return $default(_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordsOnOccasionsArticlesWrapper implements WordsOnOccasionsArticlesWrapper {
  const _WordsOnOccasionsArticlesWrapper({final  List<WordsOnOccasionsArticle>? data, this.pagination}): _data = data;
  factory _WordsOnOccasionsArticlesWrapper.fromJson(Map<String, dynamic> json) => _$WordsOnOccasionsArticlesWrapperFromJson(json);

 final  List<WordsOnOccasionsArticle>? _data;
@override List<WordsOnOccasionsArticle>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  WordsOnOccasionsPagination? pagination;

/// Create a copy of WordsOnOccasionsArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordsOnOccasionsArticlesWrapperCopyWith<_WordsOnOccasionsArticlesWrapper> get copyWith => __$WordsOnOccasionsArticlesWrapperCopyWithImpl<_WordsOnOccasionsArticlesWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordsOnOccasionsArticlesWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordsOnOccasionsArticlesWrapper&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'WordsOnOccasionsArticlesWrapper(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$WordsOnOccasionsArticlesWrapperCopyWith<$Res> implements $WordsOnOccasionsArticlesWrapperCopyWith<$Res> {
  factory _$WordsOnOccasionsArticlesWrapperCopyWith(_WordsOnOccasionsArticlesWrapper value, $Res Function(_WordsOnOccasionsArticlesWrapper) _then) = __$WordsOnOccasionsArticlesWrapperCopyWithImpl;
@override @useResult
$Res call({
 List<WordsOnOccasionsArticle>? data, WordsOnOccasionsPagination? pagination
});


@override $WordsOnOccasionsPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$WordsOnOccasionsArticlesWrapperCopyWithImpl<$Res>
    implements _$WordsOnOccasionsArticlesWrapperCopyWith<$Res> {
  __$WordsOnOccasionsArticlesWrapperCopyWithImpl(this._self, this._then);

  final _WordsOnOccasionsArticlesWrapper _self;
  final $Res Function(_WordsOnOccasionsArticlesWrapper) _then;

/// Create a copy of WordsOnOccasionsArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_WordsOnOccasionsArticlesWrapper(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<WordsOnOccasionsArticle>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as WordsOnOccasionsPagination?,
  ));
}

/// Create a copy of WordsOnOccasionsArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordsOnOccasionsPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $WordsOnOccasionsPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$WordsOnOccasionsArticle {

@JsonKey(name: 'article_id') int? get articleId;@JsonKey(name: 'article_title') String? get articleTitle;@JsonKey(name: 'article_summary') String? get articleSummary;@JsonKey(name: 'article_cat_id', fromJson: _intToString) String? get articleCatId;@JsonKey(name: 'article_des') String? get articleDes;@JsonKey(name: 'article_pic') String? get articlePic;@JsonKey(name: 'article_visitor', fromJson: _intToString) String? get articleVisitor;@JsonKey(name: 'article_date') String? get articleDate;
/// Create a copy of WordsOnOccasionsArticle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordsOnOccasionsArticleCopyWith<WordsOnOccasionsArticle> get copyWith => _$WordsOnOccasionsArticleCopyWithImpl<WordsOnOccasionsArticle>(this as WordsOnOccasionsArticle, _$identity);

  /// Serializes this WordsOnOccasionsArticle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordsOnOccasionsArticle&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleSummary,articleCatId,articleDes,articlePic,articleVisitor,articleDate);

@override
String toString() {
  return 'WordsOnOccasionsArticle(articleId: $articleId, articleTitle: $articleTitle, articleSummary: $articleSummary, articleCatId: $articleCatId, articleDes: $articleDes, articlePic: $articlePic, articleVisitor: $articleVisitor, articleDate: $articleDate)';
}


}

/// @nodoc
abstract mixin class $WordsOnOccasionsArticleCopyWith<$Res>  {
  factory $WordsOnOccasionsArticleCopyWith(WordsOnOccasionsArticle value, $Res Function(WordsOnOccasionsArticle) _then) = _$WordsOnOccasionsArticleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'article_id') int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id', fromJson: _intToString) String? articleCatId,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor', fromJson: _intToString) String? articleVisitor,@JsonKey(name: 'article_date') String? articleDate
});




}
/// @nodoc
class _$WordsOnOccasionsArticleCopyWithImpl<$Res>
    implements $WordsOnOccasionsArticleCopyWith<$Res> {
  _$WordsOnOccasionsArticleCopyWithImpl(this._self, this._then);

  final WordsOnOccasionsArticle _self;
  final $Res Function(WordsOnOccasionsArticle) _then;

/// Create a copy of WordsOnOccasionsArticle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleSummary = freezed,Object? articleCatId = freezed,Object? articleDes = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articleDate = freezed,}) {
  return _then(_self.copyWith(
articleId: freezed == articleId ? _self.articleId : articleId // ignore: cast_nullable_to_non_nullable
as int?,articleTitle: freezed == articleTitle ? _self.articleTitle : articleTitle // ignore: cast_nullable_to_non_nullable
as String?,articleSummary: freezed == articleSummary ? _self.articleSummary : articleSummary // ignore: cast_nullable_to_non_nullable
as String?,articleCatId: freezed == articleCatId ? _self.articleCatId : articleCatId // ignore: cast_nullable_to_non_nullable
as String?,articleDes: freezed == articleDes ? _self.articleDes : articleDes // ignore: cast_nullable_to_non_nullable
as String?,articlePic: freezed == articlePic ? _self.articlePic : articlePic // ignore: cast_nullable_to_non_nullable
as String?,articleVisitor: freezed == articleVisitor ? _self.articleVisitor : articleVisitor // ignore: cast_nullable_to_non_nullable
as String?,articleDate: freezed == articleDate ? _self.articleDate : articleDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordsOnOccasionsArticle].
extension WordsOnOccasionsArticlePatterns on WordsOnOccasionsArticle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordsOnOccasionsArticle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordsOnOccasionsArticle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordsOnOccasionsArticle value)  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsArticle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordsOnOccasionsArticle value)?  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsArticle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _intToString)  String? articleCatId, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _intToString)  String? articleVisitor, @JsonKey(name: 'article_date')  String? articleDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordsOnOccasionsArticle() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleCatId,_that.articleDes,_that.articlePic,_that.articleVisitor,_that.articleDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _intToString)  String? articleCatId, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _intToString)  String? articleVisitor, @JsonKey(name: 'article_date')  String? articleDate)  $default,) {final _that = this;
switch (_that) {
case _WordsOnOccasionsArticle():
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleCatId,_that.articleDes,_that.articlePic,_that.articleVisitor,_that.articleDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _intToString)  String? articleCatId, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor', fromJson: _intToString)  String? articleVisitor, @JsonKey(name: 'article_date')  String? articleDate)?  $default,) {final _that = this;
switch (_that) {
case _WordsOnOccasionsArticle() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleCatId,_that.articleDes,_that.articlePic,_that.articleVisitor,_that.articleDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordsOnOccasionsArticle implements WordsOnOccasionsArticle {
  const _WordsOnOccasionsArticle({@JsonKey(name: 'article_id') this.articleId, @JsonKey(name: 'article_title') this.articleTitle, @JsonKey(name: 'article_summary') this.articleSummary, @JsonKey(name: 'article_cat_id', fromJson: _intToString) this.articleCatId, @JsonKey(name: 'article_des') this.articleDes, @JsonKey(name: 'article_pic') this.articlePic, @JsonKey(name: 'article_visitor', fromJson: _intToString) this.articleVisitor, @JsonKey(name: 'article_date') this.articleDate});
  factory _WordsOnOccasionsArticle.fromJson(Map<String, dynamic> json) => _$WordsOnOccasionsArticleFromJson(json);

@override@JsonKey(name: 'article_id') final  int? articleId;
@override@JsonKey(name: 'article_title') final  String? articleTitle;
@override@JsonKey(name: 'article_summary') final  String? articleSummary;
@override@JsonKey(name: 'article_cat_id', fromJson: _intToString) final  String? articleCatId;
@override@JsonKey(name: 'article_des') final  String? articleDes;
@override@JsonKey(name: 'article_pic') final  String? articlePic;
@override@JsonKey(name: 'article_visitor', fromJson: _intToString) final  String? articleVisitor;
@override@JsonKey(name: 'article_date') final  String? articleDate;

/// Create a copy of WordsOnOccasionsArticle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordsOnOccasionsArticleCopyWith<_WordsOnOccasionsArticle> get copyWith => __$WordsOnOccasionsArticleCopyWithImpl<_WordsOnOccasionsArticle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordsOnOccasionsArticleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordsOnOccasionsArticle&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleSummary,articleCatId,articleDes,articlePic,articleVisitor,articleDate);

@override
String toString() {
  return 'WordsOnOccasionsArticle(articleId: $articleId, articleTitle: $articleTitle, articleSummary: $articleSummary, articleCatId: $articleCatId, articleDes: $articleDes, articlePic: $articlePic, articleVisitor: $articleVisitor, articleDate: $articleDate)';
}


}

/// @nodoc
abstract mixin class _$WordsOnOccasionsArticleCopyWith<$Res> implements $WordsOnOccasionsArticleCopyWith<$Res> {
  factory _$WordsOnOccasionsArticleCopyWith(_WordsOnOccasionsArticle value, $Res Function(_WordsOnOccasionsArticle) _then) = __$WordsOnOccasionsArticleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'article_id') int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id', fromJson: _intToString) String? articleCatId,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor', fromJson: _intToString) String? articleVisitor,@JsonKey(name: 'article_date') String? articleDate
});




}
/// @nodoc
class __$WordsOnOccasionsArticleCopyWithImpl<$Res>
    implements _$WordsOnOccasionsArticleCopyWith<$Res> {
  __$WordsOnOccasionsArticleCopyWithImpl(this._self, this._then);

  final _WordsOnOccasionsArticle _self;
  final $Res Function(_WordsOnOccasionsArticle) _then;

/// Create a copy of WordsOnOccasionsArticle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleSummary = freezed,Object? articleCatId = freezed,Object? articleDes = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articleDate = freezed,}) {
  return _then(_WordsOnOccasionsArticle(
articleId: freezed == articleId ? _self.articleId : articleId // ignore: cast_nullable_to_non_nullable
as int?,articleTitle: freezed == articleTitle ? _self.articleTitle : articleTitle // ignore: cast_nullable_to_non_nullable
as String?,articleSummary: freezed == articleSummary ? _self.articleSummary : articleSummary // ignore: cast_nullable_to_non_nullable
as String?,articleCatId: freezed == articleCatId ? _self.articleCatId : articleCatId // ignore: cast_nullable_to_non_nullable
as String?,articleDes: freezed == articleDes ? _self.articleDes : articleDes // ignore: cast_nullable_to_non_nullable
as String?,articlePic: freezed == articlePic ? _self.articlePic : articlePic // ignore: cast_nullable_to_non_nullable
as String?,articleVisitor: freezed == articleVisitor ? _self.articleVisitor : articleVisitor // ignore: cast_nullable_to_non_nullable
as String?,articleDate: freezed == articleDate ? _self.articleDate : articleDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WordsOnOccasionsPagination {

 int? get total; int? get count;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'last_page') int? get lastPage; int? get from; int? get to;
/// Create a copy of WordsOnOccasionsPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordsOnOccasionsPaginationCopyWith<WordsOnOccasionsPagination> get copyWith => _$WordsOnOccasionsPaginationCopyWithImpl<WordsOnOccasionsPagination>(this as WordsOnOccasionsPagination, _$identity);

  /// Serializes this WordsOnOccasionsPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordsOnOccasionsPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'WordsOnOccasionsPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $WordsOnOccasionsPaginationCopyWith<$Res>  {
  factory $WordsOnOccasionsPaginationCopyWith(WordsOnOccasionsPagination value, $Res Function(WordsOnOccasionsPagination) _then) = _$WordsOnOccasionsPaginationCopyWithImpl;
@useResult
$Res call({
 int? total, int? count,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage, int? from, int? to
});




}
/// @nodoc
class _$WordsOnOccasionsPaginationCopyWithImpl<$Res>
    implements $WordsOnOccasionsPaginationCopyWith<$Res> {
  _$WordsOnOccasionsPaginationCopyWithImpl(this._self, this._then);

  final WordsOnOccasionsPagination _self;
  final $Res Function(WordsOnOccasionsPagination) _then;

/// Create a copy of WordsOnOccasionsPagination
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


/// Adds pattern-matching-related methods to [WordsOnOccasionsPagination].
extension WordsOnOccasionsPaginationPatterns on WordsOnOccasionsPagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordsOnOccasionsPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordsOnOccasionsPagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordsOnOccasionsPagination value)  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsPagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordsOnOccasionsPagination value)?  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsPagination() when $default != null:
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
case _WordsOnOccasionsPagination() when $default != null:
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
case _WordsOnOccasionsPagination():
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
case _WordsOnOccasionsPagination() when $default != null:
return $default(_that.total,_that.count,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordsOnOccasionsPagination implements WordsOnOccasionsPagination {
  const _WordsOnOccasionsPagination({this.total, this.count, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'last_page') this.lastPage, this.from, this.to});
  factory _WordsOnOccasionsPagination.fromJson(Map<String, dynamic> json) => _$WordsOnOccasionsPaginationFromJson(json);

@override final  int? total;
@override final  int? count;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'last_page') final  int? lastPage;
@override final  int? from;
@override final  int? to;

/// Create a copy of WordsOnOccasionsPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordsOnOccasionsPaginationCopyWith<_WordsOnOccasionsPagination> get copyWith => __$WordsOnOccasionsPaginationCopyWithImpl<_WordsOnOccasionsPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordsOnOccasionsPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordsOnOccasionsPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'WordsOnOccasionsPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$WordsOnOccasionsPaginationCopyWith<$Res> implements $WordsOnOccasionsPaginationCopyWith<$Res> {
  factory _$WordsOnOccasionsPaginationCopyWith(_WordsOnOccasionsPagination value, $Res Function(_WordsOnOccasionsPagination) _then) = __$WordsOnOccasionsPaginationCopyWithImpl;
@override @useResult
$Res call({
 int? total, int? count,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage, int? from, int? to
});




}
/// @nodoc
class __$WordsOnOccasionsPaginationCopyWithImpl<$Res>
    implements _$WordsOnOccasionsPaginationCopyWith<$Res> {
  __$WordsOnOccasionsPaginationCopyWithImpl(this._self, this._then);

  final _WordsOnOccasionsPagination _self;
  final $Res Function(_WordsOnOccasionsPagination) _then;

/// Create a copy of WordsOnOccasionsPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? count = freezed,Object? perPage = freezed,Object? currentPage = freezed,Object? lastPage = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_WordsOnOccasionsPagination(
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
mixin _$WordsOnOccasionsMeta {

@JsonKey(name: 'pagination_params') WordsOnOccasionsPaginationParams? get paginationParams;@JsonKey(name: 'response_info') WordsOnOccasionsResponseInfo? get responseInfo;
/// Create a copy of WordsOnOccasionsMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordsOnOccasionsMetaCopyWith<WordsOnOccasionsMeta> get copyWith => _$WordsOnOccasionsMetaCopyWithImpl<WordsOnOccasionsMeta>(this as WordsOnOccasionsMeta, _$identity);

  /// Serializes this WordsOnOccasionsMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordsOnOccasionsMeta&&(identical(other.paginationParams, paginationParams) || other.paginationParams == paginationParams)&&(identical(other.responseInfo, responseInfo) || other.responseInfo == responseInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paginationParams,responseInfo);

@override
String toString() {
  return 'WordsOnOccasionsMeta(paginationParams: $paginationParams, responseInfo: $responseInfo)';
}


}

/// @nodoc
abstract mixin class $WordsOnOccasionsMetaCopyWith<$Res>  {
  factory $WordsOnOccasionsMetaCopyWith(WordsOnOccasionsMeta value, $Res Function(WordsOnOccasionsMeta) _then) = _$WordsOnOccasionsMetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'pagination_params') WordsOnOccasionsPaginationParams? paginationParams,@JsonKey(name: 'response_info') WordsOnOccasionsResponseInfo? responseInfo
});


$WordsOnOccasionsPaginationParamsCopyWith<$Res>? get paginationParams;$WordsOnOccasionsResponseInfoCopyWith<$Res>? get responseInfo;

}
/// @nodoc
class _$WordsOnOccasionsMetaCopyWithImpl<$Res>
    implements $WordsOnOccasionsMetaCopyWith<$Res> {
  _$WordsOnOccasionsMetaCopyWithImpl(this._self, this._then);

  final WordsOnOccasionsMeta _self;
  final $Res Function(WordsOnOccasionsMeta) _then;

/// Create a copy of WordsOnOccasionsMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paginationParams = freezed,Object? responseInfo = freezed,}) {
  return _then(_self.copyWith(
paginationParams: freezed == paginationParams ? _self.paginationParams : paginationParams // ignore: cast_nullable_to_non_nullable
as WordsOnOccasionsPaginationParams?,responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as WordsOnOccasionsResponseInfo?,
  ));
}
/// Create a copy of WordsOnOccasionsMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordsOnOccasionsPaginationParamsCopyWith<$Res>? get paginationParams {
    if (_self.paginationParams == null) {
    return null;
  }

  return $WordsOnOccasionsPaginationParamsCopyWith<$Res>(_self.paginationParams!, (value) {
    return _then(_self.copyWith(paginationParams: value));
  });
}/// Create a copy of WordsOnOccasionsMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordsOnOccasionsResponseInfoCopyWith<$Res>? get responseInfo {
    if (_self.responseInfo == null) {
    return null;
  }

  return $WordsOnOccasionsResponseInfoCopyWith<$Res>(_self.responseInfo!, (value) {
    return _then(_self.copyWith(responseInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [WordsOnOccasionsMeta].
extension WordsOnOccasionsMetaPatterns on WordsOnOccasionsMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordsOnOccasionsMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordsOnOccasionsMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordsOnOccasionsMeta value)  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordsOnOccasionsMeta value)?  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'pagination_params')  WordsOnOccasionsPaginationParams? paginationParams, @JsonKey(name: 'response_info')  WordsOnOccasionsResponseInfo? responseInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordsOnOccasionsMeta() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'pagination_params')  WordsOnOccasionsPaginationParams? paginationParams, @JsonKey(name: 'response_info')  WordsOnOccasionsResponseInfo? responseInfo)  $default,) {final _that = this;
switch (_that) {
case _WordsOnOccasionsMeta():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'pagination_params')  WordsOnOccasionsPaginationParams? paginationParams, @JsonKey(name: 'response_info')  WordsOnOccasionsResponseInfo? responseInfo)?  $default,) {final _that = this;
switch (_that) {
case _WordsOnOccasionsMeta() when $default != null:
return $default(_that.paginationParams,_that.responseInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordsOnOccasionsMeta implements WordsOnOccasionsMeta {
  const _WordsOnOccasionsMeta({@JsonKey(name: 'pagination_params') this.paginationParams, @JsonKey(name: 'response_info') this.responseInfo});
  factory _WordsOnOccasionsMeta.fromJson(Map<String, dynamic> json) => _$WordsOnOccasionsMetaFromJson(json);

@override@JsonKey(name: 'pagination_params') final  WordsOnOccasionsPaginationParams? paginationParams;
@override@JsonKey(name: 'response_info') final  WordsOnOccasionsResponseInfo? responseInfo;

/// Create a copy of WordsOnOccasionsMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordsOnOccasionsMetaCopyWith<_WordsOnOccasionsMeta> get copyWith => __$WordsOnOccasionsMetaCopyWithImpl<_WordsOnOccasionsMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordsOnOccasionsMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordsOnOccasionsMeta&&(identical(other.paginationParams, paginationParams) || other.paginationParams == paginationParams)&&(identical(other.responseInfo, responseInfo) || other.responseInfo == responseInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paginationParams,responseInfo);

@override
String toString() {
  return 'WordsOnOccasionsMeta(paginationParams: $paginationParams, responseInfo: $responseInfo)';
}


}

/// @nodoc
abstract mixin class _$WordsOnOccasionsMetaCopyWith<$Res> implements $WordsOnOccasionsMetaCopyWith<$Res> {
  factory _$WordsOnOccasionsMetaCopyWith(_WordsOnOccasionsMeta value, $Res Function(_WordsOnOccasionsMeta) _then) = __$WordsOnOccasionsMetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'pagination_params') WordsOnOccasionsPaginationParams? paginationParams,@JsonKey(name: 'response_info') WordsOnOccasionsResponseInfo? responseInfo
});


@override $WordsOnOccasionsPaginationParamsCopyWith<$Res>? get paginationParams;@override $WordsOnOccasionsResponseInfoCopyWith<$Res>? get responseInfo;

}
/// @nodoc
class __$WordsOnOccasionsMetaCopyWithImpl<$Res>
    implements _$WordsOnOccasionsMetaCopyWith<$Res> {
  __$WordsOnOccasionsMetaCopyWithImpl(this._self, this._then);

  final _WordsOnOccasionsMeta _self;
  final $Res Function(_WordsOnOccasionsMeta) _then;

/// Create a copy of WordsOnOccasionsMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paginationParams = freezed,Object? responseInfo = freezed,}) {
  return _then(_WordsOnOccasionsMeta(
paginationParams: freezed == paginationParams ? _self.paginationParams : paginationParams // ignore: cast_nullable_to_non_nullable
as WordsOnOccasionsPaginationParams?,responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as WordsOnOccasionsResponseInfo?,
  ));
}

/// Create a copy of WordsOnOccasionsMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordsOnOccasionsPaginationParamsCopyWith<$Res>? get paginationParams {
    if (_self.paginationParams == null) {
    return null;
  }

  return $WordsOnOccasionsPaginationParamsCopyWith<$Res>(_self.paginationParams!, (value) {
    return _then(_self.copyWith(paginationParams: value));
  });
}/// Create a copy of WordsOnOccasionsMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordsOnOccasionsResponseInfoCopyWith<$Res>? get responseInfo {
    if (_self.responseInfo == null) {
    return null;
  }

  return $WordsOnOccasionsResponseInfoCopyWith<$Res>(_self.responseInfo!, (value) {
    return _then(_self.copyWith(responseInfo: value));
  });
}
}


/// @nodoc
mixin _$WordsOnOccasionsPaginationParams {

@JsonKey(name: 'articles_per_page') String? get articlesPerPage;@JsonKey(name: 'categories_per_page') int? get categoriesPerPage;@JsonKey(name: 'articles_page') String? get articlesPage;@JsonKey(name: 'categories_page') int? get categoriesPage;
/// Create a copy of WordsOnOccasionsPaginationParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordsOnOccasionsPaginationParamsCopyWith<WordsOnOccasionsPaginationParams> get copyWith => _$WordsOnOccasionsPaginationParamsCopyWithImpl<WordsOnOccasionsPaginationParams>(this as WordsOnOccasionsPaginationParams, _$identity);

  /// Serializes this WordsOnOccasionsPaginationParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordsOnOccasionsPaginationParams&&(identical(other.articlesPerPage, articlesPerPage) || other.articlesPerPage == articlesPerPage)&&(identical(other.categoriesPerPage, categoriesPerPage) || other.categoriesPerPage == categoriesPerPage)&&(identical(other.articlesPage, articlesPage) || other.articlesPage == articlesPage)&&(identical(other.categoriesPage, categoriesPage) || other.categoriesPage == categoriesPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articlesPerPage,categoriesPerPage,articlesPage,categoriesPage);

@override
String toString() {
  return 'WordsOnOccasionsPaginationParams(articlesPerPage: $articlesPerPage, categoriesPerPage: $categoriesPerPage, articlesPage: $articlesPage, categoriesPage: $categoriesPage)';
}


}

/// @nodoc
abstract mixin class $WordsOnOccasionsPaginationParamsCopyWith<$Res>  {
  factory $WordsOnOccasionsPaginationParamsCopyWith(WordsOnOccasionsPaginationParams value, $Res Function(WordsOnOccasionsPaginationParams) _then) = _$WordsOnOccasionsPaginationParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'articles_per_page') String? articlesPerPage,@JsonKey(name: 'categories_per_page') int? categoriesPerPage,@JsonKey(name: 'articles_page') String? articlesPage,@JsonKey(name: 'categories_page') int? categoriesPage
});




}
/// @nodoc
class _$WordsOnOccasionsPaginationParamsCopyWithImpl<$Res>
    implements $WordsOnOccasionsPaginationParamsCopyWith<$Res> {
  _$WordsOnOccasionsPaginationParamsCopyWithImpl(this._self, this._then);

  final WordsOnOccasionsPaginationParams _self;
  final $Res Function(WordsOnOccasionsPaginationParams) _then;

/// Create a copy of WordsOnOccasionsPaginationParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articlesPerPage = freezed,Object? categoriesPerPage = freezed,Object? articlesPage = freezed,Object? categoriesPage = freezed,}) {
  return _then(_self.copyWith(
articlesPerPage: freezed == articlesPerPage ? _self.articlesPerPage : articlesPerPage // ignore: cast_nullable_to_non_nullable
as String?,categoriesPerPage: freezed == categoriesPerPage ? _self.categoriesPerPage : categoriesPerPage // ignore: cast_nullable_to_non_nullable
as int?,articlesPage: freezed == articlesPage ? _self.articlesPage : articlesPage // ignore: cast_nullable_to_non_nullable
as String?,categoriesPage: freezed == categoriesPage ? _self.categoriesPage : categoriesPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordsOnOccasionsPaginationParams].
extension WordsOnOccasionsPaginationParamsPatterns on WordsOnOccasionsPaginationParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordsOnOccasionsPaginationParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordsOnOccasionsPaginationParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordsOnOccasionsPaginationParams value)  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsPaginationParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordsOnOccasionsPaginationParams value)?  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsPaginationParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'articles_per_page')  String? articlesPerPage, @JsonKey(name: 'categories_per_page')  int? categoriesPerPage, @JsonKey(name: 'articles_page')  String? articlesPage, @JsonKey(name: 'categories_page')  int? categoriesPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordsOnOccasionsPaginationParams() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'articles_per_page')  String? articlesPerPage, @JsonKey(name: 'categories_per_page')  int? categoriesPerPage, @JsonKey(name: 'articles_page')  String? articlesPage, @JsonKey(name: 'categories_page')  int? categoriesPage)  $default,) {final _that = this;
switch (_that) {
case _WordsOnOccasionsPaginationParams():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'articles_per_page')  String? articlesPerPage, @JsonKey(name: 'categories_per_page')  int? categoriesPerPage, @JsonKey(name: 'articles_page')  String? articlesPage, @JsonKey(name: 'categories_page')  int? categoriesPage)?  $default,) {final _that = this;
switch (_that) {
case _WordsOnOccasionsPaginationParams() when $default != null:
return $default(_that.articlesPerPage,_that.categoriesPerPage,_that.articlesPage,_that.categoriesPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordsOnOccasionsPaginationParams implements WordsOnOccasionsPaginationParams {
  const _WordsOnOccasionsPaginationParams({@JsonKey(name: 'articles_per_page') this.articlesPerPage, @JsonKey(name: 'categories_per_page') this.categoriesPerPage, @JsonKey(name: 'articles_page') this.articlesPage, @JsonKey(name: 'categories_page') this.categoriesPage});
  factory _WordsOnOccasionsPaginationParams.fromJson(Map<String, dynamic> json) => _$WordsOnOccasionsPaginationParamsFromJson(json);

@override@JsonKey(name: 'articles_per_page') final  String? articlesPerPage;
@override@JsonKey(name: 'categories_per_page') final  int? categoriesPerPage;
@override@JsonKey(name: 'articles_page') final  String? articlesPage;
@override@JsonKey(name: 'categories_page') final  int? categoriesPage;

/// Create a copy of WordsOnOccasionsPaginationParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordsOnOccasionsPaginationParamsCopyWith<_WordsOnOccasionsPaginationParams> get copyWith => __$WordsOnOccasionsPaginationParamsCopyWithImpl<_WordsOnOccasionsPaginationParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordsOnOccasionsPaginationParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordsOnOccasionsPaginationParams&&(identical(other.articlesPerPage, articlesPerPage) || other.articlesPerPage == articlesPerPage)&&(identical(other.categoriesPerPage, categoriesPerPage) || other.categoriesPerPage == categoriesPerPage)&&(identical(other.articlesPage, articlesPage) || other.articlesPage == articlesPage)&&(identical(other.categoriesPage, categoriesPage) || other.categoriesPage == categoriesPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articlesPerPage,categoriesPerPage,articlesPage,categoriesPage);

@override
String toString() {
  return 'WordsOnOccasionsPaginationParams(articlesPerPage: $articlesPerPage, categoriesPerPage: $categoriesPerPage, articlesPage: $articlesPage, categoriesPage: $categoriesPage)';
}


}

/// @nodoc
abstract mixin class _$WordsOnOccasionsPaginationParamsCopyWith<$Res> implements $WordsOnOccasionsPaginationParamsCopyWith<$Res> {
  factory _$WordsOnOccasionsPaginationParamsCopyWith(_WordsOnOccasionsPaginationParams value, $Res Function(_WordsOnOccasionsPaginationParams) _then) = __$WordsOnOccasionsPaginationParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'articles_per_page') String? articlesPerPage,@JsonKey(name: 'categories_per_page') int? categoriesPerPage,@JsonKey(name: 'articles_page') String? articlesPage,@JsonKey(name: 'categories_page') int? categoriesPage
});




}
/// @nodoc
class __$WordsOnOccasionsPaginationParamsCopyWithImpl<$Res>
    implements _$WordsOnOccasionsPaginationParamsCopyWith<$Res> {
  __$WordsOnOccasionsPaginationParamsCopyWithImpl(this._self, this._then);

  final _WordsOnOccasionsPaginationParams _self;
  final $Res Function(_WordsOnOccasionsPaginationParams) _then;

/// Create a copy of WordsOnOccasionsPaginationParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articlesPerPage = freezed,Object? categoriesPerPage = freezed,Object? articlesPage = freezed,Object? categoriesPage = freezed,}) {
  return _then(_WordsOnOccasionsPaginationParams(
articlesPerPage: freezed == articlesPerPage ? _self.articlesPerPage : articlesPerPage // ignore: cast_nullable_to_non_nullable
as String?,categoriesPerPage: freezed == categoriesPerPage ? _self.categoriesPerPage : categoriesPerPage // ignore: cast_nullable_to_non_nullable
as int?,articlesPage: freezed == articlesPage ? _self.articlesPage : articlesPage // ignore: cast_nullable_to_non_nullable
as String?,categoriesPage: freezed == categoriesPage ? _self.categoriesPage : categoriesPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$WordsOnOccasionsResponseInfo {

 String? get timestamp;@JsonKey(name: 'api_version') String? get apiVersion; String? get endpoint;@JsonKey(name: 'content_type') String? get contentType;
/// Create a copy of WordsOnOccasionsResponseInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordsOnOccasionsResponseInfoCopyWith<WordsOnOccasionsResponseInfo> get copyWith => _$WordsOnOccasionsResponseInfoCopyWithImpl<WordsOnOccasionsResponseInfo>(this as WordsOnOccasionsResponseInfo, _$identity);

  /// Serializes this WordsOnOccasionsResponseInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordsOnOccasionsResponseInfo&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,apiVersion,endpoint,contentType);

@override
String toString() {
  return 'WordsOnOccasionsResponseInfo(timestamp: $timestamp, apiVersion: $apiVersion, endpoint: $endpoint, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class $WordsOnOccasionsResponseInfoCopyWith<$Res>  {
  factory $WordsOnOccasionsResponseInfoCopyWith(WordsOnOccasionsResponseInfo value, $Res Function(WordsOnOccasionsResponseInfo) _then) = _$WordsOnOccasionsResponseInfoCopyWithImpl;
@useResult
$Res call({
 String? timestamp,@JsonKey(name: 'api_version') String? apiVersion, String? endpoint,@JsonKey(name: 'content_type') String? contentType
});




}
/// @nodoc
class _$WordsOnOccasionsResponseInfoCopyWithImpl<$Res>
    implements $WordsOnOccasionsResponseInfoCopyWith<$Res> {
  _$WordsOnOccasionsResponseInfoCopyWithImpl(this._self, this._then);

  final WordsOnOccasionsResponseInfo _self;
  final $Res Function(WordsOnOccasionsResponseInfo) _then;

/// Create a copy of WordsOnOccasionsResponseInfo
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


/// Adds pattern-matching-related methods to [WordsOnOccasionsResponseInfo].
extension WordsOnOccasionsResponseInfoPatterns on WordsOnOccasionsResponseInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordsOnOccasionsResponseInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordsOnOccasionsResponseInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordsOnOccasionsResponseInfo value)  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsResponseInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordsOnOccasionsResponseInfo value)?  $default,){
final _that = this;
switch (_that) {
case _WordsOnOccasionsResponseInfo() when $default != null:
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
case _WordsOnOccasionsResponseInfo() when $default != null:
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
case _WordsOnOccasionsResponseInfo():
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
case _WordsOnOccasionsResponseInfo() when $default != null:
return $default(_that.timestamp,_that.apiVersion,_that.endpoint,_that.contentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordsOnOccasionsResponseInfo implements WordsOnOccasionsResponseInfo {
  const _WordsOnOccasionsResponseInfo({this.timestamp, @JsonKey(name: 'api_version') this.apiVersion, this.endpoint, @JsonKey(name: 'content_type') this.contentType});
  factory _WordsOnOccasionsResponseInfo.fromJson(Map<String, dynamic> json) => _$WordsOnOccasionsResponseInfoFromJson(json);

@override final  String? timestamp;
@override@JsonKey(name: 'api_version') final  String? apiVersion;
@override final  String? endpoint;
@override@JsonKey(name: 'content_type') final  String? contentType;

/// Create a copy of WordsOnOccasionsResponseInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordsOnOccasionsResponseInfoCopyWith<_WordsOnOccasionsResponseInfo> get copyWith => __$WordsOnOccasionsResponseInfoCopyWithImpl<_WordsOnOccasionsResponseInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordsOnOccasionsResponseInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordsOnOccasionsResponseInfo&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,apiVersion,endpoint,contentType);

@override
String toString() {
  return 'WordsOnOccasionsResponseInfo(timestamp: $timestamp, apiVersion: $apiVersion, endpoint: $endpoint, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class _$WordsOnOccasionsResponseInfoCopyWith<$Res> implements $WordsOnOccasionsResponseInfoCopyWith<$Res> {
  factory _$WordsOnOccasionsResponseInfoCopyWith(_WordsOnOccasionsResponseInfo value, $Res Function(_WordsOnOccasionsResponseInfo) _then) = __$WordsOnOccasionsResponseInfoCopyWithImpl;
@override @useResult
$Res call({
 String? timestamp,@JsonKey(name: 'api_version') String? apiVersion, String? endpoint,@JsonKey(name: 'content_type') String? contentType
});




}
/// @nodoc
class __$WordsOnOccasionsResponseInfoCopyWithImpl<$Res>
    implements _$WordsOnOccasionsResponseInfoCopyWith<$Res> {
  __$WordsOnOccasionsResponseInfoCopyWithImpl(this._self, this._then);

  final _WordsOnOccasionsResponseInfo _self;
  final $Res Function(_WordsOnOccasionsResponseInfo) _then;

/// Create a copy of WordsOnOccasionsResponseInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = freezed,Object? apiVersion = freezed,Object? endpoint = freezed,Object? contentType = freezed,}) {
  return _then(_WordsOnOccasionsResponseInfo(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,apiVersion: freezed == apiVersion ? _self.apiVersion : apiVersion // ignore: cast_nullable_to_non_nullable
as String?,endpoint: freezed == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
