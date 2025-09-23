// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeModel {

 String? get status; Data? get data;
/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeModelCopyWith<HomeModel> get copyWith => _$HomeModelCopyWithImpl<HomeModel>(this as HomeModel, _$identity);

  /// Serializes this HomeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'HomeModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $HomeModelCopyWith<$Res>  {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) _then) = _$HomeModelCopyWithImpl;
@useResult
$Res call({
 String? status, Data? data
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$HomeModelCopyWithImpl<$Res>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._self, this._then);

  final HomeModel _self;
  final $Res Function(HomeModel) _then;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}
/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeModel].
extension HomeModelPatterns on HomeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  Data? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  Data? data)  $default,) {final _that = this;
switch (_that) {
case _HomeModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  Data? data)?  $default,) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeModel implements HomeModel {
  const _HomeModel({this.status, this.data});
  factory _HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);

@override final  String? status;
@override final  Data? data;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeModelCopyWith<_HomeModel> get copyWith => __$HomeModelCopyWithImpl<_HomeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'HomeModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$HomeModelCopyWith(_HomeModel value, $Res Function(_HomeModel) _then) = __$HomeModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, Data? data
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$HomeModelCopyWithImpl<$Res>
    implements _$HomeModelCopyWith<$Res> {
  __$HomeModelCopyWithImpl(this._self, this._then);

  final _HomeModel _self;
  final $Res Function(_HomeModel) _then;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,}) {
  return _then(_HomeModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$Data {

 Article? get article;@JsonKey(name: 'article_categories') List<ArticleCategory>? get articleCategories;@JsonKey(name: 'important_topics') ImportantTopics? get importantTopics;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.article, article) || other.article == article)&&const DeepCollectionEquality().equals(other.articleCategories, articleCategories)&&(identical(other.importantTopics, importantTopics) || other.importantTopics == importantTopics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,article,const DeepCollectionEquality().hash(articleCategories),importantTopics);

@override
String toString() {
  return 'Data(article: $article, articleCategories: $articleCategories, importantTopics: $importantTopics)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
 Article? article,@JsonKey(name: 'article_categories') List<ArticleCategory>? articleCategories,@JsonKey(name: 'important_topics') ImportantTopics? importantTopics
});


$ArticleCopyWith<$Res>? get article;$ImportantTopicsCopyWith<$Res>? get importantTopics;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? article = freezed,Object? articleCategories = freezed,Object? importantTopics = freezed,}) {
  return _then(_self.copyWith(
article: freezed == article ? _self.article : article // ignore: cast_nullable_to_non_nullable
as Article?,articleCategories: freezed == articleCategories ? _self.articleCategories : articleCategories // ignore: cast_nullable_to_non_nullable
as List<ArticleCategory>?,importantTopics: freezed == importantTopics ? _self.importantTopics : importantTopics // ignore: cast_nullable_to_non_nullable
as ImportantTopics?,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticleCopyWith<$Res>? get article {
    if (_self.article == null) {
    return null;
  }

  return $ArticleCopyWith<$Res>(_self.article!, (value) {
    return _then(_self.copyWith(article: value));
  });
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImportantTopicsCopyWith<$Res>? get importantTopics {
    if (_self.importantTopics == null) {
    return null;
  }

  return $ImportantTopicsCopyWith<$Res>(_self.importantTopics!, (value) {
    return _then(_self.copyWith(importantTopics: value));
  });
}
}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Article? article, @JsonKey(name: 'article_categories')  List<ArticleCategory>? articleCategories, @JsonKey(name: 'important_topics')  ImportantTopics? importantTopics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.article,_that.articleCategories,_that.importantTopics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Article? article, @JsonKey(name: 'article_categories')  List<ArticleCategory>? articleCategories, @JsonKey(name: 'important_topics')  ImportantTopics? importantTopics)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.article,_that.articleCategories,_that.importantTopics);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Article? article, @JsonKey(name: 'article_categories')  List<ArticleCategory>? articleCategories, @JsonKey(name: 'important_topics')  ImportantTopics? importantTopics)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.article,_that.articleCategories,_that.importantTopics);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({this.article, @JsonKey(name: 'article_categories') final  List<ArticleCategory>? articleCategories, @JsonKey(name: 'important_topics') this.importantTopics}): _articleCategories = articleCategories;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override final  Article? article;
 final  List<ArticleCategory>? _articleCategories;
@override@JsonKey(name: 'article_categories') List<ArticleCategory>? get articleCategories {
  final value = _articleCategories;
  if (value == null) return null;
  if (_articleCategories is EqualUnmodifiableListView) return _articleCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'important_topics') final  ImportantTopics? importantTopics;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.article, article) || other.article == article)&&const DeepCollectionEquality().equals(other._articleCategories, _articleCategories)&&(identical(other.importantTopics, importantTopics) || other.importantTopics == importantTopics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,article,const DeepCollectionEquality().hash(_articleCategories),importantTopics);

@override
String toString() {
  return 'Data(article: $article, articleCategories: $articleCategories, importantTopics: $importantTopics)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
 Article? article,@JsonKey(name: 'article_categories') List<ArticleCategory>? articleCategories,@JsonKey(name: 'important_topics') ImportantTopics? importantTopics
});


@override $ArticleCopyWith<$Res>? get article;@override $ImportantTopicsCopyWith<$Res>? get importantTopics;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? article = freezed,Object? articleCategories = freezed,Object? importantTopics = freezed,}) {
  return _then(_Data(
article: freezed == article ? _self.article : article // ignore: cast_nullable_to_non_nullable
as Article?,articleCategories: freezed == articleCategories ? _self._articleCategories : articleCategories // ignore: cast_nullable_to_non_nullable
as List<ArticleCategory>?,importantTopics: freezed == importantTopics ? _self.importantTopics : importantTopics // ignore: cast_nullable_to_non_nullable
as ImportantTopics?,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticleCopyWith<$Res>? get article {
    if (_self.article == null) {
    return null;
  }

  return $ArticleCopyWith<$Res>(_self.article!, (value) {
    return _then(_self.copyWith(article: value));
  });
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImportantTopicsCopyWith<$Res>? get importantTopics {
    if (_self.importantTopics == null) {
    return null;
  }

  return $ImportantTopicsCopyWith<$Res>(_self.importantTopics!, (value) {
    return _then(_self.copyWith(importantTopics: value));
  });
}
}


/// @nodoc
mixin _$Article {

@JsonKey(name: 'article_id') int? get articleId;@JsonKey(name: 'article_title') String? get articleTitle;@JsonKey(name: 'article_summary') String? get articleSummary;@JsonKey(name: 'article_des') String? get articleDes;@JsonKey(name: 'article_cat_id') String? get articleCatId;@JsonKey(name: 'article_pic') String? get articlePic;@JsonKey(name: 'article_visitor') String? get articleVisitor;@JsonKey(name: 'article_date') String? get articleDate; Category? get category;@JsonKey(name: 'monthly_info') MonthlyInfo? get monthlyInfo;
/// Create a copy of Article
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleCopyWith<Article> get copyWith => _$ArticleCopyWithImpl<Article>(this as Article, _$identity);

  /// Serializes this Article to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Article&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.category, category) || other.category == category)&&(identical(other.monthlyInfo, monthlyInfo) || other.monthlyInfo == monthlyInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleSummary,articleDes,articleCatId,articlePic,articleVisitor,articleDate,category,monthlyInfo);

@override
String toString() {
  return 'Article(articleId: $articleId, articleTitle: $articleTitle, articleSummary: $articleSummary, articleDes: $articleDes, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articleDate: $articleDate, category: $category, monthlyInfo: $monthlyInfo)';
}


}

/// @nodoc
abstract mixin class $ArticleCopyWith<$Res>  {
  factory $ArticleCopyWith(Article value, $Res Function(Article) _then) = _$ArticleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'article_id') int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_cat_id') String? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor') String? articleVisitor,@JsonKey(name: 'article_date') String? articleDate, Category? category,@JsonKey(name: 'monthly_info') MonthlyInfo? monthlyInfo
});


$CategoryCopyWith<$Res>? get category;$MonthlyInfoCopyWith<$Res>? get monthlyInfo;

}
/// @nodoc
class _$ArticleCopyWithImpl<$Res>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._self, this._then);

  final Article _self;
  final $Res Function(Article) _then;

/// Create a copy of Article
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleSummary = freezed,Object? articleDes = freezed,Object? articleCatId = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articleDate = freezed,Object? category = freezed,Object? monthlyInfo = freezed,}) {
  return _then(_self.copyWith(
articleId: freezed == articleId ? _self.articleId : articleId // ignore: cast_nullable_to_non_nullable
as int?,articleTitle: freezed == articleTitle ? _self.articleTitle : articleTitle // ignore: cast_nullable_to_non_nullable
as String?,articleSummary: freezed == articleSummary ? _self.articleSummary : articleSummary // ignore: cast_nullable_to_non_nullable
as String?,articleDes: freezed == articleDes ? _self.articleDes : articleDes // ignore: cast_nullable_to_non_nullable
as String?,articleCatId: freezed == articleCatId ? _self.articleCatId : articleCatId // ignore: cast_nullable_to_non_nullable
as String?,articlePic: freezed == articlePic ? _self.articlePic : articlePic // ignore: cast_nullable_to_non_nullable
as String?,articleVisitor: freezed == articleVisitor ? _self.articleVisitor : articleVisitor // ignore: cast_nullable_to_non_nullable
as String?,articleDate: freezed == articleDate ? _self.articleDate : articleDate // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,monthlyInfo: freezed == monthlyInfo ? _self.monthlyInfo : monthlyInfo // ignore: cast_nullable_to_non_nullable
as MonthlyInfo?,
  ));
}
/// Create a copy of Article
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
}/// Create a copy of Article
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MonthlyInfoCopyWith<$Res>? get monthlyInfo {
    if (_self.monthlyInfo == null) {
    return null;
  }

  return $MonthlyInfoCopyWith<$Res>(_self.monthlyInfo!, (value) {
    return _then(_self.copyWith(monthlyInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [Article].
extension ArticlePatterns on Article {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Article value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Article() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Article value)  $default,){
final _that = this;
switch (_that) {
case _Article():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Article value)?  $default,){
final _that = this;
switch (_that) {
case _Article() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_date')  String? articleDate,  Category? category, @JsonKey(name: 'monthly_info')  MonthlyInfo? monthlyInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Article() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleDes,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articleDate,_that.category,_that.monthlyInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_date')  String? articleDate,  Category? category, @JsonKey(name: 'monthly_info')  MonthlyInfo? monthlyInfo)  $default,) {final _that = this;
switch (_that) {
case _Article():
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleDes,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articleDate,_that.category,_that.monthlyInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'article_id')  int? articleId, @JsonKey(name: 'article_title')  String? articleTitle, @JsonKey(name: 'article_summary')  String? articleSummary, @JsonKey(name: 'article_des')  String? articleDes, @JsonKey(name: 'article_cat_id')  String? articleCatId, @JsonKey(name: 'article_pic')  String? articlePic, @JsonKey(name: 'article_visitor')  String? articleVisitor, @JsonKey(name: 'article_date')  String? articleDate,  Category? category, @JsonKey(name: 'monthly_info')  MonthlyInfo? monthlyInfo)?  $default,) {final _that = this;
switch (_that) {
case _Article() when $default != null:
return $default(_that.articleId,_that.articleTitle,_that.articleSummary,_that.articleDes,_that.articleCatId,_that.articlePic,_that.articleVisitor,_that.articleDate,_that.category,_that.monthlyInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Article implements Article {
  const _Article({@JsonKey(name: 'article_id') this.articleId, @JsonKey(name: 'article_title') this.articleTitle, @JsonKey(name: 'article_summary') this.articleSummary, @JsonKey(name: 'article_des') this.articleDes, @JsonKey(name: 'article_cat_id') this.articleCatId, @JsonKey(name: 'article_pic') this.articlePic, @JsonKey(name: 'article_visitor') this.articleVisitor, @JsonKey(name: 'article_date') this.articleDate, this.category, @JsonKey(name: 'monthly_info') this.monthlyInfo});
  factory _Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);

@override@JsonKey(name: 'article_id') final  int? articleId;
@override@JsonKey(name: 'article_title') final  String? articleTitle;
@override@JsonKey(name: 'article_summary') final  String? articleSummary;
@override@JsonKey(name: 'article_des') final  String? articleDes;
@override@JsonKey(name: 'article_cat_id') final  String? articleCatId;
@override@JsonKey(name: 'article_pic') final  String? articlePic;
@override@JsonKey(name: 'article_visitor') final  String? articleVisitor;
@override@JsonKey(name: 'article_date') final  String? articleDate;
@override final  Category? category;
@override@JsonKey(name: 'monthly_info') final  MonthlyInfo? monthlyInfo;

/// Create a copy of Article
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleCopyWith<_Article> get copyWith => __$ArticleCopyWithImpl<_Article>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Article&&(identical(other.articleId, articleId) || other.articleId == articleId)&&(identical(other.articleTitle, articleTitle) || other.articleTitle == articleTitle)&&(identical(other.articleSummary, articleSummary) || other.articleSummary == articleSummary)&&(identical(other.articleDes, articleDes) || other.articleDes == articleDes)&&(identical(other.articleCatId, articleCatId) || other.articleCatId == articleCatId)&&(identical(other.articlePic, articlePic) || other.articlePic == articlePic)&&(identical(other.articleVisitor, articleVisitor) || other.articleVisitor == articleVisitor)&&(identical(other.articleDate, articleDate) || other.articleDate == articleDate)&&(identical(other.category, category) || other.category == category)&&(identical(other.monthlyInfo, monthlyInfo) || other.monthlyInfo == monthlyInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articleId,articleTitle,articleSummary,articleDes,articleCatId,articlePic,articleVisitor,articleDate,category,monthlyInfo);

@override
String toString() {
  return 'Article(articleId: $articleId, articleTitle: $articleTitle, articleSummary: $articleSummary, articleDes: $articleDes, articleCatId: $articleCatId, articlePic: $articlePic, articleVisitor: $articleVisitor, articleDate: $articleDate, category: $category, monthlyInfo: $monthlyInfo)';
}


}

/// @nodoc
abstract mixin class _$ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$ArticleCopyWith(_Article value, $Res Function(_Article) _then) = __$ArticleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'article_id') int? articleId,@JsonKey(name: 'article_title') String? articleTitle,@JsonKey(name: 'article_summary') String? articleSummary,@JsonKey(name: 'article_des') String? articleDes,@JsonKey(name: 'article_cat_id') String? articleCatId,@JsonKey(name: 'article_pic') String? articlePic,@JsonKey(name: 'article_visitor') String? articleVisitor,@JsonKey(name: 'article_date') String? articleDate, Category? category,@JsonKey(name: 'monthly_info') MonthlyInfo? monthlyInfo
});


@override $CategoryCopyWith<$Res>? get category;@override $MonthlyInfoCopyWith<$Res>? get monthlyInfo;

}
/// @nodoc
class __$ArticleCopyWithImpl<$Res>
    implements _$ArticleCopyWith<$Res> {
  __$ArticleCopyWithImpl(this._self, this._then);

  final _Article _self;
  final $Res Function(_Article) _then;

/// Create a copy of Article
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articleId = freezed,Object? articleTitle = freezed,Object? articleSummary = freezed,Object? articleDes = freezed,Object? articleCatId = freezed,Object? articlePic = freezed,Object? articleVisitor = freezed,Object? articleDate = freezed,Object? category = freezed,Object? monthlyInfo = freezed,}) {
  return _then(_Article(
articleId: freezed == articleId ? _self.articleId : articleId // ignore: cast_nullable_to_non_nullable
as int?,articleTitle: freezed == articleTitle ? _self.articleTitle : articleTitle // ignore: cast_nullable_to_non_nullable
as String?,articleSummary: freezed == articleSummary ? _self.articleSummary : articleSummary // ignore: cast_nullable_to_non_nullable
as String?,articleDes: freezed == articleDes ? _self.articleDes : articleDes // ignore: cast_nullable_to_non_nullable
as String?,articleCatId: freezed == articleCatId ? _self.articleCatId : articleCatId // ignore: cast_nullable_to_non_nullable
as String?,articlePic: freezed == articlePic ? _self.articlePic : articlePic // ignore: cast_nullable_to_non_nullable
as String?,articleVisitor: freezed == articleVisitor ? _self.articleVisitor : articleVisitor // ignore: cast_nullable_to_non_nullable
as String?,articleDate: freezed == articleDate ? _self.articleDate : articleDate // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,monthlyInfo: freezed == monthlyInfo ? _self.monthlyInfo : monthlyInfo // ignore: cast_nullable_to_non_nullable
as MonthlyInfo?,
  ));
}

/// Create a copy of Article
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
}/// Create a copy of Article
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MonthlyInfoCopyWith<$Res>? get monthlyInfo {
    if (_self.monthlyInfo == null) {
    return null;
  }

  return $MonthlyInfoCopyWith<$Res>(_self.monthlyInfo!, (value) {
    return _then(_self.copyWith(monthlyInfo: value));
  });
}
}


/// @nodoc
mixin _$ArticleCategory {

@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? get catId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_menus', fromJson: _intToString) String? get catMenus;@JsonKey(name: 'cat_pos', fromJson: _intToString) String? get catPos;@JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString) String? get catInSubMenu;
/// Create a copy of ArticleCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleCategoryCopyWith<ArticleCategory> get copyWith => _$ArticleCategoryCopyWithImpl<ArticleCategory>(this as ArticleCategory, _$identity);

  /// Serializes this ArticleCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catInSubMenu, catInSubMenu) || other.catInSubMenu == catInSubMenu));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catMenus,catPos,catInSubMenu);

@override
String toString() {
  return 'ArticleCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catMenus: $catMenus, catPos: $catPos, catInSubMenu: $catInSubMenu)';
}


}

/// @nodoc
abstract mixin class $ArticleCategoryCopyWith<$Res>  {
  factory $ArticleCategoryCopyWith(ArticleCategory value, $Res Function(ArticleCategory) _then) = _$ArticleCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_menus', fromJson: _intToString) String? catMenus,@JsonKey(name: 'cat_pos', fromJson: _intToString) String? catPos,@JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString) String? catInSubMenu
});




}
/// @nodoc
class _$ArticleCategoryCopyWithImpl<$Res>
    implements $ArticleCategoryCopyWith<$Res> {
  _$ArticleCategoryCopyWithImpl(this._self, this._then);

  final ArticleCategory _self;
  final $Res Function(ArticleCategory) _then;

/// Create a copy of ArticleCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catMenus = freezed,Object? catPos = freezed,Object? catInSubMenu = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catMenus: freezed == catMenus ? _self.catMenus : catMenus // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,catInSubMenu: freezed == catInSubMenu ? _self.catInSubMenu : catInSubMenu // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticleCategory].
extension ArticleCategoryPatterns on ArticleCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticleCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticleCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticleCategory value)  $default,){
final _that = this;
switch (_that) {
case _ArticleCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticleCategory value)?  $default,){
final _that = this;
switch (_that) {
case _ArticleCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus', fromJson: _intToString)  String? catMenus, @JsonKey(name: 'cat_pos', fromJson: _intToString)  String? catPos, @JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString)  String? catInSubMenu)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catMenus,_that.catPos,_that.catInSubMenu);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus', fromJson: _intToString)  String? catMenus, @JsonKey(name: 'cat_pos', fromJson: _intToString)  String? catPos, @JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString)  String? catInSubMenu)  $default,) {final _that = this;
switch (_that) {
case _ArticleCategory():
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catMenus,_that.catPos,_that.catInSubMenu);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id', fromJson: _stringToInt)  int? catId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_menus', fromJson: _intToString)  String? catMenus, @JsonKey(name: 'cat_pos', fromJson: _intToString)  String? catPos, @JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString)  String? catInSubMenu)?  $default,) {final _that = this;
switch (_that) {
case _ArticleCategory() when $default != null:
return $default(_that.catId,_that.catTitle,_that.catNote,_that.catPic,_that.catMenus,_that.catPos,_that.catInSubMenu);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleCategory implements ArticleCategory {
  const _ArticleCategory({@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_menus', fromJson: _intToString) this.catMenus, @JsonKey(name: 'cat_pos', fromJson: _intToString) this.catPos, @JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString) this.catInSubMenu});
  factory _ArticleCategory.fromJson(Map<String, dynamic> json) => _$ArticleCategoryFromJson(json);

@override@JsonKey(name: 'cat_id', fromJson: _stringToInt) final  int? catId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_menus', fromJson: _intToString) final  String? catMenus;
@override@JsonKey(name: 'cat_pos', fromJson: _intToString) final  String? catPos;
@override@JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString) final  String? catInSubMenu;

/// Create a copy of ArticleCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleCategoryCopyWith<_ArticleCategory> get copyWith => __$ArticleCategoryCopyWithImpl<_ArticleCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catInSubMenu, catInSubMenu) || other.catInSubMenu == catInSubMenu));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle,catNote,catPic,catMenus,catPos,catInSubMenu);

@override
String toString() {
  return 'ArticleCategory(catId: $catId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catMenus: $catMenus, catPos: $catPos, catInSubMenu: $catInSubMenu)';
}


}

/// @nodoc
abstract mixin class _$ArticleCategoryCopyWith<$Res> implements $ArticleCategoryCopyWith<$Res> {
  factory _$ArticleCategoryCopyWith(_ArticleCategory value, $Res Function(_ArticleCategory) _then) = __$ArticleCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_menus', fromJson: _intToString) String? catMenus,@JsonKey(name: 'cat_pos', fromJson: _intToString) String? catPos,@JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString) String? catInSubMenu
});




}
/// @nodoc
class __$ArticleCategoryCopyWithImpl<$Res>
    implements _$ArticleCategoryCopyWith<$Res> {
  __$ArticleCategoryCopyWithImpl(this._self, this._then);

  final _ArticleCategory _self;
  final $Res Function(_ArticleCategory) _then;

/// Create a copy of ArticleCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catMenus = freezed,Object? catPos = freezed,Object? catInSubMenu = freezed,}) {
  return _then(_ArticleCategory(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catMenus: freezed == catMenus ? _self.catMenus : catMenus // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,catInSubMenu: freezed == catInSubMenu ? _self.catInSubMenu : catInSubMenu // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MonthlyInfo {

@JsonKey(name: 'current_month') int? get currentMonth;@JsonKey(name: 'current_year') int? get currentYear; int? get index;
/// Create a copy of MonthlyInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyInfoCopyWith<MonthlyInfo> get copyWith => _$MonthlyInfoCopyWithImpl<MonthlyInfo>(this as MonthlyInfo, _$identity);

  /// Serializes this MonthlyInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyInfo&&(identical(other.currentMonth, currentMonth) || other.currentMonth == currentMonth)&&(identical(other.currentYear, currentYear) || other.currentYear == currentYear)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentMonth,currentYear,index);

@override
String toString() {
  return 'MonthlyInfo(currentMonth: $currentMonth, currentYear: $currentYear, index: $index)';
}


}

/// @nodoc
abstract mixin class $MonthlyInfoCopyWith<$Res>  {
  factory $MonthlyInfoCopyWith(MonthlyInfo value, $Res Function(MonthlyInfo) _then) = _$MonthlyInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_month') int? currentMonth,@JsonKey(name: 'current_year') int? currentYear, int? index
});




}
/// @nodoc
class _$MonthlyInfoCopyWithImpl<$Res>
    implements $MonthlyInfoCopyWith<$Res> {
  _$MonthlyInfoCopyWithImpl(this._self, this._then);

  final MonthlyInfo _self;
  final $Res Function(MonthlyInfo) _then;

/// Create a copy of MonthlyInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentMonth = freezed,Object? currentYear = freezed,Object? index = freezed,}) {
  return _then(_self.copyWith(
currentMonth: freezed == currentMonth ? _self.currentMonth : currentMonth // ignore: cast_nullable_to_non_nullable
as int?,currentYear: freezed == currentYear ? _self.currentYear : currentYear // ignore: cast_nullable_to_non_nullable
as int?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthlyInfo].
extension MonthlyInfoPatterns on MonthlyInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyInfo value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyInfo value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_month')  int? currentMonth, @JsonKey(name: 'current_year')  int? currentYear,  int? index)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyInfo() when $default != null:
return $default(_that.currentMonth,_that.currentYear,_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_month')  int? currentMonth, @JsonKey(name: 'current_year')  int? currentYear,  int? index)  $default,) {final _that = this;
switch (_that) {
case _MonthlyInfo():
return $default(_that.currentMonth,_that.currentYear,_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_month')  int? currentMonth, @JsonKey(name: 'current_year')  int? currentYear,  int? index)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyInfo() when $default != null:
return $default(_that.currentMonth,_that.currentYear,_that.index);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthlyInfo implements MonthlyInfo {
  const _MonthlyInfo({@JsonKey(name: 'current_month') this.currentMonth, @JsonKey(name: 'current_year') this.currentYear, this.index});
  factory _MonthlyInfo.fromJson(Map<String, dynamic> json) => _$MonthlyInfoFromJson(json);

@override@JsonKey(name: 'current_month') final  int? currentMonth;
@override@JsonKey(name: 'current_year') final  int? currentYear;
@override final  int? index;

/// Create a copy of MonthlyInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyInfoCopyWith<_MonthlyInfo> get copyWith => __$MonthlyInfoCopyWithImpl<_MonthlyInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlyInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyInfo&&(identical(other.currentMonth, currentMonth) || other.currentMonth == currentMonth)&&(identical(other.currentYear, currentYear) || other.currentYear == currentYear)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentMonth,currentYear,index);

@override
String toString() {
  return 'MonthlyInfo(currentMonth: $currentMonth, currentYear: $currentYear, index: $index)';
}


}

/// @nodoc
abstract mixin class _$MonthlyInfoCopyWith<$Res> implements $MonthlyInfoCopyWith<$Res> {
  factory _$MonthlyInfoCopyWith(_MonthlyInfo value, $Res Function(_MonthlyInfo) _then) = __$MonthlyInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_month') int? currentMonth,@JsonKey(name: 'current_year') int? currentYear, int? index
});




}
/// @nodoc
class __$MonthlyInfoCopyWithImpl<$Res>
    implements _$MonthlyInfoCopyWith<$Res> {
  __$MonthlyInfoCopyWithImpl(this._self, this._then);

  final _MonthlyInfo _self;
  final $Res Function(_MonthlyInfo) _then;

/// Create a copy of MonthlyInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentMonth = freezed,Object? currentYear = freezed,Object? index = freezed,}) {
  return _then(_MonthlyInfo(
currentMonth: freezed == currentMonth ? _self.currentMonth : currentMonth // ignore: cast_nullable_to_non_nullable
as int?,currentYear: freezed == currentYear ? _self.currentYear : currentYear // ignore: cast_nullable_to_non_nullable
as int?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,
  ));
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
mixin _$ImportantTopics {

 List<ImportantTopic>? get data;
/// Create a copy of ImportantTopics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportantTopicsCopyWith<ImportantTopics> get copyWith => _$ImportantTopicsCopyWithImpl<ImportantTopics>(this as ImportantTopics, _$identity);

  /// Serializes this ImportantTopics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportantTopics&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ImportantTopics(data: $data)';
}


}

/// @nodoc
abstract mixin class $ImportantTopicsCopyWith<$Res>  {
  factory $ImportantTopicsCopyWith(ImportantTopics value, $Res Function(ImportantTopics) _then) = _$ImportantTopicsCopyWithImpl;
@useResult
$Res call({
 List<ImportantTopic>? data
});




}
/// @nodoc
class _$ImportantTopicsCopyWithImpl<$Res>
    implements $ImportantTopicsCopyWith<$Res> {
  _$ImportantTopicsCopyWithImpl(this._self, this._then);

  final ImportantTopics _self;
  final $Res Function(ImportantTopics) _then;

/// Create a copy of ImportantTopics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ImportantTopic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ImportantTopics].
extension ImportantTopicsPatterns on ImportantTopics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImportantTopics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImportantTopics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImportantTopics value)  $default,){
final _that = this;
switch (_that) {
case _ImportantTopics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImportantTopics value)?  $default,){
final _that = this;
switch (_that) {
case _ImportantTopics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ImportantTopic>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImportantTopics() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ImportantTopic>? data)  $default,) {final _that = this;
switch (_that) {
case _ImportantTopics():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ImportantTopic>? data)?  $default,) {final _that = this;
switch (_that) {
case _ImportantTopics() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImportantTopics implements ImportantTopics {
  const _ImportantTopics({final  List<ImportantTopic>? data}): _data = data;
  factory _ImportantTopics.fromJson(Map<String, dynamic> json) => _$ImportantTopicsFromJson(json);

 final  List<ImportantTopic>? _data;
@override List<ImportantTopic>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ImportantTopics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportantTopicsCopyWith<_ImportantTopics> get copyWith => __$ImportantTopicsCopyWithImpl<_ImportantTopics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImportantTopicsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportantTopics&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ImportantTopics(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ImportantTopicsCopyWith<$Res> implements $ImportantTopicsCopyWith<$Res> {
  factory _$ImportantTopicsCopyWith(_ImportantTopics value, $Res Function(_ImportantTopics) _then) = __$ImportantTopicsCopyWithImpl;
@override @useResult
$Res call({
 List<ImportantTopic>? data
});




}
/// @nodoc
class __$ImportantTopicsCopyWithImpl<$Res>
    implements _$ImportantTopicsCopyWith<$Res> {
  __$ImportantTopicsCopyWithImpl(this._self, this._then);

  final _ImportantTopics _self;
  final $Res Function(_ImportantTopics) _then;

/// Create a copy of ImportantTopics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_ImportantTopics(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ImportantTopic>?,
  ));
}


}


/// @nodoc
mixin _$ImportantTopic {

 int? get id; String? get title; String? get summary; String? get content; ImportantTopicCategory? get category; String? get image;@JsonKey(name: 'visitor_count', fromJson: _intToString) String? get visitorCount; String? get date;@JsonKey(fromJson: _intToString) String? get priority; String? get type; int? get order;@JsonKey(name: 'question') String? get question;@JsonKey(name: 'answer') String? get answer;@JsonKey(name: 'answer_date') String? get answerDate;@JsonKey(name: 'sender_name') String? get senderName;
/// Create a copy of ImportantTopic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportantTopicCopyWith<ImportantTopic> get copyWith => _$ImportantTopicCopyWithImpl<ImportantTopic>(this as ImportantTopic, _$identity);

  /// Serializes this ImportantTopic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportantTopic&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.content, content) || other.content == content)&&(identical(other.category, category) || other.category == category)&&(identical(other.image, image) || other.image == image)&&(identical(other.visitorCount, visitorCount) || other.visitorCount == visitorCount)&&(identical(other.date, date) || other.date == date)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.type, type) || other.type == type)&&(identical(other.order, order) || other.order == order)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.answerDate, answerDate) || other.answerDate == answerDate)&&(identical(other.senderName, senderName) || other.senderName == senderName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,summary,content,category,image,visitorCount,date,priority,type,order,question,answer,answerDate,senderName);

@override
String toString() {
  return 'ImportantTopic(id: $id, title: $title, summary: $summary, content: $content, category: $category, image: $image, visitorCount: $visitorCount, date: $date, priority: $priority, type: $type, order: $order, question: $question, answer: $answer, answerDate: $answerDate, senderName: $senderName)';
}


}

/// @nodoc
abstract mixin class $ImportantTopicCopyWith<$Res>  {
  factory $ImportantTopicCopyWith(ImportantTopic value, $Res Function(ImportantTopic) _then) = _$ImportantTopicCopyWithImpl;
@useResult
$Res call({
 int? id, String? title, String? summary, String? content, ImportantTopicCategory? category, String? image,@JsonKey(name: 'visitor_count', fromJson: _intToString) String? visitorCount, String? date,@JsonKey(fromJson: _intToString) String? priority, String? type, int? order,@JsonKey(name: 'question') String? question,@JsonKey(name: 'answer') String? answer,@JsonKey(name: 'answer_date') String? answerDate,@JsonKey(name: 'sender_name') String? senderName
});


$ImportantTopicCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$ImportantTopicCopyWithImpl<$Res>
    implements $ImportantTopicCopyWith<$Res> {
  _$ImportantTopicCopyWithImpl(this._self, this._then);

  final ImportantTopic _self;
  final $Res Function(ImportantTopic) _then;

/// Create a copy of ImportantTopic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? summary = freezed,Object? content = freezed,Object? category = freezed,Object? image = freezed,Object? visitorCount = freezed,Object? date = freezed,Object? priority = freezed,Object? type = freezed,Object? order = freezed,Object? question = freezed,Object? answer = freezed,Object? answerDate = freezed,Object? senderName = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ImportantTopicCategory?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,visitorCount: freezed == visitorCount ? _self.visitorCount : visitorCount // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String?,answerDate: freezed == answerDate ? _self.answerDate : answerDate // ignore: cast_nullable_to_non_nullable
as String?,senderName: freezed == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ImportantTopic
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImportantTopicCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $ImportantTopicCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [ImportantTopic].
extension ImportantTopicPatterns on ImportantTopic {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImportantTopic value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImportantTopic() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImportantTopic value)  $default,){
final _that = this;
switch (_that) {
case _ImportantTopic():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImportantTopic value)?  $default,){
final _that = this;
switch (_that) {
case _ImportantTopic() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? title,  String? summary,  String? content,  ImportantTopicCategory? category,  String? image, @JsonKey(name: 'visitor_count', fromJson: _intToString)  String? visitorCount,  String? date, @JsonKey(fromJson: _intToString)  String? priority,  String? type,  int? order, @JsonKey(name: 'question')  String? question, @JsonKey(name: 'answer')  String? answer, @JsonKey(name: 'answer_date')  String? answerDate, @JsonKey(name: 'sender_name')  String? senderName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImportantTopic() when $default != null:
return $default(_that.id,_that.title,_that.summary,_that.content,_that.category,_that.image,_that.visitorCount,_that.date,_that.priority,_that.type,_that.order,_that.question,_that.answer,_that.answerDate,_that.senderName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? title,  String? summary,  String? content,  ImportantTopicCategory? category,  String? image, @JsonKey(name: 'visitor_count', fromJson: _intToString)  String? visitorCount,  String? date, @JsonKey(fromJson: _intToString)  String? priority,  String? type,  int? order, @JsonKey(name: 'question')  String? question, @JsonKey(name: 'answer')  String? answer, @JsonKey(name: 'answer_date')  String? answerDate, @JsonKey(name: 'sender_name')  String? senderName)  $default,) {final _that = this;
switch (_that) {
case _ImportantTopic():
return $default(_that.id,_that.title,_that.summary,_that.content,_that.category,_that.image,_that.visitorCount,_that.date,_that.priority,_that.type,_that.order,_that.question,_that.answer,_that.answerDate,_that.senderName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? title,  String? summary,  String? content,  ImportantTopicCategory? category,  String? image, @JsonKey(name: 'visitor_count', fromJson: _intToString)  String? visitorCount,  String? date, @JsonKey(fromJson: _intToString)  String? priority,  String? type,  int? order, @JsonKey(name: 'question')  String? question, @JsonKey(name: 'answer')  String? answer, @JsonKey(name: 'answer_date')  String? answerDate, @JsonKey(name: 'sender_name')  String? senderName)?  $default,) {final _that = this;
switch (_that) {
case _ImportantTopic() when $default != null:
return $default(_that.id,_that.title,_that.summary,_that.content,_that.category,_that.image,_that.visitorCount,_that.date,_that.priority,_that.type,_that.order,_that.question,_that.answer,_that.answerDate,_that.senderName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImportantTopic implements ImportantTopic {
  const _ImportantTopic({this.id, this.title, this.summary, this.content, this.category, this.image, @JsonKey(name: 'visitor_count', fromJson: _intToString) this.visitorCount, this.date, @JsonKey(fromJson: _intToString) this.priority, this.type, this.order, @JsonKey(name: 'question') this.question, @JsonKey(name: 'answer') this.answer, @JsonKey(name: 'answer_date') this.answerDate, @JsonKey(name: 'sender_name') this.senderName});
  factory _ImportantTopic.fromJson(Map<String, dynamic> json) => _$ImportantTopicFromJson(json);

@override final  int? id;
@override final  String? title;
@override final  String? summary;
@override final  String? content;
@override final  ImportantTopicCategory? category;
@override final  String? image;
@override@JsonKey(name: 'visitor_count', fromJson: _intToString) final  String? visitorCount;
@override final  String? date;
@override@JsonKey(fromJson: _intToString) final  String? priority;
@override final  String? type;
@override final  int? order;
@override@JsonKey(name: 'question') final  String? question;
@override@JsonKey(name: 'answer') final  String? answer;
@override@JsonKey(name: 'answer_date') final  String? answerDate;
@override@JsonKey(name: 'sender_name') final  String? senderName;

/// Create a copy of ImportantTopic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportantTopicCopyWith<_ImportantTopic> get copyWith => __$ImportantTopicCopyWithImpl<_ImportantTopic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImportantTopicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportantTopic&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.content, content) || other.content == content)&&(identical(other.category, category) || other.category == category)&&(identical(other.image, image) || other.image == image)&&(identical(other.visitorCount, visitorCount) || other.visitorCount == visitorCount)&&(identical(other.date, date) || other.date == date)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.type, type) || other.type == type)&&(identical(other.order, order) || other.order == order)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.answerDate, answerDate) || other.answerDate == answerDate)&&(identical(other.senderName, senderName) || other.senderName == senderName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,summary,content,category,image,visitorCount,date,priority,type,order,question,answer,answerDate,senderName);

@override
String toString() {
  return 'ImportantTopic(id: $id, title: $title, summary: $summary, content: $content, category: $category, image: $image, visitorCount: $visitorCount, date: $date, priority: $priority, type: $type, order: $order, question: $question, answer: $answer, answerDate: $answerDate, senderName: $senderName)';
}


}

/// @nodoc
abstract mixin class _$ImportantTopicCopyWith<$Res> implements $ImportantTopicCopyWith<$Res> {
  factory _$ImportantTopicCopyWith(_ImportantTopic value, $Res Function(_ImportantTopic) _then) = __$ImportantTopicCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? title, String? summary, String? content, ImportantTopicCategory? category, String? image,@JsonKey(name: 'visitor_count', fromJson: _intToString) String? visitorCount, String? date,@JsonKey(fromJson: _intToString) String? priority, String? type, int? order,@JsonKey(name: 'question') String? question,@JsonKey(name: 'answer') String? answer,@JsonKey(name: 'answer_date') String? answerDate,@JsonKey(name: 'sender_name') String? senderName
});


@override $ImportantTopicCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$ImportantTopicCopyWithImpl<$Res>
    implements _$ImportantTopicCopyWith<$Res> {
  __$ImportantTopicCopyWithImpl(this._self, this._then);

  final _ImportantTopic _self;
  final $Res Function(_ImportantTopic) _then;

/// Create a copy of ImportantTopic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? summary = freezed,Object? content = freezed,Object? category = freezed,Object? image = freezed,Object? visitorCount = freezed,Object? date = freezed,Object? priority = freezed,Object? type = freezed,Object? order = freezed,Object? question = freezed,Object? answer = freezed,Object? answerDate = freezed,Object? senderName = freezed,}) {
  return _then(_ImportantTopic(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ImportantTopicCategory?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,visitorCount: freezed == visitorCount ? _self.visitorCount : visitorCount // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String?,answerDate: freezed == answerDate ? _self.answerDate : answerDate // ignore: cast_nullable_to_non_nullable
as String?,senderName: freezed == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ImportantTopic
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImportantTopicCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $ImportantTopicCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$ImportantTopicCategory {

 int? get id; String? get title;
/// Create a copy of ImportantTopicCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportantTopicCategoryCopyWith<ImportantTopicCategory> get copyWith => _$ImportantTopicCategoryCopyWithImpl<ImportantTopicCategory>(this as ImportantTopicCategory, _$identity);

  /// Serializes this ImportantTopicCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportantTopicCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'ImportantTopicCategory(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $ImportantTopicCategoryCopyWith<$Res>  {
  factory $ImportantTopicCategoryCopyWith(ImportantTopicCategory value, $Res Function(ImportantTopicCategory) _then) = _$ImportantTopicCategoryCopyWithImpl;
@useResult
$Res call({
 int? id, String? title
});




}
/// @nodoc
class _$ImportantTopicCategoryCopyWithImpl<$Res>
    implements $ImportantTopicCategoryCopyWith<$Res> {
  _$ImportantTopicCategoryCopyWithImpl(this._self, this._then);

  final ImportantTopicCategory _self;
  final $Res Function(ImportantTopicCategory) _then;

/// Create a copy of ImportantTopicCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ImportantTopicCategory].
extension ImportantTopicCategoryPatterns on ImportantTopicCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImportantTopicCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImportantTopicCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImportantTopicCategory value)  $default,){
final _that = this;
switch (_that) {
case _ImportantTopicCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImportantTopicCategory value)?  $default,){
final _that = this;
switch (_that) {
case _ImportantTopicCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImportantTopicCategory() when $default != null:
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? title)  $default,) {final _that = this;
switch (_that) {
case _ImportantTopicCategory():
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? title)?  $default,) {final _that = this;
switch (_that) {
case _ImportantTopicCategory() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImportantTopicCategory implements ImportantTopicCategory {
  const _ImportantTopicCategory({this.id, this.title});
  factory _ImportantTopicCategory.fromJson(Map<String, dynamic> json) => _$ImportantTopicCategoryFromJson(json);

@override final  int? id;
@override final  String? title;

/// Create a copy of ImportantTopicCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportantTopicCategoryCopyWith<_ImportantTopicCategory> get copyWith => __$ImportantTopicCategoryCopyWithImpl<_ImportantTopicCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImportantTopicCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportantTopicCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'ImportantTopicCategory(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$ImportantTopicCategoryCopyWith<$Res> implements $ImportantTopicCategoryCopyWith<$Res> {
  factory _$ImportantTopicCategoryCopyWith(_ImportantTopicCategory value, $Res Function(_ImportantTopicCategory) _then) = __$ImportantTopicCategoryCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? title
});




}
/// @nodoc
class __$ImportantTopicCategoryCopyWithImpl<$Res>
    implements _$ImportantTopicCategoryCopyWith<$Res> {
  __$ImportantTopicCategoryCopyWithImpl(this._self, this._then);

  final _ImportantTopicCategory _self;
  final $Res Function(_ImportantTopicCategory) _then;

/// Create a copy of ImportantTopicCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_ImportantTopicCategory(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
