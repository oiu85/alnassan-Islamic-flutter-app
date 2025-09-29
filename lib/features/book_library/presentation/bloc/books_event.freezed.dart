// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BooksEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BooksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BooksEvent()';
}


}

/// @nodoc
class $BooksEventCopyWith<$Res>  {
$BooksEventCopyWith(BooksEvent _, $Res Function(BooksEvent) __);
}


/// Adds pattern-matching-related methods to [BooksEvent].
extension BooksEventPatterns on BooksEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchBooksEvent value)?  fetchBooks,TResult Function( RefreshBooksEvent value)?  refreshBooks,TResult Function( LoadMoreBooksEvent value)?  loadMoreBooks,TResult Function( ResetBooksEvent value)?  resetBooks,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchBooksEvent() when fetchBooks != null:
return fetchBooks(_that);case RefreshBooksEvent() when refreshBooks != null:
return refreshBooks(_that);case LoadMoreBooksEvent() when loadMoreBooks != null:
return loadMoreBooks(_that);case ResetBooksEvent() when resetBooks != null:
return resetBooks(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchBooksEvent value)  fetchBooks,required TResult Function( RefreshBooksEvent value)  refreshBooks,required TResult Function( LoadMoreBooksEvent value)  loadMoreBooks,required TResult Function( ResetBooksEvent value)  resetBooks,}){
final _that = this;
switch (_that) {
case FetchBooksEvent():
return fetchBooks(_that);case RefreshBooksEvent():
return refreshBooks(_that);case LoadMoreBooksEvent():
return loadMoreBooks(_that);case ResetBooksEvent():
return resetBooks(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchBooksEvent value)?  fetchBooks,TResult? Function( RefreshBooksEvent value)?  refreshBooks,TResult? Function( LoadMoreBooksEvent value)?  loadMoreBooks,TResult? Function( ResetBooksEvent value)?  resetBooks,}){
final _that = this;
switch (_that) {
case FetchBooksEvent() when fetchBooks != null:
return fetchBooks(_that);case RefreshBooksEvent() when refreshBooks != null:
return refreshBooks(_that);case LoadMoreBooksEvent() when loadMoreBooks != null:
return loadMoreBooks(_that);case ResetBooksEvent() when resetBooks != null:
return resetBooks(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page,  int perPage,  String include)?  fetchBooks,TResult Function()?  refreshBooks,TResult Function()?  loadMoreBooks,TResult Function()?  resetBooks,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchBooksEvent() when fetchBooks != null:
return fetchBooks(_that.page,_that.perPage,_that.include);case RefreshBooksEvent() when refreshBooks != null:
return refreshBooks();case LoadMoreBooksEvent() when loadMoreBooks != null:
return loadMoreBooks();case ResetBooksEvent() when resetBooks != null:
return resetBooks();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page,  int perPage,  String include)  fetchBooks,required TResult Function()  refreshBooks,required TResult Function()  loadMoreBooks,required TResult Function()  resetBooks,}) {final _that = this;
switch (_that) {
case FetchBooksEvent():
return fetchBooks(_that.page,_that.perPage,_that.include);case RefreshBooksEvent():
return refreshBooks();case LoadMoreBooksEvent():
return loadMoreBooks();case ResetBooksEvent():
return resetBooks();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page,  int perPage,  String include)?  fetchBooks,TResult? Function()?  refreshBooks,TResult? Function()?  loadMoreBooks,TResult? Function()?  resetBooks,}) {final _that = this;
switch (_that) {
case FetchBooksEvent() when fetchBooks != null:
return fetchBooks(_that.page,_that.perPage,_that.include);case RefreshBooksEvent() when refreshBooks != null:
return refreshBooks();case LoadMoreBooksEvent() when loadMoreBooks != null:
return loadMoreBooks();case ResetBooksEvent() when resetBooks != null:
return resetBooks();case _:
  return null;

}
}

}

/// @nodoc


class FetchBooksEvent implements BooksEvent {
  const FetchBooksEvent({this.page = 1, this.perPage = 10, this.include = 'category'});
  

@JsonKey() final  int page;
@JsonKey() final  int perPage;
@JsonKey() final  String include;

/// Create a copy of BooksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchBooksEventCopyWith<FetchBooksEvent> get copyWith => _$FetchBooksEventCopyWithImpl<FetchBooksEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchBooksEvent&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.include, include) || other.include == include));
}


@override
int get hashCode => Object.hash(runtimeType,page,perPage,include);

@override
String toString() {
  return 'BooksEvent.fetchBooks(page: $page, perPage: $perPage, include: $include)';
}


}

/// @nodoc
abstract mixin class $FetchBooksEventCopyWith<$Res> implements $BooksEventCopyWith<$Res> {
  factory $FetchBooksEventCopyWith(FetchBooksEvent value, $Res Function(FetchBooksEvent) _then) = _$FetchBooksEventCopyWithImpl;
@useResult
$Res call({
 int page, int perPage, String include
});




}
/// @nodoc
class _$FetchBooksEventCopyWithImpl<$Res>
    implements $FetchBooksEventCopyWith<$Res> {
  _$FetchBooksEventCopyWithImpl(this._self, this._then);

  final FetchBooksEvent _self;
  final $Res Function(FetchBooksEvent) _then;

/// Create a copy of BooksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? perPage = null,Object? include = null,}) {
  return _then(FetchBooksEvent(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,include: null == include ? _self.include : include // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RefreshBooksEvent implements BooksEvent {
  const RefreshBooksEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshBooksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BooksEvent.refreshBooks()';
}


}




/// @nodoc


class LoadMoreBooksEvent implements BooksEvent {
  const LoadMoreBooksEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreBooksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BooksEvent.loadMoreBooks()';
}


}




/// @nodoc


class ResetBooksEvent implements BooksEvent {
  const ResetBooksEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetBooksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BooksEvent.resetBooks()';
}


}




// dart format on
