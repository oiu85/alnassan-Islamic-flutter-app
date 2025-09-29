// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BooksState {

 BlocStatus get status; List<BookData> get books; int get currentPage; int get perPage; bool get hasReachedMax; bool get isLoadingMore; String? get errorMessage; BooksMeta? get meta;
/// Create a copy of BooksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BooksStateCopyWith<BooksState> get copyWith => _$BooksStateCopyWithImpl<BooksState>(this as BooksState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BooksState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.books, books)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(books),currentPage,perPage,hasReachedMax,isLoadingMore,errorMessage,meta);

@override
String toString() {
  return 'BooksState(status: $status, books: $books, currentPage: $currentPage, perPage: $perPage, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $BooksStateCopyWith<$Res>  {
  factory $BooksStateCopyWith(BooksState value, $Res Function(BooksState) _then) = _$BooksStateCopyWithImpl;
@useResult
$Res call({
 BlocStatus status, List<BookData> books, int currentPage, int perPage, bool hasReachedMax, bool isLoadingMore, String? errorMessage, BooksMeta? meta
});


$BooksMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$BooksStateCopyWithImpl<$Res>
    implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._self, this._then);

  final BooksState _self;
  final $Res Function(BooksState) _then;

/// Create a copy of BooksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? books = null,Object? currentPage = null,Object? perPage = null,Object? hasReachedMax = null,Object? isLoadingMore = null,Object? errorMessage = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BlocStatus,books: null == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as List<BookData>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as BooksMeta?,
  ));
}
/// Create a copy of BooksState
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


/// Adds pattern-matching-related methods to [BooksState].
extension BooksStatePatterns on BooksState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BooksState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BooksState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BooksState value)  $default,){
final _that = this;
switch (_that) {
case _BooksState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BooksState value)?  $default,){
final _that = this;
switch (_that) {
case _BooksState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BlocStatus status,  List<BookData> books,  int currentPage,  int perPage,  bool hasReachedMax,  bool isLoadingMore,  String? errorMessage,  BooksMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BooksState() when $default != null:
return $default(_that.status,_that.books,_that.currentPage,_that.perPage,_that.hasReachedMax,_that.isLoadingMore,_that.errorMessage,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BlocStatus status,  List<BookData> books,  int currentPage,  int perPage,  bool hasReachedMax,  bool isLoadingMore,  String? errorMessage,  BooksMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _BooksState():
return $default(_that.status,_that.books,_that.currentPage,_that.perPage,_that.hasReachedMax,_that.isLoadingMore,_that.errorMessage,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BlocStatus status,  List<BookData> books,  int currentPage,  int perPage,  bool hasReachedMax,  bool isLoadingMore,  String? errorMessage,  BooksMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _BooksState() when $default != null:
return $default(_that.status,_that.books,_that.currentPage,_that.perPage,_that.hasReachedMax,_that.isLoadingMore,_that.errorMessage,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _BooksState implements BooksState {
  const _BooksState({this.status = const BlocStatus.initial(), final  List<BookData> books = const [], this.currentPage = 1, this.perPage = 10, this.hasReachedMax = false, this.isLoadingMore = false, this.errorMessage, this.meta}): _books = books;
  

@override@JsonKey() final  BlocStatus status;
 final  List<BookData> _books;
@override@JsonKey() List<BookData> get books {
  if (_books is EqualUnmodifiableListView) return _books;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_books);
}

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  int perPage;
@override@JsonKey() final  bool hasReachedMax;
@override@JsonKey() final  bool isLoadingMore;
@override final  String? errorMessage;
@override final  BooksMeta? meta;

/// Create a copy of BooksState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BooksStateCopyWith<_BooksState> get copyWith => __$BooksStateCopyWithImpl<_BooksState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BooksState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._books, _books)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_books),currentPage,perPage,hasReachedMax,isLoadingMore,errorMessage,meta);

@override
String toString() {
  return 'BooksState(status: $status, books: $books, currentPage: $currentPage, perPage: $perPage, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$BooksStateCopyWith<$Res> implements $BooksStateCopyWith<$Res> {
  factory _$BooksStateCopyWith(_BooksState value, $Res Function(_BooksState) _then) = __$BooksStateCopyWithImpl;
@override @useResult
$Res call({
 BlocStatus status, List<BookData> books, int currentPage, int perPage, bool hasReachedMax, bool isLoadingMore, String? errorMessage, BooksMeta? meta
});


@override $BooksMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$BooksStateCopyWithImpl<$Res>
    implements _$BooksStateCopyWith<$Res> {
  __$BooksStateCopyWithImpl(this._self, this._then);

  final _BooksState _self;
  final $Res Function(_BooksState) _then;

/// Create a copy of BooksState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? books = null,Object? currentPage = null,Object? perPage = null,Object? hasReachedMax = null,Object? isLoadingMore = null,Object? errorMessage = freezed,Object? meta = freezed,}) {
  return _then(_BooksState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BlocStatus,books: null == books ? _self._books : books // ignore: cast_nullable_to_non_nullable
as List<BookData>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as BooksMeta?,
  ));
}

/// Create a copy of BooksState
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

// dart format on
