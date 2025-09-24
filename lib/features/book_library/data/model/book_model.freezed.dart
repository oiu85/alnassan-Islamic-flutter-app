// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BooksResponse {

 String get status; List<BookData> get data; BooksMeta? get meta;
/// Create a copy of BooksResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BooksResponseCopyWith<BooksResponse> get copyWith => _$BooksResponseCopyWithImpl<BooksResponse>(this as BooksResponse, _$identity);

  /// Serializes this BooksResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BooksResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'BooksResponse(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $BooksResponseCopyWith<$Res>  {
  factory $BooksResponseCopyWith(BooksResponse value, $Res Function(BooksResponse) _then) = _$BooksResponseCopyWithImpl;
@useResult
$Res call({
 String status, List<BookData> data, BooksMeta? meta
});


$BooksMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$BooksResponseCopyWithImpl<$Res>
    implements $BooksResponseCopyWith<$Res> {
  _$BooksResponseCopyWithImpl(this._self, this._then);

  final BooksResponse _self;
  final $Res Function(BooksResponse) _then;

/// Create a copy of BooksResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BookData>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as BooksMeta?,
  ));
}
/// Create a copy of BooksResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BooksMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $BooksMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [BooksResponse].
extension BooksResponsePatterns on BooksResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BooksResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BooksResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BooksResponse value)  $default,){
final _that = this;
switch (_that) {
case _BooksResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BooksResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BooksResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  List<BookData> data,  BooksMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BooksResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  List<BookData> data,  BooksMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _BooksResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  List<BookData> data,  BooksMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _BooksResponse() when $default != null:
return $default(_that.status,_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BooksResponse implements BooksResponse {
  const _BooksResponse({required this.status, required final  List<BookData> data, this.meta}): _data = data;
  factory _BooksResponse.fromJson(Map<String, dynamic> json) => _$BooksResponseFromJson(json);

@override final  String status;
 final  List<BookData> _data;
@override List<BookData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  BooksMeta? meta;

/// Create a copy of BooksResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BooksResponseCopyWith<_BooksResponse> get copyWith => __$BooksResponseCopyWithImpl<_BooksResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BooksResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BooksResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'BooksResponse(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$BooksResponseCopyWith<$Res> implements $BooksResponseCopyWith<$Res> {
  factory _$BooksResponseCopyWith(_BooksResponse value, $Res Function(_BooksResponse) _then) = __$BooksResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, List<BookData> data, BooksMeta? meta
});


@override $BooksMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$BooksResponseCopyWithImpl<$Res>
    implements _$BooksResponseCopyWith<$Res> {
  __$BooksResponseCopyWithImpl(this._self, this._then);

  final _BooksResponse _self;
  final $Res Function(_BooksResponse) _then;

/// Create a copy of BooksResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,Object? meta = freezed,}) {
  return _then(_BooksResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BookData>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as BooksMeta?,
  ));
}

/// Create a copy of BooksResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BooksMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $BooksMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$BookData {

@JsonKey(name: 'book_id') int get bookId;@JsonKey(name: 'book_title') String get bookTitle;@JsonKey(name: 'book_summary') String? get bookSummary;@JsonKey(name: 'book_des') String? get bookDes;@JsonKey(name: 'book_cat_id')@IntStringConverter() String get bookCatId;@JsonKey(name: 'book_pic') String? get bookPic;@JsonKey(name: 'book_file') String? get bookFile;@JsonKey(name: 'book_visitor')@IntStringConverter() String get bookVisitor;@JsonKey(name: 'book_priority')@IntStringConverter() String get bookPriority;@JsonKey(name: 'book_date') String get bookDate;@JsonKey(name: 'book_active')@IntStringConverter() String get bookActive;@JsonKey(name: 'book_source') String? get bookSource;@JsonKey(name: 'book_file_url') String? get bookFileUrl;@JsonKey(name: 'book_pic_url') String? get bookPicUrl;@JsonKey(name: 'book_type') String? get bookType;@JsonKey(name: 'book_download_url') String? get bookDownloadUrl; BookCategory? get category;
/// Create a copy of BookData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookDataCopyWith<BookData> get copyWith => _$BookDataCopyWithImpl<BookData>(this as BookData, _$identity);

  /// Serializes this BookData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookData&&(identical(other.bookId, bookId) || other.bookId == bookId)&&(identical(other.bookTitle, bookTitle) || other.bookTitle == bookTitle)&&(identical(other.bookSummary, bookSummary) || other.bookSummary == bookSummary)&&(identical(other.bookDes, bookDes) || other.bookDes == bookDes)&&(identical(other.bookCatId, bookCatId) || other.bookCatId == bookCatId)&&(identical(other.bookPic, bookPic) || other.bookPic == bookPic)&&(identical(other.bookFile, bookFile) || other.bookFile == bookFile)&&(identical(other.bookVisitor, bookVisitor) || other.bookVisitor == bookVisitor)&&(identical(other.bookPriority, bookPriority) || other.bookPriority == bookPriority)&&(identical(other.bookDate, bookDate) || other.bookDate == bookDate)&&(identical(other.bookActive, bookActive) || other.bookActive == bookActive)&&(identical(other.bookSource, bookSource) || other.bookSource == bookSource)&&(identical(other.bookFileUrl, bookFileUrl) || other.bookFileUrl == bookFileUrl)&&(identical(other.bookPicUrl, bookPicUrl) || other.bookPicUrl == bookPicUrl)&&(identical(other.bookType, bookType) || other.bookType == bookType)&&(identical(other.bookDownloadUrl, bookDownloadUrl) || other.bookDownloadUrl == bookDownloadUrl)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookId,bookTitle,bookSummary,bookDes,bookCatId,bookPic,bookFile,bookVisitor,bookPriority,bookDate,bookActive,bookSource,bookFileUrl,bookPicUrl,bookType,bookDownloadUrl,category);

@override
String toString() {
  return 'BookData(bookId: $bookId, bookTitle: $bookTitle, bookSummary: $bookSummary, bookDes: $bookDes, bookCatId: $bookCatId, bookPic: $bookPic, bookFile: $bookFile, bookVisitor: $bookVisitor, bookPriority: $bookPriority, bookDate: $bookDate, bookActive: $bookActive, bookSource: $bookSource, bookFileUrl: $bookFileUrl, bookPicUrl: $bookPicUrl, bookType: $bookType, bookDownloadUrl: $bookDownloadUrl, category: $category)';
}


}

/// @nodoc
abstract mixin class $BookDataCopyWith<$Res>  {
  factory $BookDataCopyWith(BookData value, $Res Function(BookData) _then) = _$BookDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'book_id') int bookId,@JsonKey(name: 'book_title') String bookTitle,@JsonKey(name: 'book_summary') String? bookSummary,@JsonKey(name: 'book_des') String? bookDes,@JsonKey(name: 'book_cat_id')@IntStringConverter() String bookCatId,@JsonKey(name: 'book_pic') String? bookPic,@JsonKey(name: 'book_file') String? bookFile,@JsonKey(name: 'book_visitor')@IntStringConverter() String bookVisitor,@JsonKey(name: 'book_priority')@IntStringConverter() String bookPriority,@JsonKey(name: 'book_date') String bookDate,@JsonKey(name: 'book_active')@IntStringConverter() String bookActive,@JsonKey(name: 'book_source') String? bookSource,@JsonKey(name: 'book_file_url') String? bookFileUrl,@JsonKey(name: 'book_pic_url') String? bookPicUrl,@JsonKey(name: 'book_type') String? bookType,@JsonKey(name: 'book_download_url') String? bookDownloadUrl, BookCategory? category
});


$BookCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$BookDataCopyWithImpl<$Res>
    implements $BookDataCopyWith<$Res> {
  _$BookDataCopyWithImpl(this._self, this._then);

  final BookData _self;
  final $Res Function(BookData) _then;

/// Create a copy of BookData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookId = null,Object? bookTitle = null,Object? bookSummary = freezed,Object? bookDes = freezed,Object? bookCatId = null,Object? bookPic = freezed,Object? bookFile = freezed,Object? bookVisitor = null,Object? bookPriority = null,Object? bookDate = null,Object? bookActive = null,Object? bookSource = freezed,Object? bookFileUrl = freezed,Object? bookPicUrl = freezed,Object? bookType = freezed,Object? bookDownloadUrl = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
bookId: null == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as int,bookTitle: null == bookTitle ? _self.bookTitle : bookTitle // ignore: cast_nullable_to_non_nullable
as String,bookSummary: freezed == bookSummary ? _self.bookSummary : bookSummary // ignore: cast_nullable_to_non_nullable
as String?,bookDes: freezed == bookDes ? _self.bookDes : bookDes // ignore: cast_nullable_to_non_nullable
as String?,bookCatId: null == bookCatId ? _self.bookCatId : bookCatId // ignore: cast_nullable_to_non_nullable
as String,bookPic: freezed == bookPic ? _self.bookPic : bookPic // ignore: cast_nullable_to_non_nullable
as String?,bookFile: freezed == bookFile ? _self.bookFile : bookFile // ignore: cast_nullable_to_non_nullable
as String?,bookVisitor: null == bookVisitor ? _self.bookVisitor : bookVisitor // ignore: cast_nullable_to_non_nullable
as String,bookPriority: null == bookPriority ? _self.bookPriority : bookPriority // ignore: cast_nullable_to_non_nullable
as String,bookDate: null == bookDate ? _self.bookDate : bookDate // ignore: cast_nullable_to_non_nullable
as String,bookActive: null == bookActive ? _self.bookActive : bookActive // ignore: cast_nullable_to_non_nullable
as String,bookSource: freezed == bookSource ? _self.bookSource : bookSource // ignore: cast_nullable_to_non_nullable
as String?,bookFileUrl: freezed == bookFileUrl ? _self.bookFileUrl : bookFileUrl // ignore: cast_nullable_to_non_nullable
as String?,bookPicUrl: freezed == bookPicUrl ? _self.bookPicUrl : bookPicUrl // ignore: cast_nullable_to_non_nullable
as String?,bookType: freezed == bookType ? _self.bookType : bookType // ignore: cast_nullable_to_non_nullable
as String?,bookDownloadUrl: freezed == bookDownloadUrl ? _self.bookDownloadUrl : bookDownloadUrl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as BookCategory?,
  ));
}
/// Create a copy of BookData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $BookCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookData].
extension BookDataPatterns on BookData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookData value)  $default,){
final _that = this;
switch (_that) {
case _BookData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookData value)?  $default,){
final _that = this;
switch (_that) {
case _BookData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'book_id')  int bookId, @JsonKey(name: 'book_title')  String bookTitle, @JsonKey(name: 'book_summary')  String? bookSummary, @JsonKey(name: 'book_des')  String? bookDes, @JsonKey(name: 'book_cat_id')@IntStringConverter()  String bookCatId, @JsonKey(name: 'book_pic')  String? bookPic, @JsonKey(name: 'book_file')  String? bookFile, @JsonKey(name: 'book_visitor')@IntStringConverter()  String bookVisitor, @JsonKey(name: 'book_priority')@IntStringConverter()  String bookPriority, @JsonKey(name: 'book_date')  String bookDate, @JsonKey(name: 'book_active')@IntStringConverter()  String bookActive, @JsonKey(name: 'book_source')  String? bookSource, @JsonKey(name: 'book_file_url')  String? bookFileUrl, @JsonKey(name: 'book_pic_url')  String? bookPicUrl, @JsonKey(name: 'book_type')  String? bookType, @JsonKey(name: 'book_download_url')  String? bookDownloadUrl,  BookCategory? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookData() when $default != null:
return $default(_that.bookId,_that.bookTitle,_that.bookSummary,_that.bookDes,_that.bookCatId,_that.bookPic,_that.bookFile,_that.bookVisitor,_that.bookPriority,_that.bookDate,_that.bookActive,_that.bookSource,_that.bookFileUrl,_that.bookPicUrl,_that.bookType,_that.bookDownloadUrl,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'book_id')  int bookId, @JsonKey(name: 'book_title')  String bookTitle, @JsonKey(name: 'book_summary')  String? bookSummary, @JsonKey(name: 'book_des')  String? bookDes, @JsonKey(name: 'book_cat_id')@IntStringConverter()  String bookCatId, @JsonKey(name: 'book_pic')  String? bookPic, @JsonKey(name: 'book_file')  String? bookFile, @JsonKey(name: 'book_visitor')@IntStringConverter()  String bookVisitor, @JsonKey(name: 'book_priority')@IntStringConverter()  String bookPriority, @JsonKey(name: 'book_date')  String bookDate, @JsonKey(name: 'book_active')@IntStringConverter()  String bookActive, @JsonKey(name: 'book_source')  String? bookSource, @JsonKey(name: 'book_file_url')  String? bookFileUrl, @JsonKey(name: 'book_pic_url')  String? bookPicUrl, @JsonKey(name: 'book_type')  String? bookType, @JsonKey(name: 'book_download_url')  String? bookDownloadUrl,  BookCategory? category)  $default,) {final _that = this;
switch (_that) {
case _BookData():
return $default(_that.bookId,_that.bookTitle,_that.bookSummary,_that.bookDes,_that.bookCatId,_that.bookPic,_that.bookFile,_that.bookVisitor,_that.bookPriority,_that.bookDate,_that.bookActive,_that.bookSource,_that.bookFileUrl,_that.bookPicUrl,_that.bookType,_that.bookDownloadUrl,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'book_id')  int bookId, @JsonKey(name: 'book_title')  String bookTitle, @JsonKey(name: 'book_summary')  String? bookSummary, @JsonKey(name: 'book_des')  String? bookDes, @JsonKey(name: 'book_cat_id')@IntStringConverter()  String bookCatId, @JsonKey(name: 'book_pic')  String? bookPic, @JsonKey(name: 'book_file')  String? bookFile, @JsonKey(name: 'book_visitor')@IntStringConverter()  String bookVisitor, @JsonKey(name: 'book_priority')@IntStringConverter()  String bookPriority, @JsonKey(name: 'book_date')  String bookDate, @JsonKey(name: 'book_active')@IntStringConverter()  String bookActive, @JsonKey(name: 'book_source')  String? bookSource, @JsonKey(name: 'book_file_url')  String? bookFileUrl, @JsonKey(name: 'book_pic_url')  String? bookPicUrl, @JsonKey(name: 'book_type')  String? bookType, @JsonKey(name: 'book_download_url')  String? bookDownloadUrl,  BookCategory? category)?  $default,) {final _that = this;
switch (_that) {
case _BookData() when $default != null:
return $default(_that.bookId,_that.bookTitle,_that.bookSummary,_that.bookDes,_that.bookCatId,_that.bookPic,_that.bookFile,_that.bookVisitor,_that.bookPriority,_that.bookDate,_that.bookActive,_that.bookSource,_that.bookFileUrl,_that.bookPicUrl,_that.bookType,_that.bookDownloadUrl,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookData implements BookData {
  const _BookData({@JsonKey(name: 'book_id') required this.bookId, @JsonKey(name: 'book_title') required this.bookTitle, @JsonKey(name: 'book_summary') this.bookSummary, @JsonKey(name: 'book_des') this.bookDes, @JsonKey(name: 'book_cat_id')@IntStringConverter() required this.bookCatId, @JsonKey(name: 'book_pic') this.bookPic, @JsonKey(name: 'book_file') this.bookFile, @JsonKey(name: 'book_visitor')@IntStringConverter() required this.bookVisitor, @JsonKey(name: 'book_priority')@IntStringConverter() required this.bookPriority, @JsonKey(name: 'book_date') required this.bookDate, @JsonKey(name: 'book_active')@IntStringConverter() required this.bookActive, @JsonKey(name: 'book_source') this.bookSource, @JsonKey(name: 'book_file_url') this.bookFileUrl, @JsonKey(name: 'book_pic_url') this.bookPicUrl, @JsonKey(name: 'book_type') this.bookType, @JsonKey(name: 'book_download_url') this.bookDownloadUrl, this.category});
  factory _BookData.fromJson(Map<String, dynamic> json) => _$BookDataFromJson(json);

@override@JsonKey(name: 'book_id') final  int bookId;
@override@JsonKey(name: 'book_title') final  String bookTitle;
@override@JsonKey(name: 'book_summary') final  String? bookSummary;
@override@JsonKey(name: 'book_des') final  String? bookDes;
@override@JsonKey(name: 'book_cat_id')@IntStringConverter() final  String bookCatId;
@override@JsonKey(name: 'book_pic') final  String? bookPic;
@override@JsonKey(name: 'book_file') final  String? bookFile;
@override@JsonKey(name: 'book_visitor')@IntStringConverter() final  String bookVisitor;
@override@JsonKey(name: 'book_priority')@IntStringConverter() final  String bookPriority;
@override@JsonKey(name: 'book_date') final  String bookDate;
@override@JsonKey(name: 'book_active')@IntStringConverter() final  String bookActive;
@override@JsonKey(name: 'book_source') final  String? bookSource;
@override@JsonKey(name: 'book_file_url') final  String? bookFileUrl;
@override@JsonKey(name: 'book_pic_url') final  String? bookPicUrl;
@override@JsonKey(name: 'book_type') final  String? bookType;
@override@JsonKey(name: 'book_download_url') final  String? bookDownloadUrl;
@override final  BookCategory? category;

/// Create a copy of BookData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookDataCopyWith<_BookData> get copyWith => __$BookDataCopyWithImpl<_BookData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookData&&(identical(other.bookId, bookId) || other.bookId == bookId)&&(identical(other.bookTitle, bookTitle) || other.bookTitle == bookTitle)&&(identical(other.bookSummary, bookSummary) || other.bookSummary == bookSummary)&&(identical(other.bookDes, bookDes) || other.bookDes == bookDes)&&(identical(other.bookCatId, bookCatId) || other.bookCatId == bookCatId)&&(identical(other.bookPic, bookPic) || other.bookPic == bookPic)&&(identical(other.bookFile, bookFile) || other.bookFile == bookFile)&&(identical(other.bookVisitor, bookVisitor) || other.bookVisitor == bookVisitor)&&(identical(other.bookPriority, bookPriority) || other.bookPriority == bookPriority)&&(identical(other.bookDate, bookDate) || other.bookDate == bookDate)&&(identical(other.bookActive, bookActive) || other.bookActive == bookActive)&&(identical(other.bookSource, bookSource) || other.bookSource == bookSource)&&(identical(other.bookFileUrl, bookFileUrl) || other.bookFileUrl == bookFileUrl)&&(identical(other.bookPicUrl, bookPicUrl) || other.bookPicUrl == bookPicUrl)&&(identical(other.bookType, bookType) || other.bookType == bookType)&&(identical(other.bookDownloadUrl, bookDownloadUrl) || other.bookDownloadUrl == bookDownloadUrl)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookId,bookTitle,bookSummary,bookDes,bookCatId,bookPic,bookFile,bookVisitor,bookPriority,bookDate,bookActive,bookSource,bookFileUrl,bookPicUrl,bookType,bookDownloadUrl,category);

@override
String toString() {
  return 'BookData(bookId: $bookId, bookTitle: $bookTitle, bookSummary: $bookSummary, bookDes: $bookDes, bookCatId: $bookCatId, bookPic: $bookPic, bookFile: $bookFile, bookVisitor: $bookVisitor, bookPriority: $bookPriority, bookDate: $bookDate, bookActive: $bookActive, bookSource: $bookSource, bookFileUrl: $bookFileUrl, bookPicUrl: $bookPicUrl, bookType: $bookType, bookDownloadUrl: $bookDownloadUrl, category: $category)';
}


}

/// @nodoc
abstract mixin class _$BookDataCopyWith<$Res> implements $BookDataCopyWith<$Res> {
  factory _$BookDataCopyWith(_BookData value, $Res Function(_BookData) _then) = __$BookDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'book_id') int bookId,@JsonKey(name: 'book_title') String bookTitle,@JsonKey(name: 'book_summary') String? bookSummary,@JsonKey(name: 'book_des') String? bookDes,@JsonKey(name: 'book_cat_id')@IntStringConverter() String bookCatId,@JsonKey(name: 'book_pic') String? bookPic,@JsonKey(name: 'book_file') String? bookFile,@JsonKey(name: 'book_visitor')@IntStringConverter() String bookVisitor,@JsonKey(name: 'book_priority')@IntStringConverter() String bookPriority,@JsonKey(name: 'book_date') String bookDate,@JsonKey(name: 'book_active')@IntStringConverter() String bookActive,@JsonKey(name: 'book_source') String? bookSource,@JsonKey(name: 'book_file_url') String? bookFileUrl,@JsonKey(name: 'book_pic_url') String? bookPicUrl,@JsonKey(name: 'book_type') String? bookType,@JsonKey(name: 'book_download_url') String? bookDownloadUrl, BookCategory? category
});


@override $BookCategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$BookDataCopyWithImpl<$Res>
    implements _$BookDataCopyWith<$Res> {
  __$BookDataCopyWithImpl(this._self, this._then);

  final _BookData _self;
  final $Res Function(_BookData) _then;

/// Create a copy of BookData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookId = null,Object? bookTitle = null,Object? bookSummary = freezed,Object? bookDes = freezed,Object? bookCatId = null,Object? bookPic = freezed,Object? bookFile = freezed,Object? bookVisitor = null,Object? bookPriority = null,Object? bookDate = null,Object? bookActive = null,Object? bookSource = freezed,Object? bookFileUrl = freezed,Object? bookPicUrl = freezed,Object? bookType = freezed,Object? bookDownloadUrl = freezed,Object? category = freezed,}) {
  return _then(_BookData(
bookId: null == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as int,bookTitle: null == bookTitle ? _self.bookTitle : bookTitle // ignore: cast_nullable_to_non_nullable
as String,bookSummary: freezed == bookSummary ? _self.bookSummary : bookSummary // ignore: cast_nullable_to_non_nullable
as String?,bookDes: freezed == bookDes ? _self.bookDes : bookDes // ignore: cast_nullable_to_non_nullable
as String?,bookCatId: null == bookCatId ? _self.bookCatId : bookCatId // ignore: cast_nullable_to_non_nullable
as String,bookPic: freezed == bookPic ? _self.bookPic : bookPic // ignore: cast_nullable_to_non_nullable
as String?,bookFile: freezed == bookFile ? _self.bookFile : bookFile // ignore: cast_nullable_to_non_nullable
as String?,bookVisitor: null == bookVisitor ? _self.bookVisitor : bookVisitor // ignore: cast_nullable_to_non_nullable
as String,bookPriority: null == bookPriority ? _self.bookPriority : bookPriority // ignore: cast_nullable_to_non_nullable
as String,bookDate: null == bookDate ? _self.bookDate : bookDate // ignore: cast_nullable_to_non_nullable
as String,bookActive: null == bookActive ? _self.bookActive : bookActive // ignore: cast_nullable_to_non_nullable
as String,bookSource: freezed == bookSource ? _self.bookSource : bookSource // ignore: cast_nullable_to_non_nullable
as String?,bookFileUrl: freezed == bookFileUrl ? _self.bookFileUrl : bookFileUrl // ignore: cast_nullable_to_non_nullable
as String?,bookPicUrl: freezed == bookPicUrl ? _self.bookPicUrl : bookPicUrl // ignore: cast_nullable_to_non_nullable
as String?,bookType: freezed == bookType ? _self.bookType : bookType // ignore: cast_nullable_to_non_nullable
as String?,bookDownloadUrl: freezed == bookDownloadUrl ? _self.bookDownloadUrl : bookDownloadUrl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as BookCategory?,
  ));
}

/// Create a copy of BookData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $BookCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$BookCategory {

@JsonKey(name: 'cat_id') int get catId;@JsonKey(name: 'cat_father_id')@IntStringConverter() String get catFatherId;@JsonKey(name: 'cat_menus')@IntStringConverter() String get catMenus;@JsonKey(name: 'cat_title') String get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_sup')@IntStringConverter() String get catSup;@JsonKey(name: 'cat_date') String get catDate;@JsonKey(name: 'cat_pic_active')@IntStringConverter() String get catPicActive;@JsonKey(name: 'cat_lan') String get catLan;@JsonKey(name: 'cat_pos')@IntStringConverter() String get catPos;@JsonKey(name: 'cat_active')@IntStringConverter() String get catActive;@JsonKey(name: 'cat_show_menu')@IntStringConverter() String get catShowMenu;@JsonKey(name: 'cat_show_main')@IntStringConverter() String get catShowMain;@JsonKey(name: 'cat_agent') String? get catAgent;
/// Create a copy of BookCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookCategoryCopyWith<BookCategory> get copyWith => _$BookCategoryCopyWithImpl<BookCategory>(this as BookCategory, _$identity);

  /// Serializes this BookCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catSup, catSup) || other.catSup == catSup)&&(identical(other.catDate, catDate) || other.catDate == catDate)&&(identical(other.catPicActive, catPicActive) || other.catPicActive == catPicActive)&&(identical(other.catLan, catLan) || other.catLan == catLan)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&(identical(other.catShowMenu, catShowMenu) || other.catShowMenu == catShowMenu)&&(identical(other.catShowMain, catShowMain) || other.catShowMain == catShowMain)&&(identical(other.catAgent, catAgent) || other.catAgent == catAgent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catMenus,catTitle,catNote,catPic,catSup,catDate,catPicActive,catLan,catPos,catActive,catShowMenu,catShowMain,catAgent);

@override
String toString() {
  return 'BookCategory(catId: $catId, catFatherId: $catFatherId, catMenus: $catMenus, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catSup: $catSup, catDate: $catDate, catPicActive: $catPicActive, catLan: $catLan, catPos: $catPos, catActive: $catActive, catShowMenu: $catShowMenu, catShowMain: $catShowMain, catAgent: $catAgent)';
}


}

/// @nodoc
abstract mixin class $BookCategoryCopyWith<$Res>  {
  factory $BookCategoryCopyWith(BookCategory value, $Res Function(BookCategory) _then) = _$BookCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id') int catId,@JsonKey(name: 'cat_father_id')@IntStringConverter() String catFatherId,@JsonKey(name: 'cat_menus')@IntStringConverter() String catMenus,@JsonKey(name: 'cat_title') String catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_sup')@IntStringConverter() String catSup,@JsonKey(name: 'cat_date') String catDate,@JsonKey(name: 'cat_pic_active')@IntStringConverter() String catPicActive,@JsonKey(name: 'cat_lan') String catLan,@JsonKey(name: 'cat_pos')@IntStringConverter() String catPos,@JsonKey(name: 'cat_active')@IntStringConverter() String catActive,@JsonKey(name: 'cat_show_menu')@IntStringConverter() String catShowMenu,@JsonKey(name: 'cat_show_main')@IntStringConverter() String catShowMain,@JsonKey(name: 'cat_agent') String? catAgent
});




}
/// @nodoc
class _$BookCategoryCopyWithImpl<$Res>
    implements $BookCategoryCopyWith<$Res> {
  _$BookCategoryCopyWithImpl(this._self, this._then);

  final BookCategory _self;
  final $Res Function(BookCategory) _then;

/// Create a copy of BookCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = null,Object? catFatherId = null,Object? catMenus = null,Object? catTitle = null,Object? catNote = freezed,Object? catPic = freezed,Object? catSup = null,Object? catDate = null,Object? catPicActive = null,Object? catLan = null,Object? catPos = null,Object? catActive = null,Object? catShowMenu = null,Object? catShowMain = null,Object? catAgent = freezed,}) {
  return _then(_self.copyWith(
catId: null == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int,catFatherId: null == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as String,catMenus: null == catMenus ? _self.catMenus : catMenus // ignore: cast_nullable_to_non_nullable
as String,catTitle: null == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catSup: null == catSup ? _self.catSup : catSup // ignore: cast_nullable_to_non_nullable
as String,catDate: null == catDate ? _self.catDate : catDate // ignore: cast_nullable_to_non_nullable
as String,catPicActive: null == catPicActive ? _self.catPicActive : catPicActive // ignore: cast_nullable_to_non_nullable
as String,catLan: null == catLan ? _self.catLan : catLan // ignore: cast_nullable_to_non_nullable
as String,catPos: null == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String,catActive: null == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as String,catShowMenu: null == catShowMenu ? _self.catShowMenu : catShowMenu // ignore: cast_nullable_to_non_nullable
as String,catShowMain: null == catShowMain ? _self.catShowMain : catShowMain // ignore: cast_nullable_to_non_nullable
as String,catAgent: freezed == catAgent ? _self.catAgent : catAgent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookCategory].
extension BookCategoryPatterns on BookCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookCategory value)  $default,){
final _that = this;
switch (_that) {
case _BookCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookCategory value)?  $default,){
final _that = this;
switch (_that) {
case _BookCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')@IntStringConverter()  String catFatherId, @JsonKey(name: 'cat_menus')@IntStringConverter()  String catMenus, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_sup')@IntStringConverter()  String catSup, @JsonKey(name: 'cat_date')  String catDate, @JsonKey(name: 'cat_pic_active')@IntStringConverter()  String catPicActive, @JsonKey(name: 'cat_lan')  String catLan, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')@IntStringConverter()  String catActive, @JsonKey(name: 'cat_show_menu')@IntStringConverter()  String catShowMenu, @JsonKey(name: 'cat_show_main')@IntStringConverter()  String catShowMain, @JsonKey(name: 'cat_agent')  String? catAgent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookCategory() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')@IntStringConverter()  String catFatherId, @JsonKey(name: 'cat_menus')@IntStringConverter()  String catMenus, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_sup')@IntStringConverter()  String catSup, @JsonKey(name: 'cat_date')  String catDate, @JsonKey(name: 'cat_pic_active')@IntStringConverter()  String catPicActive, @JsonKey(name: 'cat_lan')  String catLan, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')@IntStringConverter()  String catActive, @JsonKey(name: 'cat_show_menu')@IntStringConverter()  String catShowMenu, @JsonKey(name: 'cat_show_main')@IntStringConverter()  String catShowMain, @JsonKey(name: 'cat_agent')  String? catAgent)  $default,) {final _that = this;
switch (_that) {
case _BookCategory():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')@IntStringConverter()  String catFatherId, @JsonKey(name: 'cat_menus')@IntStringConverter()  String catMenus, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_sup')@IntStringConverter()  String catSup, @JsonKey(name: 'cat_date')  String catDate, @JsonKey(name: 'cat_pic_active')@IntStringConverter()  String catPicActive, @JsonKey(name: 'cat_lan')  String catLan, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')@IntStringConverter()  String catActive, @JsonKey(name: 'cat_show_menu')@IntStringConverter()  String catShowMenu, @JsonKey(name: 'cat_show_main')@IntStringConverter()  String catShowMain, @JsonKey(name: 'cat_agent')  String? catAgent)?  $default,) {final _that = this;
switch (_that) {
case _BookCategory() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catMenus,_that.catTitle,_that.catNote,_that.catPic,_that.catSup,_that.catDate,_that.catPicActive,_that.catLan,_that.catPos,_that.catActive,_that.catShowMenu,_that.catShowMain,_that.catAgent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookCategory implements BookCategory {
  const _BookCategory({@JsonKey(name: 'cat_id') required this.catId, @JsonKey(name: 'cat_father_id')@IntStringConverter() required this.catFatherId, @JsonKey(name: 'cat_menus')@IntStringConverter() required this.catMenus, @JsonKey(name: 'cat_title') required this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_sup')@IntStringConverter() required this.catSup, @JsonKey(name: 'cat_date') required this.catDate, @JsonKey(name: 'cat_pic_active')@IntStringConverter() required this.catPicActive, @JsonKey(name: 'cat_lan') required this.catLan, @JsonKey(name: 'cat_pos')@IntStringConverter() required this.catPos, @JsonKey(name: 'cat_active')@IntStringConverter() required this.catActive, @JsonKey(name: 'cat_show_menu')@IntStringConverter() required this.catShowMenu, @JsonKey(name: 'cat_show_main')@IntStringConverter() required this.catShowMain, @JsonKey(name: 'cat_agent') this.catAgent});
  factory _BookCategory.fromJson(Map<String, dynamic> json) => _$BookCategoryFromJson(json);

@override@JsonKey(name: 'cat_id') final  int catId;
@override@JsonKey(name: 'cat_father_id')@IntStringConverter() final  String catFatherId;
@override@JsonKey(name: 'cat_menus')@IntStringConverter() final  String catMenus;
@override@JsonKey(name: 'cat_title') final  String catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_sup')@IntStringConverter() final  String catSup;
@override@JsonKey(name: 'cat_date') final  String catDate;
@override@JsonKey(name: 'cat_pic_active')@IntStringConverter() final  String catPicActive;
@override@JsonKey(name: 'cat_lan') final  String catLan;
@override@JsonKey(name: 'cat_pos')@IntStringConverter() final  String catPos;
@override@JsonKey(name: 'cat_active')@IntStringConverter() final  String catActive;
@override@JsonKey(name: 'cat_show_menu')@IntStringConverter() final  String catShowMenu;
@override@JsonKey(name: 'cat_show_main')@IntStringConverter() final  String catShowMain;
@override@JsonKey(name: 'cat_agent') final  String? catAgent;

/// Create a copy of BookCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookCategoryCopyWith<_BookCategory> get copyWith => __$BookCategoryCopyWithImpl<_BookCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catMenus, catMenus) || other.catMenus == catMenus)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catSup, catSup) || other.catSup == catSup)&&(identical(other.catDate, catDate) || other.catDate == catDate)&&(identical(other.catPicActive, catPicActive) || other.catPicActive == catPicActive)&&(identical(other.catLan, catLan) || other.catLan == catLan)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&(identical(other.catShowMenu, catShowMenu) || other.catShowMenu == catShowMenu)&&(identical(other.catShowMain, catShowMain) || other.catShowMain == catShowMain)&&(identical(other.catAgent, catAgent) || other.catAgent == catAgent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catMenus,catTitle,catNote,catPic,catSup,catDate,catPicActive,catLan,catPos,catActive,catShowMenu,catShowMain,catAgent);

@override
String toString() {
  return 'BookCategory(catId: $catId, catFatherId: $catFatherId, catMenus: $catMenus, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catSup: $catSup, catDate: $catDate, catPicActive: $catPicActive, catLan: $catLan, catPos: $catPos, catActive: $catActive, catShowMenu: $catShowMenu, catShowMain: $catShowMain, catAgent: $catAgent)';
}


}

/// @nodoc
abstract mixin class _$BookCategoryCopyWith<$Res> implements $BookCategoryCopyWith<$Res> {
  factory _$BookCategoryCopyWith(_BookCategory value, $Res Function(_BookCategory) _then) = __$BookCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id') int catId,@JsonKey(name: 'cat_father_id')@IntStringConverter() String catFatherId,@JsonKey(name: 'cat_menus')@IntStringConverter() String catMenus,@JsonKey(name: 'cat_title') String catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_sup')@IntStringConverter() String catSup,@JsonKey(name: 'cat_date') String catDate,@JsonKey(name: 'cat_pic_active')@IntStringConverter() String catPicActive,@JsonKey(name: 'cat_lan') String catLan,@JsonKey(name: 'cat_pos')@IntStringConverter() String catPos,@JsonKey(name: 'cat_active')@IntStringConverter() String catActive,@JsonKey(name: 'cat_show_menu')@IntStringConverter() String catShowMenu,@JsonKey(name: 'cat_show_main')@IntStringConverter() String catShowMain,@JsonKey(name: 'cat_agent') String? catAgent
});




}
/// @nodoc
class __$BookCategoryCopyWithImpl<$Res>
    implements _$BookCategoryCopyWith<$Res> {
  __$BookCategoryCopyWithImpl(this._self, this._then);

  final _BookCategory _self;
  final $Res Function(_BookCategory) _then;

/// Create a copy of BookCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = null,Object? catFatherId = null,Object? catMenus = null,Object? catTitle = null,Object? catNote = freezed,Object? catPic = freezed,Object? catSup = null,Object? catDate = null,Object? catPicActive = null,Object? catLan = null,Object? catPos = null,Object? catActive = null,Object? catShowMenu = null,Object? catShowMain = null,Object? catAgent = freezed,}) {
  return _then(_BookCategory(
catId: null == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int,catFatherId: null == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as String,catMenus: null == catMenus ? _self.catMenus : catMenus // ignore: cast_nullable_to_non_nullable
as String,catTitle: null == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catSup: null == catSup ? _self.catSup : catSup // ignore: cast_nullable_to_non_nullable
as String,catDate: null == catDate ? _self.catDate : catDate // ignore: cast_nullable_to_non_nullable
as String,catPicActive: null == catPicActive ? _self.catPicActive : catPicActive // ignore: cast_nullable_to_non_nullable
as String,catLan: null == catLan ? _self.catLan : catLan // ignore: cast_nullable_to_non_nullable
as String,catPos: null == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String,catActive: null == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as String,catShowMenu: null == catShowMenu ? _self.catShowMenu : catShowMenu // ignore: cast_nullable_to_non_nullable
as String,catShowMain: null == catShowMain ? _self.catShowMain : catShowMain // ignore: cast_nullable_to_non_nullable
as String,catAgent: freezed == catAgent ? _self.catAgent : catAgent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BooksMeta {

 BooksPagination? get pagination; BooksFilters? get filters;@JsonKey(name: 'response_info') BooksResponseInfo? get responseInfo;
/// Create a copy of BooksMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BooksMetaCopyWith<BooksMeta> get copyWith => _$BooksMetaCopyWithImpl<BooksMeta>(this as BooksMeta, _$identity);

  /// Serializes this BooksMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BooksMeta&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.filters, filters) || other.filters == filters)&&(identical(other.responseInfo, responseInfo) || other.responseInfo == responseInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pagination,filters,responseInfo);

@override
String toString() {
  return 'BooksMeta(pagination: $pagination, filters: $filters, responseInfo: $responseInfo)';
}


}

/// @nodoc
abstract mixin class $BooksMetaCopyWith<$Res>  {
  factory $BooksMetaCopyWith(BooksMeta value, $Res Function(BooksMeta) _then) = _$BooksMetaCopyWithImpl;
@useResult
$Res call({
 BooksPagination? pagination, BooksFilters? filters,@JsonKey(name: 'response_info') BooksResponseInfo? responseInfo
});


$BooksPaginationCopyWith<$Res>? get pagination;$BooksFiltersCopyWith<$Res>? get filters;$BooksResponseInfoCopyWith<$Res>? get responseInfo;

}
/// @nodoc
class _$BooksMetaCopyWithImpl<$Res>
    implements $BooksMetaCopyWith<$Res> {
  _$BooksMetaCopyWithImpl(this._self, this._then);

  final BooksMeta _self;
  final $Res Function(BooksMeta) _then;

/// Create a copy of BooksMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagination = freezed,Object? filters = freezed,Object? responseInfo = freezed,}) {
  return _then(_self.copyWith(
pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as BooksPagination?,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as BooksFilters?,responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as BooksResponseInfo?,
  ));
}
/// Create a copy of BooksMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BooksPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $BooksPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}/// Create a copy of BooksMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BooksFiltersCopyWith<$Res>? get filters {
    if (_self.filters == null) {
    return null;
  }

  return $BooksFiltersCopyWith<$Res>(_self.filters!, (value) {
    return _then(_self.copyWith(filters: value));
  });
}/// Create a copy of BooksMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BooksResponseInfoCopyWith<$Res>? get responseInfo {
    if (_self.responseInfo == null) {
    return null;
  }

  return $BooksResponseInfoCopyWith<$Res>(_self.responseInfo!, (value) {
    return _then(_self.copyWith(responseInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [BooksMeta].
extension BooksMetaPatterns on BooksMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BooksMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BooksMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BooksMeta value)  $default,){
final _that = this;
switch (_that) {
case _BooksMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BooksMeta value)?  $default,){
final _that = this;
switch (_that) {
case _BooksMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BooksPagination? pagination,  BooksFilters? filters, @JsonKey(name: 'response_info')  BooksResponseInfo? responseInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BooksMeta() when $default != null:
return $default(_that.pagination,_that.filters,_that.responseInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BooksPagination? pagination,  BooksFilters? filters, @JsonKey(name: 'response_info')  BooksResponseInfo? responseInfo)  $default,) {final _that = this;
switch (_that) {
case _BooksMeta():
return $default(_that.pagination,_that.filters,_that.responseInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BooksPagination? pagination,  BooksFilters? filters, @JsonKey(name: 'response_info')  BooksResponseInfo? responseInfo)?  $default,) {final _that = this;
switch (_that) {
case _BooksMeta() when $default != null:
return $default(_that.pagination,_that.filters,_that.responseInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BooksMeta implements BooksMeta {
  const _BooksMeta({this.pagination, this.filters, @JsonKey(name: 'response_info') this.responseInfo});
  factory _BooksMeta.fromJson(Map<String, dynamic> json) => _$BooksMetaFromJson(json);

@override final  BooksPagination? pagination;
@override final  BooksFilters? filters;
@override@JsonKey(name: 'response_info') final  BooksResponseInfo? responseInfo;

/// Create a copy of BooksMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BooksMetaCopyWith<_BooksMeta> get copyWith => __$BooksMetaCopyWithImpl<_BooksMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BooksMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BooksMeta&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.filters, filters) || other.filters == filters)&&(identical(other.responseInfo, responseInfo) || other.responseInfo == responseInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pagination,filters,responseInfo);

@override
String toString() {
  return 'BooksMeta(pagination: $pagination, filters: $filters, responseInfo: $responseInfo)';
}


}

/// @nodoc
abstract mixin class _$BooksMetaCopyWith<$Res> implements $BooksMetaCopyWith<$Res> {
  factory _$BooksMetaCopyWith(_BooksMeta value, $Res Function(_BooksMeta) _then) = __$BooksMetaCopyWithImpl;
@override @useResult
$Res call({
 BooksPagination? pagination, BooksFilters? filters,@JsonKey(name: 'response_info') BooksResponseInfo? responseInfo
});


@override $BooksPaginationCopyWith<$Res>? get pagination;@override $BooksFiltersCopyWith<$Res>? get filters;@override $BooksResponseInfoCopyWith<$Res>? get responseInfo;

}
/// @nodoc
class __$BooksMetaCopyWithImpl<$Res>
    implements _$BooksMetaCopyWith<$Res> {
  __$BooksMetaCopyWithImpl(this._self, this._then);

  final _BooksMeta _self;
  final $Res Function(_BooksMeta) _then;

/// Create a copy of BooksMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagination = freezed,Object? filters = freezed,Object? responseInfo = freezed,}) {
  return _then(_BooksMeta(
pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as BooksPagination?,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as BooksFilters?,responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as BooksResponseInfo?,
  ));
}

/// Create a copy of BooksMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BooksPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $BooksPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}/// Create a copy of BooksMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BooksFiltersCopyWith<$Res>? get filters {
    if (_self.filters == null) {
    return null;
  }

  return $BooksFiltersCopyWith<$Res>(_self.filters!, (value) {
    return _then(_self.copyWith(filters: value));
  });
}/// Create a copy of BooksMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BooksResponseInfoCopyWith<$Res>? get responseInfo {
    if (_self.responseInfo == null) {
    return null;
  }

  return $BooksResponseInfoCopyWith<$Res>(_self.responseInfo!, (value) {
    return _then(_self.copyWith(responseInfo: value));
  });
}
}


/// @nodoc
mixin _$BooksPagination {

 int get total; int get count;@JsonKey(name: 'per_page') int get perPage;@JsonKey(name: 'current_page') int get currentPage;@JsonKey(name: 'last_page') int get lastPage; int? get from; int? get to;
/// Create a copy of BooksPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BooksPaginationCopyWith<BooksPagination> get copyWith => _$BooksPaginationCopyWithImpl<BooksPagination>(this as BooksPagination, _$identity);

  /// Serializes this BooksPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BooksPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'BooksPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $BooksPaginationCopyWith<$Res>  {
  factory $BooksPaginationCopyWith(BooksPagination value, $Res Function(BooksPagination) _then) = _$BooksPaginationCopyWithImpl;
@useResult
$Res call({
 int total, int count,@JsonKey(name: 'per_page') int perPage,@JsonKey(name: 'current_page') int currentPage,@JsonKey(name: 'last_page') int lastPage, int? from, int? to
});




}
/// @nodoc
class _$BooksPaginationCopyWithImpl<$Res>
    implements $BooksPaginationCopyWith<$Res> {
  _$BooksPaginationCopyWithImpl(this._self, this._then);

  final BooksPagination _self;
  final $Res Function(BooksPagination) _then;

/// Create a copy of BooksPagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? count = null,Object? perPage = null,Object? currentPage = null,Object? lastPage = null,Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BooksPagination].
extension BooksPaginationPatterns on BooksPagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BooksPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BooksPagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BooksPagination value)  $default,){
final _that = this;
switch (_that) {
case _BooksPagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BooksPagination value)?  $default,){
final _that = this;
switch (_that) {
case _BooksPagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int count, @JsonKey(name: 'per_page')  int perPage, @JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'last_page')  int lastPage,  int? from,  int? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BooksPagination() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int count, @JsonKey(name: 'per_page')  int perPage, @JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'last_page')  int lastPage,  int? from,  int? to)  $default,) {final _that = this;
switch (_that) {
case _BooksPagination():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int count, @JsonKey(name: 'per_page')  int perPage, @JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'last_page')  int lastPage,  int? from,  int? to)?  $default,) {final _that = this;
switch (_that) {
case _BooksPagination() when $default != null:
return $default(_that.total,_that.count,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BooksPagination implements BooksPagination {
  const _BooksPagination({required this.total, required this.count, @JsonKey(name: 'per_page') required this.perPage, @JsonKey(name: 'current_page') required this.currentPage, @JsonKey(name: 'last_page') required this.lastPage, required this.from, required this.to});
  factory _BooksPagination.fromJson(Map<String, dynamic> json) => _$BooksPaginationFromJson(json);

@override final  int total;
@override final  int count;
@override@JsonKey(name: 'per_page') final  int perPage;
@override@JsonKey(name: 'current_page') final  int currentPage;
@override@JsonKey(name: 'last_page') final  int lastPage;
@override final  int? from;
@override final  int? to;

/// Create a copy of BooksPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BooksPaginationCopyWith<_BooksPagination> get copyWith => __$BooksPaginationCopyWithImpl<_BooksPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BooksPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BooksPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'BooksPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$BooksPaginationCopyWith<$Res> implements $BooksPaginationCopyWith<$Res> {
  factory _$BooksPaginationCopyWith(_BooksPagination value, $Res Function(_BooksPagination) _then) = __$BooksPaginationCopyWithImpl;
@override @useResult
$Res call({
 int total, int count,@JsonKey(name: 'per_page') int perPage,@JsonKey(name: 'current_page') int currentPage,@JsonKey(name: 'last_page') int lastPage, int? from, int? to
});




}
/// @nodoc
class __$BooksPaginationCopyWithImpl<$Res>
    implements _$BooksPaginationCopyWith<$Res> {
  __$BooksPaginationCopyWithImpl(this._self, this._then);

  final _BooksPagination _self;
  final $Res Function(_BooksPagination) _then;

/// Create a copy of BooksPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? count = null,Object? perPage = null,Object? currentPage = null,Object? lastPage = null,Object? from = freezed,Object? to = freezed,}) {
  return _then(_BooksPagination(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$BooksFilters {

@JsonKey(name: 'applied_filters') Map<String, dynamic>? get appliedFilters;@JsonKey(name: 'available_sorts') List<String>? get availableSorts;
/// Create a copy of BooksFilters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BooksFiltersCopyWith<BooksFilters> get copyWith => _$BooksFiltersCopyWithImpl<BooksFilters>(this as BooksFilters, _$identity);

  /// Serializes this BooksFilters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BooksFilters&&const DeepCollectionEquality().equals(other.appliedFilters, appliedFilters)&&const DeepCollectionEquality().equals(other.availableSorts, availableSorts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(appliedFilters),const DeepCollectionEquality().hash(availableSorts));

@override
String toString() {
  return 'BooksFilters(appliedFilters: $appliedFilters, availableSorts: $availableSorts)';
}


}

/// @nodoc
abstract mixin class $BooksFiltersCopyWith<$Res>  {
  factory $BooksFiltersCopyWith(BooksFilters value, $Res Function(BooksFilters) _then) = _$BooksFiltersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'applied_filters') Map<String, dynamic>? appliedFilters,@JsonKey(name: 'available_sorts') List<String>? availableSorts
});




}
/// @nodoc
class _$BooksFiltersCopyWithImpl<$Res>
    implements $BooksFiltersCopyWith<$Res> {
  _$BooksFiltersCopyWithImpl(this._self, this._then);

  final BooksFilters _self;
  final $Res Function(BooksFilters) _then;

/// Create a copy of BooksFilters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appliedFilters = freezed,Object? availableSorts = freezed,}) {
  return _then(_self.copyWith(
appliedFilters: freezed == appliedFilters ? _self.appliedFilters : appliedFilters // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,availableSorts: freezed == availableSorts ? _self.availableSorts : availableSorts // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BooksFilters].
extension BooksFiltersPatterns on BooksFilters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BooksFilters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BooksFilters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BooksFilters value)  $default,){
final _that = this;
switch (_that) {
case _BooksFilters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BooksFilters value)?  $default,){
final _that = this;
switch (_that) {
case _BooksFilters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'applied_filters')  Map<String, dynamic>? appliedFilters, @JsonKey(name: 'available_sorts')  List<String>? availableSorts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BooksFilters() when $default != null:
return $default(_that.appliedFilters,_that.availableSorts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'applied_filters')  Map<String, dynamic>? appliedFilters, @JsonKey(name: 'available_sorts')  List<String>? availableSorts)  $default,) {final _that = this;
switch (_that) {
case _BooksFilters():
return $default(_that.appliedFilters,_that.availableSorts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'applied_filters')  Map<String, dynamic>? appliedFilters, @JsonKey(name: 'available_sorts')  List<String>? availableSorts)?  $default,) {final _that = this;
switch (_that) {
case _BooksFilters() when $default != null:
return $default(_that.appliedFilters,_that.availableSorts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BooksFilters implements BooksFilters {
  const _BooksFilters({@JsonKey(name: 'applied_filters') final  Map<String, dynamic>? appliedFilters, @JsonKey(name: 'available_sorts') final  List<String>? availableSorts}): _appliedFilters = appliedFilters,_availableSorts = availableSorts;
  factory _BooksFilters.fromJson(Map<String, dynamic> json) => _$BooksFiltersFromJson(json);

 final  Map<String, dynamic>? _appliedFilters;
@override@JsonKey(name: 'applied_filters') Map<String, dynamic>? get appliedFilters {
  final value = _appliedFilters;
  if (value == null) return null;
  if (_appliedFilters is EqualUnmodifiableMapView) return _appliedFilters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<String>? _availableSorts;
@override@JsonKey(name: 'available_sorts') List<String>? get availableSorts {
  final value = _availableSorts;
  if (value == null) return null;
  if (_availableSorts is EqualUnmodifiableListView) return _availableSorts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BooksFilters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BooksFiltersCopyWith<_BooksFilters> get copyWith => __$BooksFiltersCopyWithImpl<_BooksFilters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BooksFiltersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BooksFilters&&const DeepCollectionEquality().equals(other._appliedFilters, _appliedFilters)&&const DeepCollectionEquality().equals(other._availableSorts, _availableSorts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_appliedFilters),const DeepCollectionEquality().hash(_availableSorts));

@override
String toString() {
  return 'BooksFilters(appliedFilters: $appliedFilters, availableSorts: $availableSorts)';
}


}

/// @nodoc
abstract mixin class _$BooksFiltersCopyWith<$Res> implements $BooksFiltersCopyWith<$Res> {
  factory _$BooksFiltersCopyWith(_BooksFilters value, $Res Function(_BooksFilters) _then) = __$BooksFiltersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'applied_filters') Map<String, dynamic>? appliedFilters,@JsonKey(name: 'available_sorts') List<String>? availableSorts
});




}
/// @nodoc
class __$BooksFiltersCopyWithImpl<$Res>
    implements _$BooksFiltersCopyWith<$Res> {
  __$BooksFiltersCopyWithImpl(this._self, this._then);

  final _BooksFilters _self;
  final $Res Function(_BooksFilters) _then;

/// Create a copy of BooksFilters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appliedFilters = freezed,Object? availableSorts = freezed,}) {
  return _then(_BooksFilters(
appliedFilters: freezed == appliedFilters ? _self._appliedFilters : appliedFilters // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,availableSorts: freezed == availableSorts ? _self._availableSorts : availableSorts // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$BooksResponseInfo {

 String get timestamp;@JsonKey(name: 'api_version') String get apiVersion;@JsonKey(name: 'endpoint') String get endpoint;@JsonKey(name: 'content_type') String get contentType;
/// Create a copy of BooksResponseInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BooksResponseInfoCopyWith<BooksResponseInfo> get copyWith => _$BooksResponseInfoCopyWithImpl<BooksResponseInfo>(this as BooksResponseInfo, _$identity);

  /// Serializes this BooksResponseInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BooksResponseInfo&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,apiVersion,endpoint,contentType);

@override
String toString() {
  return 'BooksResponseInfo(timestamp: $timestamp, apiVersion: $apiVersion, endpoint: $endpoint, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class $BooksResponseInfoCopyWith<$Res>  {
  factory $BooksResponseInfoCopyWith(BooksResponseInfo value, $Res Function(BooksResponseInfo) _then) = _$BooksResponseInfoCopyWithImpl;
@useResult
$Res call({
 String timestamp,@JsonKey(name: 'api_version') String apiVersion,@JsonKey(name: 'endpoint') String endpoint,@JsonKey(name: 'content_type') String contentType
});




}
/// @nodoc
class _$BooksResponseInfoCopyWithImpl<$Res>
    implements $BooksResponseInfoCopyWith<$Res> {
  _$BooksResponseInfoCopyWithImpl(this._self, this._then);

  final BooksResponseInfo _self;
  final $Res Function(BooksResponseInfo) _then;

/// Create a copy of BooksResponseInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? apiVersion = null,Object? endpoint = null,Object? contentType = null,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,apiVersion: null == apiVersion ? _self.apiVersion : apiVersion // ignore: cast_nullable_to_non_nullable
as String,endpoint: null == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BooksResponseInfo].
extension BooksResponseInfoPatterns on BooksResponseInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BooksResponseInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BooksResponseInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BooksResponseInfo value)  $default,){
final _that = this;
switch (_that) {
case _BooksResponseInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BooksResponseInfo value)?  $default,){
final _that = this;
switch (_that) {
case _BooksResponseInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String timestamp, @JsonKey(name: 'api_version')  String apiVersion, @JsonKey(name: 'endpoint')  String endpoint, @JsonKey(name: 'content_type')  String contentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BooksResponseInfo() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String timestamp, @JsonKey(name: 'api_version')  String apiVersion, @JsonKey(name: 'endpoint')  String endpoint, @JsonKey(name: 'content_type')  String contentType)  $default,) {final _that = this;
switch (_that) {
case _BooksResponseInfo():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String timestamp, @JsonKey(name: 'api_version')  String apiVersion, @JsonKey(name: 'endpoint')  String endpoint, @JsonKey(name: 'content_type')  String contentType)?  $default,) {final _that = this;
switch (_that) {
case _BooksResponseInfo() when $default != null:
return $default(_that.timestamp,_that.apiVersion,_that.endpoint,_that.contentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BooksResponseInfo implements BooksResponseInfo {
  const _BooksResponseInfo({required this.timestamp, @JsonKey(name: 'api_version') required this.apiVersion, @JsonKey(name: 'endpoint') required this.endpoint, @JsonKey(name: 'content_type') required this.contentType});
  factory _BooksResponseInfo.fromJson(Map<String, dynamic> json) => _$BooksResponseInfoFromJson(json);

@override final  String timestamp;
@override@JsonKey(name: 'api_version') final  String apiVersion;
@override@JsonKey(name: 'endpoint') final  String endpoint;
@override@JsonKey(name: 'content_type') final  String contentType;

/// Create a copy of BooksResponseInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BooksResponseInfoCopyWith<_BooksResponseInfo> get copyWith => __$BooksResponseInfoCopyWithImpl<_BooksResponseInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BooksResponseInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BooksResponseInfo&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,apiVersion,endpoint,contentType);

@override
String toString() {
  return 'BooksResponseInfo(timestamp: $timestamp, apiVersion: $apiVersion, endpoint: $endpoint, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class _$BooksResponseInfoCopyWith<$Res> implements $BooksResponseInfoCopyWith<$Res> {
  factory _$BooksResponseInfoCopyWith(_BooksResponseInfo value, $Res Function(_BooksResponseInfo) _then) = __$BooksResponseInfoCopyWithImpl;
@override @useResult
$Res call({
 String timestamp,@JsonKey(name: 'api_version') String apiVersion,@JsonKey(name: 'endpoint') String endpoint,@JsonKey(name: 'content_type') String contentType
});




}
/// @nodoc
class __$BooksResponseInfoCopyWithImpl<$Res>
    implements _$BooksResponseInfoCopyWith<$Res> {
  __$BooksResponseInfoCopyWithImpl(this._self, this._then);

  final _BooksResponseInfo _self;
  final $Res Function(_BooksResponseInfo) _then;

/// Create a copy of BooksResponseInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? apiVersion = null,Object? endpoint = null,Object? contentType = null,}) {
  return _then(_BooksResponseInfo(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,apiVersion: null == apiVersion ? _self.apiVersion : apiVersion // ignore: cast_nullable_to_non_nullable
as String,endpoint: null == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
