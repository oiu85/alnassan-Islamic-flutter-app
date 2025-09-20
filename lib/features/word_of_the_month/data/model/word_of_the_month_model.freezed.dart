// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_of_the_month_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WordOfTheMonthModel {

 String? get status; WordOfTheMonthData? get data; WordOfTheMonthMeta? get meta;
/// Create a copy of WordOfTheMonthModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordOfTheMonthModelCopyWith<WordOfTheMonthModel> get copyWith => _$WordOfTheMonthModelCopyWithImpl<WordOfTheMonthModel>(this as WordOfTheMonthModel, _$identity);

  /// Serializes this WordOfTheMonthModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordOfTheMonthModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,meta);

@override
String toString() {
  return 'WordOfTheMonthModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $WordOfTheMonthModelCopyWith<$Res>  {
  factory $WordOfTheMonthModelCopyWith(WordOfTheMonthModel value, $Res Function(WordOfTheMonthModel) _then) = _$WordOfTheMonthModelCopyWithImpl;
@useResult
$Res call({
 String? status, WordOfTheMonthData? data, WordOfTheMonthMeta? meta
});


$WordOfTheMonthDataCopyWith<$Res>? get data;$WordOfTheMonthMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$WordOfTheMonthModelCopyWithImpl<$Res>
    implements $WordOfTheMonthModelCopyWith<$Res> {
  _$WordOfTheMonthModelCopyWithImpl(this._self, this._then);

  final WordOfTheMonthModel _self;
  final $Res Function(WordOfTheMonthModel) _then;

/// Create a copy of WordOfTheMonthModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as WordOfTheMonthData?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as WordOfTheMonthMeta?,
  ));
}
/// Create a copy of WordOfTheMonthModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordOfTheMonthDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $WordOfTheMonthDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of WordOfTheMonthModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordOfTheMonthMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $WordOfTheMonthMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [WordOfTheMonthModel].
extension WordOfTheMonthModelPatterns on WordOfTheMonthModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordOfTheMonthModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordOfTheMonthModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordOfTheMonthModel value)  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordOfTheMonthModel value)?  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  WordOfTheMonthData? data,  WordOfTheMonthMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordOfTheMonthModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  WordOfTheMonthData? data,  WordOfTheMonthMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _WordOfTheMonthModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  WordOfTheMonthData? data,  WordOfTheMonthMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _WordOfTheMonthModel() when $default != null:
return $default(_that.status,_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordOfTheMonthModel implements WordOfTheMonthModel {
  const _WordOfTheMonthModel({this.status, this.data, this.meta});
  factory _WordOfTheMonthModel.fromJson(Map<String, dynamic> json) => _$WordOfTheMonthModelFromJson(json);

@override final  String? status;
@override final  WordOfTheMonthData? data;
@override final  WordOfTheMonthMeta? meta;

/// Create a copy of WordOfTheMonthModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordOfTheMonthModelCopyWith<_WordOfTheMonthModel> get copyWith => __$WordOfTheMonthModelCopyWithImpl<_WordOfTheMonthModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordOfTheMonthModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordOfTheMonthModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,meta);

@override
String toString() {
  return 'WordOfTheMonthModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$WordOfTheMonthModelCopyWith<$Res> implements $WordOfTheMonthModelCopyWith<$Res> {
  factory _$WordOfTheMonthModelCopyWith(_WordOfTheMonthModel value, $Res Function(_WordOfTheMonthModel) _then) = __$WordOfTheMonthModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, WordOfTheMonthData? data, WordOfTheMonthMeta? meta
});


@override $WordOfTheMonthDataCopyWith<$Res>? get data;@override $WordOfTheMonthMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$WordOfTheMonthModelCopyWithImpl<$Res>
    implements _$WordOfTheMonthModelCopyWith<$Res> {
  __$WordOfTheMonthModelCopyWithImpl(this._self, this._then);

  final _WordOfTheMonthModel _self;
  final $Res Function(_WordOfTheMonthModel) _then;

/// Create a copy of WordOfTheMonthModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_WordOfTheMonthModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as WordOfTheMonthData?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as WordOfTheMonthMeta?,
  ));
}

/// Create a copy of WordOfTheMonthModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordOfTheMonthDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $WordOfTheMonthDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of WordOfTheMonthModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordOfTheMonthMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $WordOfTheMonthMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$WordOfTheMonthData {

@JsonKey(name: 'sub_categories') List<WordOfTheMonthCategory>? get subCategories;
/// Create a copy of WordOfTheMonthData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordOfTheMonthDataCopyWith<WordOfTheMonthData> get copyWith => _$WordOfTheMonthDataCopyWithImpl<WordOfTheMonthData>(this as WordOfTheMonthData, _$identity);

  /// Serializes this WordOfTheMonthData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordOfTheMonthData&&const DeepCollectionEquality().equals(other.subCategories, subCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(subCategories));

@override
String toString() {
  return 'WordOfTheMonthData(subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class $WordOfTheMonthDataCopyWith<$Res>  {
  factory $WordOfTheMonthDataCopyWith(WordOfTheMonthData value, $Res Function(WordOfTheMonthData) _then) = _$WordOfTheMonthDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sub_categories') List<WordOfTheMonthCategory>? subCategories
});




}
/// @nodoc
class _$WordOfTheMonthDataCopyWithImpl<$Res>
    implements $WordOfTheMonthDataCopyWith<$Res> {
  _$WordOfTheMonthDataCopyWithImpl(this._self, this._then);

  final WordOfTheMonthData _self;
  final $Res Function(WordOfTheMonthData) _then;

/// Create a copy of WordOfTheMonthData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subCategories = freezed,}) {
  return _then(_self.copyWith(
subCategories: freezed == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<WordOfTheMonthCategory>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordOfTheMonthData].
extension WordOfTheMonthDataPatterns on WordOfTheMonthData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordOfTheMonthData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordOfTheMonthData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordOfTheMonthData value)  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordOfTheMonthData value)?  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sub_categories')  List<WordOfTheMonthCategory>? subCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordOfTheMonthData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sub_categories')  List<WordOfTheMonthCategory>? subCategories)  $default,) {final _that = this;
switch (_that) {
case _WordOfTheMonthData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sub_categories')  List<WordOfTheMonthCategory>? subCategories)?  $default,) {final _that = this;
switch (_that) {
case _WordOfTheMonthData() when $default != null:
return $default(_that.subCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordOfTheMonthData implements WordOfTheMonthData {
  const _WordOfTheMonthData({@JsonKey(name: 'sub_categories') final  List<WordOfTheMonthCategory>? subCategories}): _subCategories = subCategories;
  factory _WordOfTheMonthData.fromJson(Map<String, dynamic> json) => _$WordOfTheMonthDataFromJson(json);

 final  List<WordOfTheMonthCategory>? _subCategories;
@override@JsonKey(name: 'sub_categories') List<WordOfTheMonthCategory>? get subCategories {
  final value = _subCategories;
  if (value == null) return null;
  if (_subCategories is EqualUnmodifiableListView) return _subCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of WordOfTheMonthData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordOfTheMonthDataCopyWith<_WordOfTheMonthData> get copyWith => __$WordOfTheMonthDataCopyWithImpl<_WordOfTheMonthData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordOfTheMonthDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordOfTheMonthData&&const DeepCollectionEquality().equals(other._subCategories, _subCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_subCategories));

@override
String toString() {
  return 'WordOfTheMonthData(subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class _$WordOfTheMonthDataCopyWith<$Res> implements $WordOfTheMonthDataCopyWith<$Res> {
  factory _$WordOfTheMonthDataCopyWith(_WordOfTheMonthData value, $Res Function(_WordOfTheMonthData) _then) = __$WordOfTheMonthDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sub_categories') List<WordOfTheMonthCategory>? subCategories
});




}
/// @nodoc
class __$WordOfTheMonthDataCopyWithImpl<$Res>
    implements _$WordOfTheMonthDataCopyWith<$Res> {
  __$WordOfTheMonthDataCopyWithImpl(this._self, this._then);

  final _WordOfTheMonthData _self;
  final $Res Function(_WordOfTheMonthData) _then;

/// Create a copy of WordOfTheMonthData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subCategories = freezed,}) {
  return _then(_WordOfTheMonthData(
subCategories: freezed == subCategories ? _self._subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<WordOfTheMonthCategory>?,
  ));
}


}


/// @nodoc
mixin _$WordOfTheMonthCategory {

@JsonKey(name: 'cat_id') int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_menus') String? get catMenus;@JsonKey(name: 'cat_pos') String? get catPos;@JsonKey(name: 'cat_in_sub_menu') String? get catInSubMenu; WordOfTheMonthArticlesWrapper? get articles;
/// Create a copy of WordOfTheMonthCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordOfTheMonthCategoryCopyWith<WordOfTheMonthCategory> get copyWith => _$WordOfTheMonthCategoryCopyWithImpl<WordOfTheMonthCategory>(this as WordOfTheMonthCategory, _$identity);

  /// Serializes this WordOfTheMonthCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordOfTheMonthCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catInSubMenu, catInSubMenu) || other.catInSubMenu == catInSubMenu)&&(identical(other.articles, articles) || other.articles == articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catMenus,catPos,catInSubMenu,articles);

@override
String toString() {
  return 'WordOfTheMonthCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catMenus: $catMenus, catPos: $catPos, catInSubMenu: $catInSubMenu, articles: $articles)';
}


}

/// @nodoc
abstract mixin class $WordOfTheMonthCategoryCopyWith<$Res>  {
  factory $WordOfTheMonthCategoryCopyWith(WordOfTheMonthCategory value, $Res Function(WordOfTheMonthCategory) _then) = _$WordOfTheMonthCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_menus') String? catMenus,@JsonKey(name: 'cat_pos') String? catPos,@JsonKey(name: 'cat_in_sub_menu') String? catInSubMenu, WordOfTheMonthArticlesWrapper? articles
});


$WordOfTheMonthArticlesWrapperCopyWith<$Res>? get articles;

}
/// @nodoc
class _$WordOfTheMonthCategoryCopyWithImpl<$Res>
    implements $WordOfTheMonthCategoryCopyWith<$Res> {
  _$WordOfTheMonthCategoryCopyWithImpl(this._self, this._then);

  final WordOfTheMonthCategory _self;
  final $Res Function(WordOfTheMonthCategory) _then;

/// Create a copy of WordOfTheMonthCategory
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
as WordOfTheMonthArticlesWrapper?,
  ));
}
/// Create a copy of WordOfTheMonthCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordOfTheMonthArticlesWrapperCopyWith<$Res>? get articles {
    if (_self.articles == null) {
    return null;
  }

  return $WordOfTheMonthArticlesWrapperCopyWith<$Res>(_self.articles!, (value) {
    return _then(_self.copyWith(articles: value));
  });
}
}


/// Adds pattern-matching-related methods to [WordOfTheMonthCategory].
extension WordOfTheMonthCategoryPatterns on WordOfTheMonthCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordOfTheMonthCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordOfTheMonthCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordOfTheMonthCategory value)  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordOfTheMonthCategory value)?  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_in_sub_menu')  String? catInSubMenu,  WordOfTheMonthArticlesWrapper? articles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordOfTheMonthCategory() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_in_sub_menu')  String? catInSubMenu,  WordOfTheMonthArticlesWrapper? articles)  $default,) {final _that = this;
switch (_that) {
case _WordOfTheMonthCategory():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus')  String? catMenus, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_in_sub_menu')  String? catInSubMenu,  WordOfTheMonthArticlesWrapper? articles)?  $default,) {final _that = this;
switch (_that) {
case _WordOfTheMonthCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catMenus,_that.catPos,_that.catInSubMenu,_that.articles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordOfTheMonthCategory implements WordOfTheMonthCategory {
  const _WordOfTheMonthCategory({@JsonKey(name: 'cat_id') this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_menus') this.catMenus, @JsonKey(name: 'cat_pos') this.catPos, @JsonKey(name: 'cat_in_sub_menu') this.catInSubMenu, this.articles});
  factory _WordOfTheMonthCategory.fromJson(Map<String, dynamic> json) => _$WordOfTheMonthCategoryFromJson(json);

@override@JsonKey(name: 'cat_id') final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_menus') final  String? catMenus;
@override@JsonKey(name: 'cat_pos') final  String? catPos;
@override@JsonKey(name: 'cat_in_sub_menu') final  String? catInSubMenu;
@override final  WordOfTheMonthArticlesWrapper? articles;

/// Create a copy of WordOfTheMonthCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordOfTheMonthCategoryCopyWith<_WordOfTheMonthCategory> get copyWith => __$WordOfTheMonthCategoryCopyWithImpl<_WordOfTheMonthCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordOfTheMonthCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordOfTheMonthCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catInSubMenu, catInSubMenu) || other.catInSubMenu == catInSubMenu)&&(identical(other.articles, articles) || other.articles == articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catMenus,catPos,catInSubMenu,articles);

@override
String toString() {
  return 'WordOfTheMonthCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catMenus: $catMenus, catPos: $catPos, catInSubMenu: $catInSubMenu, articles: $articles)';
}


}

/// @nodoc
abstract mixin class _$WordOfTheMonthCategoryCopyWith<$Res> implements $WordOfTheMonthCategoryCopyWith<$Res> {
  factory _$WordOfTheMonthCategoryCopyWith(_WordOfTheMonthCategory value, $Res Function(_WordOfTheMonthCategory) _then) = __$WordOfTheMonthCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_menus') String? catMenus,@JsonKey(name: 'cat_pos') String? catPos,@JsonKey(name: 'cat_in_sub_menu') String? catInSubMenu, WordOfTheMonthArticlesWrapper? articles
});


@override $WordOfTheMonthArticlesWrapperCopyWith<$Res>? get articles;

}
/// @nodoc
class __$WordOfTheMonthCategoryCopyWithImpl<$Res>
    implements _$WordOfTheMonthCategoryCopyWith<$Res> {
  __$WordOfTheMonthCategoryCopyWithImpl(this._self, this._then);

  final _WordOfTheMonthCategory _self;
  final $Res Function(_WordOfTheMonthCategory) _then;

/// Create a copy of WordOfTheMonthCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catMenus = freezed,Object? catPos = freezed,Object? catInSubMenu = freezed,Object? articles = freezed,}) {
  return _then(_WordOfTheMonthCategory(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catMenus: freezed == catMenus ? _self.catMenus : catMenus // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,catInSubMenu: freezed == catInSubMenu ? _self.catInSubMenu : catInSubMenu // ignore: cast_nullable_to_non_nullable
as String?,articles: freezed == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as WordOfTheMonthArticlesWrapper?,
  ));
}

/// Create a copy of WordOfTheMonthCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordOfTheMonthArticlesWrapperCopyWith<$Res>? get articles {
    if (_self.articles == null) {
    return null;
  }

  return $WordOfTheMonthArticlesWrapperCopyWith<$Res>(_self.articles!, (value) {
    return _then(_self.copyWith(articles: value));
  });
}
}


/// @nodoc
mixin _$WordOfTheMonthArticlesWrapper {

 List<WordOfTheMonthArticle>? get data; WordOfTheMonthPagination? get pagination;
/// Create a copy of WordOfTheMonthArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordOfTheMonthArticlesWrapperCopyWith<WordOfTheMonthArticlesWrapper> get copyWith => _$WordOfTheMonthArticlesWrapperCopyWithImpl<WordOfTheMonthArticlesWrapper>(this as WordOfTheMonthArticlesWrapper, _$identity);

  /// Serializes this WordOfTheMonthArticlesWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordOfTheMonthArticlesWrapper&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'WordOfTheMonthArticlesWrapper(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $WordOfTheMonthArticlesWrapperCopyWith<$Res>  {
  factory $WordOfTheMonthArticlesWrapperCopyWith(WordOfTheMonthArticlesWrapper value, $Res Function(WordOfTheMonthArticlesWrapper) _then) = _$WordOfTheMonthArticlesWrapperCopyWithImpl;
@useResult
$Res call({
 List<WordOfTheMonthArticle>? data, WordOfTheMonthPagination? pagination
});


$WordOfTheMonthPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$WordOfTheMonthArticlesWrapperCopyWithImpl<$Res>
    implements $WordOfTheMonthArticlesWrapperCopyWith<$Res> {
  _$WordOfTheMonthArticlesWrapperCopyWithImpl(this._self, this._then);

  final WordOfTheMonthArticlesWrapper _self;
  final $Res Function(WordOfTheMonthArticlesWrapper) _then;

/// Create a copy of WordOfTheMonthArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<WordOfTheMonthArticle>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as WordOfTheMonthPagination?,
  ));
}
/// Create a copy of WordOfTheMonthArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordOfTheMonthPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $WordOfTheMonthPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [WordOfTheMonthArticlesWrapper].
extension WordOfTheMonthArticlesWrapperPatterns on WordOfTheMonthArticlesWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordOfTheMonthArticlesWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordOfTheMonthArticlesWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordOfTheMonthArticlesWrapper value)  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthArticlesWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordOfTheMonthArticlesWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthArticlesWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WordOfTheMonthArticle>? data,  WordOfTheMonthPagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordOfTheMonthArticlesWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WordOfTheMonthArticle>? data,  WordOfTheMonthPagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _WordOfTheMonthArticlesWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WordOfTheMonthArticle>? data,  WordOfTheMonthPagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _WordOfTheMonthArticlesWrapper() when $default != null:
return $default(_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordOfTheMonthArticlesWrapper implements WordOfTheMonthArticlesWrapper {
  const _WordOfTheMonthArticlesWrapper({final  List<WordOfTheMonthArticle>? data, this.pagination}): _data = data;
  factory _WordOfTheMonthArticlesWrapper.fromJson(Map<String, dynamic> json) => _$WordOfTheMonthArticlesWrapperFromJson(json);

 final  List<WordOfTheMonthArticle>? _data;
@override List<WordOfTheMonthArticle>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  WordOfTheMonthPagination? pagination;

/// Create a copy of WordOfTheMonthArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordOfTheMonthArticlesWrapperCopyWith<_WordOfTheMonthArticlesWrapper> get copyWith => __$WordOfTheMonthArticlesWrapperCopyWithImpl<_WordOfTheMonthArticlesWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordOfTheMonthArticlesWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordOfTheMonthArticlesWrapper&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'WordOfTheMonthArticlesWrapper(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$WordOfTheMonthArticlesWrapperCopyWith<$Res> implements $WordOfTheMonthArticlesWrapperCopyWith<$Res> {
  factory _$WordOfTheMonthArticlesWrapperCopyWith(_WordOfTheMonthArticlesWrapper value, $Res Function(_WordOfTheMonthArticlesWrapper) _then) = __$WordOfTheMonthArticlesWrapperCopyWithImpl;
@override @useResult
$Res call({
 List<WordOfTheMonthArticle>? data, WordOfTheMonthPagination? pagination
});


@override $WordOfTheMonthPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$WordOfTheMonthArticlesWrapperCopyWithImpl<$Res>
    implements _$WordOfTheMonthArticlesWrapperCopyWith<$Res> {
  __$WordOfTheMonthArticlesWrapperCopyWithImpl(this._self, this._then);

  final _WordOfTheMonthArticlesWrapper _self;
  final $Res Function(_WordOfTheMonthArticlesWrapper) _then;

/// Create a copy of WordOfTheMonthArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_WordOfTheMonthArticlesWrapper(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<WordOfTheMonthArticle>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as WordOfTheMonthPagination?,
  ));
}

/// Create a copy of WordOfTheMonthArticlesWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordOfTheMonthPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $WordOfTheMonthPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$WordOfTheMonthArticle {

@JsonKey(name: 'article_id') int? get articleId;@JsonKey(name: 'article_title') String? get articleTitle;@JsonKey(name: 'article_summary') String? get articleSummary;@JsonKey(name: 'article_cat_id') String? get articleCatId;@JsonKey(name: 'article_des') String? get articleDes;@JsonKey(name: 'article_pic') String? get articlePic;@JsonKey(name: 'article_visitor') String? get articleVisitor;@JsonKey(name: 'article_date') String? get articleDate;
/// Create a copy of WordOfTheMonthArticle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordOfTheMonthArticleCopyWith<WordOfTheMonthArticle> get copyWith => _$WordOfTheMonthArticleCopyWithImpl<WordOfTheMonthArticle>(this as WordOfTheMonthArticle, _$identity);

  /// Serializes this WordOfTheMonthArticle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordOfTheMonthArticle&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleSummary,articleCatId,articleDes,articlePic,articleVisitor,articleDate);

@override
String toString() {
  return 'WordOfTheMonthArticle(articleId: $articleId, articleTitle: $articleTitle, articleSummary: $articleSummary, articleCatId: $articleCatId, articleDes: $articleDes, articlePic: $articlePic, articleVisitor: $articleVisitor, articleDate: $articleDate)';
}


}

/// @nodoc
abstract mixin class $WordOfTheMonthArticleCopyWith<$Res>  {
  factory $WordOfTheMonthArticleCopyWith(WordOfTheMonthArticle value, $Res Function(WordOfTheMonthArticle) _then) = _$WordOfTheMonthArticleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'article_id') int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id') String? articleCatId,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor') String? articleVisitor,@JsonKey(name: 'article_date') String? articleDate
});




}
/// @nodoc
class _$WordOfTheMonthArticleCopyWithImpl<$Res>
    implements $WordOfTheMonthArticleCopyWith<$Res> {
  _$WordOfTheMonthArticleCopyWithImpl(this._self, this._then);

  final WordOfTheMonthArticle _self;
  final $Res Function(WordOfTheMonthArticle) _then;

/// Create a copy of WordOfTheMonthArticle
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


/// Adds pattern-matching-related methods to [WordOfTheMonthArticle].
extension WordOfTheMonthArticlePatterns on WordOfTheMonthArticle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordOfTheMonthArticle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordOfTheMonthArticle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordOfTheMonthArticle value)  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthArticle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordOfTheMonthArticle value)?  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthArticle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_date')  String? articleDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordOfTheMonthArticle() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_date')  String? articleDate)  $default,) {final _that = this;
switch (_that) {
case _WordOfTheMonthArticle():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_date')  String? articleDate)?  $default,) {final _that = this;
switch (_that) {
case _WordOfTheMonthArticle() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleCatId,_that.articleDes,_that.articlePic,_that.articleVisitor,_that.articleDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordOfTheMonthArticle implements WordOfTheMonthArticle {
  const _WordOfTheMonthArticle({@JsonKey(name: 'article_id') this.articleId, @JsonKey(name: 'article_title') this.articleTitle, @JsonKey(name: 'article_summary') this.articleSummary, @JsonKey(name: 'article_cat_id') this.articleCatId, @JsonKey(name: 'article_des') this.articleDes, @JsonKey(name: 'article_pic') this.articlePic, @JsonKey(name: 'article_visitor') this.articleVisitor, @JsonKey(name: 'article_date') this.articleDate});
  factory _WordOfTheMonthArticle.fromJson(Map<String, dynamic> json) => _$WordOfTheMonthArticleFromJson(json);

@override@JsonKey(name: 'article_id') final  int? articleId;
@override@JsonKey(name: 'article_title') final  String? articleTitle;
@override@JsonKey(name: 'article_summary') final  String? articleSummary;
@override@JsonKey(name: 'article_cat_id') final  String? articleCatId;
@override@JsonKey(name: 'article_des') final  String? articleDes;
@override@JsonKey(name: 'article_pic') final  String? articlePic;
@override@JsonKey(name: 'article_visitor') final  String? articleVisitor;
@override@JsonKey(name: 'article_date') final  String? articleDate;

/// Create a copy of WordOfTheMonthArticle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordOfTheMonthArticleCopyWith<_WordOfTheMonthArticle> get copyWith => __$WordOfTheMonthArticleCopyWithImpl<_WordOfTheMonthArticle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordOfTheMonthArticleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordOfTheMonthArticle&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleSummary,articleCatId,articleDes,articlePic,articleVisitor,articleDate);

@override
String toString() {
  return 'WordOfTheMonthArticle(articleId: $articleId, articleTitle: $articleTitle, articleSummary: $articleSummary, articleCatId: $articleCatId, articleDes: $articleDes, articlePic: $articlePic, articleVisitor: $articleVisitor, articleDate: $articleDate)';
}


}

/// @nodoc
abstract mixin class _$WordOfTheMonthArticleCopyWith<$Res> implements $WordOfTheMonthArticleCopyWith<$Res> {
  factory _$WordOfTheMonthArticleCopyWith(_WordOfTheMonthArticle value, $Res Function(_WordOfTheMonthArticle) _then) = __$WordOfTheMonthArticleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'article_id') int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_cat_id') String? articleCatId,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor') String? articleVisitor,@JsonKey(name: 'article_date') String? articleDate
});




}
/// @nodoc
class __$WordOfTheMonthArticleCopyWithImpl<$Res>
    implements _$WordOfTheMonthArticleCopyWith<$Res> {
  __$WordOfTheMonthArticleCopyWithImpl(this._self, this._then);

  final _WordOfTheMonthArticle _self;
  final $Res Function(_WordOfTheMonthArticle) _then;

/// Create a copy of WordOfTheMonthArticle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleSummary = freezed,Object? articleCatId = freezed,Object? articleDes = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articleDate = freezed,}) {
  return _then(_WordOfTheMonthArticle(
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
mixin _$WordOfTheMonthPagination {

 int? get total; int? get count;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'last_page') int? get lastPage; int? get from; int? get to;
/// Create a copy of WordOfTheMonthPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordOfTheMonthPaginationCopyWith<WordOfTheMonthPagination> get copyWith => _$WordOfTheMonthPaginationCopyWithImpl<WordOfTheMonthPagination>(this as WordOfTheMonthPagination, _$identity);

  /// Serializes this WordOfTheMonthPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordOfTheMonthPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'WordOfTheMonthPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $WordOfTheMonthPaginationCopyWith<$Res>  {
  factory $WordOfTheMonthPaginationCopyWith(WordOfTheMonthPagination value, $Res Function(WordOfTheMonthPagination) _then) = _$WordOfTheMonthPaginationCopyWithImpl;
@useResult
$Res call({
 int? total, int? count,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage, int? from, int? to
});




}
/// @nodoc
class _$WordOfTheMonthPaginationCopyWithImpl<$Res>
    implements $WordOfTheMonthPaginationCopyWith<$Res> {
  _$WordOfTheMonthPaginationCopyWithImpl(this._self, this._then);

  final WordOfTheMonthPagination _self;
  final $Res Function(WordOfTheMonthPagination) _then;

/// Create a copy of WordOfTheMonthPagination
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


/// Adds pattern-matching-related methods to [WordOfTheMonthPagination].
extension WordOfTheMonthPaginationPatterns on WordOfTheMonthPagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordOfTheMonthPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordOfTheMonthPagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordOfTheMonthPagination value)  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthPagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordOfTheMonthPagination value)?  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthPagination() when $default != null:
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
case _WordOfTheMonthPagination() when $default != null:
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
case _WordOfTheMonthPagination():
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
case _WordOfTheMonthPagination() when $default != null:
return $default(_that.total,_that.count,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordOfTheMonthPagination implements WordOfTheMonthPagination {
  const _WordOfTheMonthPagination({this.total, this.count, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'last_page') this.lastPage, this.from, this.to});
  factory _WordOfTheMonthPagination.fromJson(Map<String, dynamic> json) => _$WordOfTheMonthPaginationFromJson(json);

@override final  int? total;
@override final  int? count;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'last_page') final  int? lastPage;
@override final  int? from;
@override final  int? to;

/// Create a copy of WordOfTheMonthPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordOfTheMonthPaginationCopyWith<_WordOfTheMonthPagination> get copyWith => __$WordOfTheMonthPaginationCopyWithImpl<_WordOfTheMonthPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordOfTheMonthPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordOfTheMonthPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'WordOfTheMonthPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$WordOfTheMonthPaginationCopyWith<$Res> implements $WordOfTheMonthPaginationCopyWith<$Res> {
  factory _$WordOfTheMonthPaginationCopyWith(_WordOfTheMonthPagination value, $Res Function(_WordOfTheMonthPagination) _then) = __$WordOfTheMonthPaginationCopyWithImpl;
@override @useResult
$Res call({
 int? total, int? count,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage, int? from, int? to
});




}
/// @nodoc
class __$WordOfTheMonthPaginationCopyWithImpl<$Res>
    implements _$WordOfTheMonthPaginationCopyWith<$Res> {
  __$WordOfTheMonthPaginationCopyWithImpl(this._self, this._then);

  final _WordOfTheMonthPagination _self;
  final $Res Function(_WordOfTheMonthPagination) _then;

/// Create a copy of WordOfTheMonthPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? count = freezed,Object? perPage = freezed,Object? currentPage = freezed,Object? lastPage = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_WordOfTheMonthPagination(
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
mixin _$WordOfTheMonthMeta {

@JsonKey(name: 'pagination_params') WordOfTheMonthPaginationParams? get paginationParams;@JsonKey(name: 'response_info') WordOfTheMonthResponseInfo? get responseInfo;
/// Create a copy of WordOfTheMonthMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordOfTheMonthMetaCopyWith<WordOfTheMonthMeta> get copyWith => _$WordOfTheMonthMetaCopyWithImpl<WordOfTheMonthMeta>(this as WordOfTheMonthMeta, _$identity);

  /// Serializes this WordOfTheMonthMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordOfTheMonthMeta&&(identical(other.paginationParams, paginationParams) || other.paginationParams == paginationParams)&&(identical(other.responseInfo, responseInfo) || other.responseInfo == responseInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paginationParams,responseInfo);

@override
String toString() {
  return 'WordOfTheMonthMeta(paginationParams: $paginationParams, responseInfo: $responseInfo)';
}


}

/// @nodoc
abstract mixin class $WordOfTheMonthMetaCopyWith<$Res>  {
  factory $WordOfTheMonthMetaCopyWith(WordOfTheMonthMeta value, $Res Function(WordOfTheMonthMeta) _then) = _$WordOfTheMonthMetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'pagination_params') WordOfTheMonthPaginationParams? paginationParams,@JsonKey(name: 'response_info') WordOfTheMonthResponseInfo? responseInfo
});


$WordOfTheMonthPaginationParamsCopyWith<$Res>? get paginationParams;$WordOfTheMonthResponseInfoCopyWith<$Res>? get responseInfo;

}
/// @nodoc
class _$WordOfTheMonthMetaCopyWithImpl<$Res>
    implements $WordOfTheMonthMetaCopyWith<$Res> {
  _$WordOfTheMonthMetaCopyWithImpl(this._self, this._then);

  final WordOfTheMonthMeta _self;
  final $Res Function(WordOfTheMonthMeta) _then;

/// Create a copy of WordOfTheMonthMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paginationParams = freezed,Object? responseInfo = freezed,}) {
  return _then(_self.copyWith(
paginationParams: freezed == paginationParams ? _self.paginationParams : paginationParams // ignore: cast_nullable_to_non_nullable
as WordOfTheMonthPaginationParams?,responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as WordOfTheMonthResponseInfo?,
  ));
}
/// Create a copy of WordOfTheMonthMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordOfTheMonthPaginationParamsCopyWith<$Res>? get paginationParams {
    if (_self.paginationParams == null) {
    return null;
  }

  return $WordOfTheMonthPaginationParamsCopyWith<$Res>(_self.paginationParams!, (value) {
    return _then(_self.copyWith(paginationParams: value));
  });
}/// Create a copy of WordOfTheMonthMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordOfTheMonthResponseInfoCopyWith<$Res>? get responseInfo {
    if (_self.responseInfo == null) {
    return null;
  }

  return $WordOfTheMonthResponseInfoCopyWith<$Res>(_self.responseInfo!, (value) {
    return _then(_self.copyWith(responseInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [WordOfTheMonthMeta].
extension WordOfTheMonthMetaPatterns on WordOfTheMonthMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordOfTheMonthMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordOfTheMonthMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordOfTheMonthMeta value)  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordOfTheMonthMeta value)?  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'pagination_params')  WordOfTheMonthPaginationParams? paginationParams, @JsonKey(name: 'response_info')  WordOfTheMonthResponseInfo? responseInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordOfTheMonthMeta() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'pagination_params')  WordOfTheMonthPaginationParams? paginationParams, @JsonKey(name: 'response_info')  WordOfTheMonthResponseInfo? responseInfo)  $default,) {final _that = this;
switch (_that) {
case _WordOfTheMonthMeta():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'pagination_params')  WordOfTheMonthPaginationParams? paginationParams, @JsonKey(name: 'response_info')  WordOfTheMonthResponseInfo? responseInfo)?  $default,) {final _that = this;
switch (_that) {
case _WordOfTheMonthMeta() when $default != null:
return $default(_that.paginationParams,_that.responseInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordOfTheMonthMeta implements WordOfTheMonthMeta {
  const _WordOfTheMonthMeta({@JsonKey(name: 'pagination_params') this.paginationParams, @JsonKey(name: 'response_info') this.responseInfo});
  factory _WordOfTheMonthMeta.fromJson(Map<String, dynamic> json) => _$WordOfTheMonthMetaFromJson(json);

@override@JsonKey(name: 'pagination_params') final  WordOfTheMonthPaginationParams? paginationParams;
@override@JsonKey(name: 'response_info') final  WordOfTheMonthResponseInfo? responseInfo;

/// Create a copy of WordOfTheMonthMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordOfTheMonthMetaCopyWith<_WordOfTheMonthMeta> get copyWith => __$WordOfTheMonthMetaCopyWithImpl<_WordOfTheMonthMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordOfTheMonthMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordOfTheMonthMeta&&(identical(other.paginationParams, paginationParams) || other.paginationParams == paginationParams)&&(identical(other.responseInfo, responseInfo) || other.responseInfo == responseInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paginationParams,responseInfo);

@override
String toString() {
  return 'WordOfTheMonthMeta(paginationParams: $paginationParams, responseInfo: $responseInfo)';
}


}

/// @nodoc
abstract mixin class _$WordOfTheMonthMetaCopyWith<$Res> implements $WordOfTheMonthMetaCopyWith<$Res> {
  factory _$WordOfTheMonthMetaCopyWith(_WordOfTheMonthMeta value, $Res Function(_WordOfTheMonthMeta) _then) = __$WordOfTheMonthMetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'pagination_params') WordOfTheMonthPaginationParams? paginationParams,@JsonKey(name: 'response_info') WordOfTheMonthResponseInfo? responseInfo
});


@override $WordOfTheMonthPaginationParamsCopyWith<$Res>? get paginationParams;@override $WordOfTheMonthResponseInfoCopyWith<$Res>? get responseInfo;

}
/// @nodoc
class __$WordOfTheMonthMetaCopyWithImpl<$Res>
    implements _$WordOfTheMonthMetaCopyWith<$Res> {
  __$WordOfTheMonthMetaCopyWithImpl(this._self, this._then);

  final _WordOfTheMonthMeta _self;
  final $Res Function(_WordOfTheMonthMeta) _then;

/// Create a copy of WordOfTheMonthMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paginationParams = freezed,Object? responseInfo = freezed,}) {
  return _then(_WordOfTheMonthMeta(
paginationParams: freezed == paginationParams ? _self.paginationParams : paginationParams // ignore: cast_nullable_to_non_nullable
as WordOfTheMonthPaginationParams?,responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as WordOfTheMonthResponseInfo?,
  ));
}

/// Create a copy of WordOfTheMonthMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordOfTheMonthPaginationParamsCopyWith<$Res>? get paginationParams {
    if (_self.paginationParams == null) {
    return null;
  }

  return $WordOfTheMonthPaginationParamsCopyWith<$Res>(_self.paginationParams!, (value) {
    return _then(_self.copyWith(paginationParams: value));
  });
}/// Create a copy of WordOfTheMonthMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordOfTheMonthResponseInfoCopyWith<$Res>? get responseInfo {
    if (_self.responseInfo == null) {
    return null;
  }

  return $WordOfTheMonthResponseInfoCopyWith<$Res>(_self.responseInfo!, (value) {
    return _then(_self.copyWith(responseInfo: value));
  });
}
}


/// @nodoc
mixin _$WordOfTheMonthPaginationParams {

@JsonKey(name: 'articles_per_page') String? get articlesPerPage;@JsonKey(name: 'categories_per_page') int? get categoriesPerPage;@JsonKey(name: 'articles_page') String? get articlesPage;@JsonKey(name: 'categories_page') int? get categoriesPage;
/// Create a copy of WordOfTheMonthPaginationParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordOfTheMonthPaginationParamsCopyWith<WordOfTheMonthPaginationParams> get copyWith => _$WordOfTheMonthPaginationParamsCopyWithImpl<WordOfTheMonthPaginationParams>(this as WordOfTheMonthPaginationParams, _$identity);

  /// Serializes this WordOfTheMonthPaginationParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordOfTheMonthPaginationParams&&(identical(other.articlesPerPage, articlesPerPage) || other.articlesPerPage == articlesPerPage)&&(identical(other.categoriesPerPage, categoriesPerPage) || other.categoriesPerPage == categoriesPerPage)&&(identical(other.articlesPage, articlesPage) || other.articlesPage == articlesPage)&&(identical(other.categoriesPage, categoriesPage) || other.categoriesPage == categoriesPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articlesPerPage,categoriesPerPage,articlesPage,categoriesPage);

@override
String toString() {
  return 'WordOfTheMonthPaginationParams(articlesPerPage: $articlesPerPage, categoriesPerPage: $categoriesPerPage, articlesPage: $articlesPage, categoriesPage: $categoriesPage)';
}


}

/// @nodoc
abstract mixin class $WordOfTheMonthPaginationParamsCopyWith<$Res>  {
  factory $WordOfTheMonthPaginationParamsCopyWith(WordOfTheMonthPaginationParams value, $Res Function(WordOfTheMonthPaginationParams) _then) = _$WordOfTheMonthPaginationParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'articles_per_page') String? articlesPerPage,@JsonKey(name: 'categories_per_page') int? categoriesPerPage,@JsonKey(name: 'articles_page') String? articlesPage,@JsonKey(name: 'categories_page') int? categoriesPage
});




}
/// @nodoc
class _$WordOfTheMonthPaginationParamsCopyWithImpl<$Res>
    implements $WordOfTheMonthPaginationParamsCopyWith<$Res> {
  _$WordOfTheMonthPaginationParamsCopyWithImpl(this._self, this._then);

  final WordOfTheMonthPaginationParams _self;
  final $Res Function(WordOfTheMonthPaginationParams) _then;

/// Create a copy of WordOfTheMonthPaginationParams
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


/// Adds pattern-matching-related methods to [WordOfTheMonthPaginationParams].
extension WordOfTheMonthPaginationParamsPatterns on WordOfTheMonthPaginationParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordOfTheMonthPaginationParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordOfTheMonthPaginationParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordOfTheMonthPaginationParams value)  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthPaginationParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordOfTheMonthPaginationParams value)?  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthPaginationParams() when $default != null:
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
case _WordOfTheMonthPaginationParams() when $default != null:
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
case _WordOfTheMonthPaginationParams():
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
case _WordOfTheMonthPaginationParams() when $default != null:
return $default(_that.articlesPerPage,_that.categoriesPerPage,_that.articlesPage,_that.categoriesPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordOfTheMonthPaginationParams implements WordOfTheMonthPaginationParams {
  const _WordOfTheMonthPaginationParams({@JsonKey(name: 'articles_per_page') this.articlesPerPage, @JsonKey(name: 'categories_per_page') this.categoriesPerPage, @JsonKey(name: 'articles_page') this.articlesPage, @JsonKey(name: 'categories_page') this.categoriesPage});
  factory _WordOfTheMonthPaginationParams.fromJson(Map<String, dynamic> json) => _$WordOfTheMonthPaginationParamsFromJson(json);

@override@JsonKey(name: 'articles_per_page') final  String? articlesPerPage;
@override@JsonKey(name: 'categories_per_page') final  int? categoriesPerPage;
@override@JsonKey(name: 'articles_page') final  String? articlesPage;
@override@JsonKey(name: 'categories_page') final  int? categoriesPage;

/// Create a copy of WordOfTheMonthPaginationParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordOfTheMonthPaginationParamsCopyWith<_WordOfTheMonthPaginationParams> get copyWith => __$WordOfTheMonthPaginationParamsCopyWithImpl<_WordOfTheMonthPaginationParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordOfTheMonthPaginationParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordOfTheMonthPaginationParams&&(identical(other.articlesPerPage, articlesPerPage) || other.articlesPerPage == articlesPerPage)&&(identical(other.categoriesPerPage, categoriesPerPage) || other.categoriesPerPage == categoriesPerPage)&&(identical(other.articlesPage, articlesPage) || other.articlesPage == articlesPage)&&(identical(other.categoriesPage, categoriesPage) || other.categoriesPage == categoriesPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articlesPerPage,categoriesPerPage,articlesPage,categoriesPage);

@override
String toString() {
  return 'WordOfTheMonthPaginationParams(articlesPerPage: $articlesPerPage, categoriesPerPage: $categoriesPerPage, articlesPage: $articlesPage, categoriesPage: $categoriesPage)';
}


}

/// @nodoc
abstract mixin class _$WordOfTheMonthPaginationParamsCopyWith<$Res> implements $WordOfTheMonthPaginationParamsCopyWith<$Res> {
  factory _$WordOfTheMonthPaginationParamsCopyWith(_WordOfTheMonthPaginationParams value, $Res Function(_WordOfTheMonthPaginationParams) _then) = __$WordOfTheMonthPaginationParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'articles_per_page') String? articlesPerPage,@JsonKey(name: 'categories_per_page') int? categoriesPerPage,@JsonKey(name: 'articles_page') String? articlesPage,@JsonKey(name: 'categories_page') int? categoriesPage
});




}
/// @nodoc
class __$WordOfTheMonthPaginationParamsCopyWithImpl<$Res>
    implements _$WordOfTheMonthPaginationParamsCopyWith<$Res> {
  __$WordOfTheMonthPaginationParamsCopyWithImpl(this._self, this._then);

  final _WordOfTheMonthPaginationParams _self;
  final $Res Function(_WordOfTheMonthPaginationParams) _then;

/// Create a copy of WordOfTheMonthPaginationParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articlesPerPage = freezed,Object? categoriesPerPage = freezed,Object? articlesPage = freezed,Object? categoriesPage = freezed,}) {
  return _then(_WordOfTheMonthPaginationParams(
articlesPerPage: freezed == articlesPerPage ? _self.articlesPerPage : articlesPerPage // ignore: cast_nullable_to_non_nullable
as String?,categoriesPerPage: freezed == categoriesPerPage ? _self.categoriesPerPage : categoriesPerPage // ignore: cast_nullable_to_non_nullable
as int?,articlesPage: freezed == articlesPage ? _self.articlesPage : articlesPage // ignore: cast_nullable_to_non_nullable
as String?,categoriesPage: freezed == categoriesPage ? _self.categoriesPage : categoriesPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$WordOfTheMonthResponseInfo {

 String? get timestamp;@JsonKey(name: 'api_version') String? get apiVersion; String? get endpoint;@JsonKey(name: 'content_type') String? get contentType;
/// Create a copy of WordOfTheMonthResponseInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordOfTheMonthResponseInfoCopyWith<WordOfTheMonthResponseInfo> get copyWith => _$WordOfTheMonthResponseInfoCopyWithImpl<WordOfTheMonthResponseInfo>(this as WordOfTheMonthResponseInfo, _$identity);

  /// Serializes this WordOfTheMonthResponseInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordOfTheMonthResponseInfo&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,apiVersion,endpoint,contentType);

@override
String toString() {
  return 'WordOfTheMonthResponseInfo(timestamp: $timestamp, apiVersion: $apiVersion, endpoint: $endpoint, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class $WordOfTheMonthResponseInfoCopyWith<$Res>  {
  factory $WordOfTheMonthResponseInfoCopyWith(WordOfTheMonthResponseInfo value, $Res Function(WordOfTheMonthResponseInfo) _then) = _$WordOfTheMonthResponseInfoCopyWithImpl;
@useResult
$Res call({
 String? timestamp,@JsonKey(name: 'api_version') String? apiVersion, String? endpoint,@JsonKey(name: 'content_type') String? contentType
});




}
/// @nodoc
class _$WordOfTheMonthResponseInfoCopyWithImpl<$Res>
    implements $WordOfTheMonthResponseInfoCopyWith<$Res> {
  _$WordOfTheMonthResponseInfoCopyWithImpl(this._self, this._then);

  final WordOfTheMonthResponseInfo _self;
  final $Res Function(WordOfTheMonthResponseInfo) _then;

/// Create a copy of WordOfTheMonthResponseInfo
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


/// Adds pattern-matching-related methods to [WordOfTheMonthResponseInfo].
extension WordOfTheMonthResponseInfoPatterns on WordOfTheMonthResponseInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordOfTheMonthResponseInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordOfTheMonthResponseInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordOfTheMonthResponseInfo value)  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthResponseInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordOfTheMonthResponseInfo value)?  $default,){
final _that = this;
switch (_that) {
case _WordOfTheMonthResponseInfo() when $default != null:
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
case _WordOfTheMonthResponseInfo() when $default != null:
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
case _WordOfTheMonthResponseInfo():
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
case _WordOfTheMonthResponseInfo() when $default != null:
return $default(_that.timestamp,_that.apiVersion,_that.endpoint,_that.contentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordOfTheMonthResponseInfo implements WordOfTheMonthResponseInfo {
  const _WordOfTheMonthResponseInfo({this.timestamp, @JsonKey(name: 'api_version') this.apiVersion, this.endpoint, @JsonKey(name: 'content_type') this.contentType});
  factory _WordOfTheMonthResponseInfo.fromJson(Map<String, dynamic> json) => _$WordOfTheMonthResponseInfoFromJson(json);

@override final  String? timestamp;
@override@JsonKey(name: 'api_version') final  String? apiVersion;
@override final  String? endpoint;
@override@JsonKey(name: 'content_type') final  String? contentType;

/// Create a copy of WordOfTheMonthResponseInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordOfTheMonthResponseInfoCopyWith<_WordOfTheMonthResponseInfo> get copyWith => __$WordOfTheMonthResponseInfoCopyWithImpl<_WordOfTheMonthResponseInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordOfTheMonthResponseInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordOfTheMonthResponseInfo&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,apiVersion,endpoint,contentType);

@override
String toString() {
  return 'WordOfTheMonthResponseInfo(timestamp: $timestamp, apiVersion: $apiVersion, endpoint: $endpoint, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class _$WordOfTheMonthResponseInfoCopyWith<$Res> implements $WordOfTheMonthResponseInfoCopyWith<$Res> {
  factory _$WordOfTheMonthResponseInfoCopyWith(_WordOfTheMonthResponseInfo value, $Res Function(_WordOfTheMonthResponseInfo) _then) = __$WordOfTheMonthResponseInfoCopyWithImpl;
@override @useResult
$Res call({
 String? timestamp,@JsonKey(name: 'api_version') String? apiVersion, String? endpoint,@JsonKey(name: 'content_type') String? contentType
});




}
/// @nodoc
class __$WordOfTheMonthResponseInfoCopyWithImpl<$Res>
    implements _$WordOfTheMonthResponseInfoCopyWith<$Res> {
  __$WordOfTheMonthResponseInfoCopyWithImpl(this._self, this._then);

  final _WordOfTheMonthResponseInfo _self;
  final $Res Function(_WordOfTheMonthResponseInfo) _then;

/// Create a copy of WordOfTheMonthResponseInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = freezed,Object? apiVersion = freezed,Object? endpoint = freezed,Object? contentType = freezed,}) {
  return _then(_WordOfTheMonthResponseInfo(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,apiVersion: freezed == apiVersion ? _self.apiVersion : apiVersion // ignore: cast_nullable_to_non_nullable
as String?,endpoint: freezed == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
