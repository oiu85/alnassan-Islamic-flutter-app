// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fatwa_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FatwaListModel {

 String? get status; FatwaListData? get data; FatwaListPagination? get pagination; FatwaListMeta? get meta;
/// Create a copy of FatwaListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FatwaListModelCopyWith<FatwaListModel> get copyWith => _$FatwaListModelCopyWithImpl<FatwaListModel>(this as FatwaListModel, _$identity);

  /// Serializes this FatwaListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FatwaListModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,pagination,meta);

@override
String toString() {
  return 'FatwaListModel(status: $status, data: $data, pagination: $pagination, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $FatwaListModelCopyWith<$Res>  {
  factory $FatwaListModelCopyWith(FatwaListModel value, $Res Function(FatwaListModel) _then) = _$FatwaListModelCopyWithImpl;
@useResult
$Res call({
 String? status, FatwaListData? data, FatwaListPagination? pagination, FatwaListMeta? meta
});


$FatwaListDataCopyWith<$Res>? get data;$FatwaListPaginationCopyWith<$Res>? get pagination;$FatwaListMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$FatwaListModelCopyWithImpl<$Res>
    implements $FatwaListModelCopyWith<$Res> {
  _$FatwaListModelCopyWithImpl(this._self, this._then);

  final FatwaListModel _self;
  final $Res Function(FatwaListModel) _then;

/// Create a copy of FatwaListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,Object? pagination = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FatwaListData?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as FatwaListPagination?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as FatwaListMeta?,
  ));
}
/// Create a copy of FatwaListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FatwaListDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $FatwaListDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of FatwaListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FatwaListPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $FatwaListPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}/// Create a copy of FatwaListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FatwaListMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $FatwaListMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [FatwaListModel].
extension FatwaListModelPatterns on FatwaListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FatwaListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FatwaListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FatwaListModel value)  $default,){
final _that = this;
switch (_that) {
case _FatwaListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FatwaListModel value)?  $default,){
final _that = this;
switch (_that) {
case _FatwaListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  FatwaListData? data,  FatwaListPagination? pagination,  FatwaListMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FatwaListModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  FatwaListData? data,  FatwaListPagination? pagination,  FatwaListMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _FatwaListModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  FatwaListData? data,  FatwaListPagination? pagination,  FatwaListMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _FatwaListModel() when $default != null:
return $default(_that.status,_that.data,_that.pagination,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FatwaListModel implements FatwaListModel {
  const _FatwaListModel({this.status, this.data, this.pagination, this.meta});
  factory _FatwaListModel.fromJson(Map<String, dynamic> json) => _$FatwaListModelFromJson(json);

@override final  String? status;
@override final  FatwaListData? data;
@override final  FatwaListPagination? pagination;
@override final  FatwaListMeta? meta;

/// Create a copy of FatwaListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FatwaListModelCopyWith<_FatwaListModel> get copyWith => __$FatwaListModelCopyWithImpl<_FatwaListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FatwaListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FatwaListModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,pagination,meta);

@override
String toString() {
  return 'FatwaListModel(status: $status, data: $data, pagination: $pagination, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$FatwaListModelCopyWith<$Res> implements $FatwaListModelCopyWith<$Res> {
  factory _$FatwaListModelCopyWith(_FatwaListModel value, $Res Function(_FatwaListModel) _then) = __$FatwaListModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, FatwaListData? data, FatwaListPagination? pagination, FatwaListMeta? meta
});


@override $FatwaListDataCopyWith<$Res>? get data;@override $FatwaListPaginationCopyWith<$Res>? get pagination;@override $FatwaListMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$FatwaListModelCopyWithImpl<$Res>
    implements _$FatwaListModelCopyWith<$Res> {
  __$FatwaListModelCopyWithImpl(this._self, this._then);

  final _FatwaListModel _self;
  final $Res Function(_FatwaListModel) _then;

/// Create a copy of FatwaListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,Object? pagination = freezed,Object? meta = freezed,}) {
  return _then(_FatwaListModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FatwaListData?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as FatwaListPagination?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as FatwaListMeta?,
  ));
}

/// Create a copy of FatwaListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FatwaListDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $FatwaListDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of FatwaListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FatwaListPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $FatwaListPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}/// Create a copy of FatwaListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FatwaListMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $FatwaListMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$FatwaListData {

@JsonKey(name: 'child_category') FatwaListCategory? get childCategory;@JsonKey(name: 'fatwas') FatwaListFatwas? get fatwas;
/// Create a copy of FatwaListData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FatwaListDataCopyWith<FatwaListData> get copyWith => _$FatwaListDataCopyWithImpl<FatwaListData>(this as FatwaListData, _$identity);

  /// Serializes this FatwaListData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FatwaListData&&(identical(other.childCategory, childCategory) || other.childCategory == childCategory)&&(identical(other.fatwas, fatwas) || other.fatwas == fatwas));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,childCategory,fatwas);

@override
String toString() {
  return 'FatwaListData(childCategory: $childCategory, fatwas: $fatwas)';
}


}

/// @nodoc
abstract mixin class $FatwaListDataCopyWith<$Res>  {
  factory $FatwaListDataCopyWith(FatwaListData value, $Res Function(FatwaListData) _then) = _$FatwaListDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'child_category') FatwaListCategory? childCategory,@JsonKey(name: 'fatwas') FatwaListFatwas? fatwas
});


$FatwaListCategoryCopyWith<$Res>? get childCategory;$FatwaListFatwasCopyWith<$Res>? get fatwas;

}
/// @nodoc
class _$FatwaListDataCopyWithImpl<$Res>
    implements $FatwaListDataCopyWith<$Res> {
  _$FatwaListDataCopyWithImpl(this._self, this._then);

  final FatwaListData _self;
  final $Res Function(FatwaListData) _then;

/// Create a copy of FatwaListData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? childCategory = freezed,Object? fatwas = freezed,}) {
  return _then(_self.copyWith(
childCategory: freezed == childCategory ? _self.childCategory : childCategory // ignore: cast_nullable_to_non_nullable
as FatwaListCategory?,fatwas: freezed == fatwas ? _self.fatwas : fatwas // ignore: cast_nullable_to_non_nullable
as FatwaListFatwas?,
  ));
}
/// Create a copy of FatwaListData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FatwaListCategoryCopyWith<$Res>? get childCategory {
    if (_self.childCategory == null) {
    return null;
  }

  return $FatwaListCategoryCopyWith<$Res>(_self.childCategory!, (value) {
    return _then(_self.copyWith(childCategory: value));
  });
}/// Create a copy of FatwaListData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FatwaListFatwasCopyWith<$Res>? get fatwas {
    if (_self.fatwas == null) {
    return null;
  }

  return $FatwaListFatwasCopyWith<$Res>(_self.fatwas!, (value) {
    return _then(_self.copyWith(fatwas: value));
  });
}
}


/// Adds pattern-matching-related methods to [FatwaListData].
extension FatwaListDataPatterns on FatwaListData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FatwaListData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FatwaListData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FatwaListData value)  $default,){
final _that = this;
switch (_that) {
case _FatwaListData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FatwaListData value)?  $default,){
final _that = this;
switch (_that) {
case _FatwaListData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'child_category')  FatwaListCategory? childCategory, @JsonKey(name: 'fatwas')  FatwaListFatwas? fatwas)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FatwaListData() when $default != null:
return $default(_that.childCategory,_that.fatwas);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'child_category')  FatwaListCategory? childCategory, @JsonKey(name: 'fatwas')  FatwaListFatwas? fatwas)  $default,) {final _that = this;
switch (_that) {
case _FatwaListData():
return $default(_that.childCategory,_that.fatwas);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'child_category')  FatwaListCategory? childCategory, @JsonKey(name: 'fatwas')  FatwaListFatwas? fatwas)?  $default,) {final _that = this;
switch (_that) {
case _FatwaListData() when $default != null:
return $default(_that.childCategory,_that.fatwas);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FatwaListData implements FatwaListData {
  const _FatwaListData({@JsonKey(name: 'child_category') this.childCategory, @JsonKey(name: 'fatwas') this.fatwas});
  factory _FatwaListData.fromJson(Map<String, dynamic> json) => _$FatwaListDataFromJson(json);

@override@JsonKey(name: 'child_category') final  FatwaListCategory? childCategory;
@override@JsonKey(name: 'fatwas') final  FatwaListFatwas? fatwas;

/// Create a copy of FatwaListData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FatwaListDataCopyWith<_FatwaListData> get copyWith => __$FatwaListDataCopyWithImpl<_FatwaListData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FatwaListDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FatwaListData&&(identical(other.childCategory, childCategory) || other.childCategory == childCategory)&&(identical(other.fatwas, fatwas) || other.fatwas == fatwas));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,childCategory,fatwas);

@override
String toString() {
  return 'FatwaListData(childCategory: $childCategory, fatwas: $fatwas)';
}


}

/// @nodoc
abstract mixin class _$FatwaListDataCopyWith<$Res> implements $FatwaListDataCopyWith<$Res> {
  factory _$FatwaListDataCopyWith(_FatwaListData value, $Res Function(_FatwaListData) _then) = __$FatwaListDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'child_category') FatwaListCategory? childCategory,@JsonKey(name: 'fatwas') FatwaListFatwas? fatwas
});


@override $FatwaListCategoryCopyWith<$Res>? get childCategory;@override $FatwaListFatwasCopyWith<$Res>? get fatwas;

}
/// @nodoc
class __$FatwaListDataCopyWithImpl<$Res>
    implements _$FatwaListDataCopyWith<$Res> {
  __$FatwaListDataCopyWithImpl(this._self, this._then);

  final _FatwaListData _self;
  final $Res Function(_FatwaListData) _then;

/// Create a copy of FatwaListData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? childCategory = freezed,Object? fatwas = freezed,}) {
  return _then(_FatwaListData(
childCategory: freezed == childCategory ? _self.childCategory : childCategory // ignore: cast_nullable_to_non_nullable
as FatwaListCategory?,fatwas: freezed == fatwas ? _self.fatwas : fatwas // ignore: cast_nullable_to_non_nullable
as FatwaListFatwas?,
  ));
}

/// Create a copy of FatwaListData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FatwaListCategoryCopyWith<$Res>? get childCategory {
    if (_self.childCategory == null) {
    return null;
  }

  return $FatwaListCategoryCopyWith<$Res>(_self.childCategory!, (value) {
    return _then(_self.copyWith(childCategory: value));
  });
}/// Create a copy of FatwaListData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FatwaListFatwasCopyWith<$Res>? get fatwas {
    if (_self.fatwas == null) {
    return null;
  }

  return $FatwaListFatwasCopyWith<$Res>(_self.fatwas!, (value) {
    return _then(_self.copyWith(fatwas: value));
  });
}
}


/// @nodoc
mixin _$FatwaListFatwas {

@JsonKey(name: 'data') List<AdvisoryItem>? get data;@JsonKey(name: 'pagination') FatwaListPagination? get pagination;
/// Create a copy of FatwaListFatwas
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FatwaListFatwasCopyWith<FatwaListFatwas> get copyWith => _$FatwaListFatwasCopyWithImpl<FatwaListFatwas>(this as FatwaListFatwas, _$identity);

  /// Serializes this FatwaListFatwas to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FatwaListFatwas&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'FatwaListFatwas(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $FatwaListFatwasCopyWith<$Res>  {
  factory $FatwaListFatwasCopyWith(FatwaListFatwas value, $Res Function(FatwaListFatwas) _then) = _$FatwaListFatwasCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<AdvisoryItem>? data,@JsonKey(name: 'pagination') FatwaListPagination? pagination
});


$FatwaListPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$FatwaListFatwasCopyWithImpl<$Res>
    implements $FatwaListFatwasCopyWith<$Res> {
  _$FatwaListFatwasCopyWithImpl(this._self, this._then);

  final FatwaListFatwas _self;
  final $Res Function(FatwaListFatwas) _then;

/// Create a copy of FatwaListFatwas
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AdvisoryItem>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as FatwaListPagination?,
  ));
}
/// Create a copy of FatwaListFatwas
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FatwaListPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $FatwaListPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [FatwaListFatwas].
extension FatwaListFatwasPatterns on FatwaListFatwas {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FatwaListFatwas value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FatwaListFatwas() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FatwaListFatwas value)  $default,){
final _that = this;
switch (_that) {
case _FatwaListFatwas():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FatwaListFatwas value)?  $default,){
final _that = this;
switch (_that) {
case _FatwaListFatwas() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<AdvisoryItem>? data, @JsonKey(name: 'pagination')  FatwaListPagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FatwaListFatwas() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<AdvisoryItem>? data, @JsonKey(name: 'pagination')  FatwaListPagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _FatwaListFatwas():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<AdvisoryItem>? data, @JsonKey(name: 'pagination')  FatwaListPagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _FatwaListFatwas() when $default != null:
return $default(_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FatwaListFatwas implements FatwaListFatwas {
  const _FatwaListFatwas({@JsonKey(name: 'data') final  List<AdvisoryItem>? data, @JsonKey(name: 'pagination') this.pagination}): _data = data;
  factory _FatwaListFatwas.fromJson(Map<String, dynamic> json) => _$FatwaListFatwasFromJson(json);

 final  List<AdvisoryItem>? _data;
@override@JsonKey(name: 'data') List<AdvisoryItem>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'pagination') final  FatwaListPagination? pagination;

/// Create a copy of FatwaListFatwas
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FatwaListFatwasCopyWith<_FatwaListFatwas> get copyWith => __$FatwaListFatwasCopyWithImpl<_FatwaListFatwas>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FatwaListFatwasToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FatwaListFatwas&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'FatwaListFatwas(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$FatwaListFatwasCopyWith<$Res> implements $FatwaListFatwasCopyWith<$Res> {
  factory _$FatwaListFatwasCopyWith(_FatwaListFatwas value, $Res Function(_FatwaListFatwas) _then) = __$FatwaListFatwasCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<AdvisoryItem>? data,@JsonKey(name: 'pagination') FatwaListPagination? pagination
});


@override $FatwaListPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$FatwaListFatwasCopyWithImpl<$Res>
    implements _$FatwaListFatwasCopyWith<$Res> {
  __$FatwaListFatwasCopyWithImpl(this._self, this._then);

  final _FatwaListFatwas _self;
  final $Res Function(_FatwaListFatwas) _then;

/// Create a copy of FatwaListFatwas
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_FatwaListFatwas(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AdvisoryItem>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as FatwaListPagination?,
  ));
}

/// Create a copy of FatwaListFatwas
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FatwaListPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $FatwaListPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$FatwaListCategory {

@JsonKey(name: 'cat_id') int? get catId;@JsonKey(name: 'cat_father_id') String? get catFatherId;@JsonKey(name: 'cat_title') String? get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos') String? get catPos;@JsonKey(name: 'cat_active') String? get catActive;
/// Create a copy of FatwaListCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FatwaListCategoryCopyWith<FatwaListCategory> get copyWith => _$FatwaListCategoryCopyWithImpl<FatwaListCategory>(this as FatwaListCategory, _$identity);

  /// Serializes this FatwaListCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FatwaListCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catTitle,catNote,catPic,catPos,catActive);

@override
String toString() {
  return 'FatwaListCategory(catId: $catId, catFatherId: $catFatherId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catActive: $catActive)';
}


}

/// @nodoc
abstract mixin class $FatwaListCategoryCopyWith<$Res>  {
  factory $FatwaListCategoryCopyWith(FatwaListCategory value, $Res Function(FatwaListCategory) _then) = _$FatwaListCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_father_id') String? catFatherId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos') String? catPos,@JsonKey(name: 'cat_active') String? catActive
});




}
/// @nodoc
class _$FatwaListCategoryCopyWithImpl<$Res>
    implements $FatwaListCategoryCopyWith<$Res> {
  _$FatwaListCategoryCopyWithImpl(this._self, this._then);

  final FatwaListCategory _self;
  final $Res Function(FatwaListCategory) _then;

/// Create a copy of FatwaListCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = freezed,Object? catFatherId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? catActive = freezed,}) {
  return _then(_self.copyWith(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catFatherId: freezed == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as String?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,catActive: freezed == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FatwaListCategory].
extension FatwaListCategoryPatterns on FatwaListCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FatwaListCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FatwaListCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FatwaListCategory value)  $default,){
final _that = this;
switch (_that) {
case _FatwaListCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FatwaListCategory value)?  $default,){
final _that = this;
switch (_that) {
case _FatwaListCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_father_id')  String? catFatherId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_active')  String? catActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FatwaListCategory() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_father_id')  String? catFatherId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_active')  String? catActive)  $default,) {final _that = this;
switch (_that) {
case _FatwaListCategory():
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id')  int? catId, @JsonKey(name: 'cat_father_id')  String? catFatherId, @JsonKey(name: 'cat_title')  String? catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')  String? catPos, @JsonKey(name: 'cat_active')  String? catActive)?  $default,) {final _that = this;
switch (_that) {
case _FatwaListCategory() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FatwaListCategory implements FatwaListCategory {
  const _FatwaListCategory({@JsonKey(name: 'cat_id') this.catId, @JsonKey(name: 'cat_father_id') this.catFatherId, @JsonKey(name: 'cat_title') this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos') this.catPos, @JsonKey(name: 'cat_active') this.catActive});
  factory _FatwaListCategory.fromJson(Map<String, dynamic> json) => _$FatwaListCategoryFromJson(json);

@override@JsonKey(name: 'cat_id') final  int? catId;
@override@JsonKey(name: 'cat_father_id') final  String? catFatherId;
@override@JsonKey(name: 'cat_title') final  String? catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_pos') final  String? catPos;
@override@JsonKey(name: 'cat_active') final  String? catActive;

/// Create a copy of FatwaListCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FatwaListCategoryCopyWith<_FatwaListCategory> get copyWith => __$FatwaListCategoryCopyWithImpl<_FatwaListCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FatwaListCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FatwaListCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catTitle,catNote,catPic,catPos,catActive);

@override
String toString() {
  return 'FatwaListCategory(catId: $catId, catFatherId: $catFatherId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catActive: $catActive)';
}


}

/// @nodoc
abstract mixin class _$FatwaListCategoryCopyWith<$Res> implements $FatwaListCategoryCopyWith<$Res> {
  factory _$FatwaListCategoryCopyWith(_FatwaListCategory value, $Res Function(_FatwaListCategory) _then) = __$FatwaListCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id') int? catId,@JsonKey(name: 'cat_father_id') String? catFatherId,@JsonKey(name: 'cat_title') String? catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos') String? catPos,@JsonKey(name: 'cat_active') String? catActive
});




}
/// @nodoc
class __$FatwaListCategoryCopyWithImpl<$Res>
    implements _$FatwaListCategoryCopyWith<$Res> {
  __$FatwaListCategoryCopyWithImpl(this._self, this._then);

  final _FatwaListCategory _self;
  final $Res Function(_FatwaListCategory) _then;

/// Create a copy of FatwaListCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = freezed,Object? catFatherId = freezed,Object? catTitle = freezed,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = freezed,Object? catActive = freezed,}) {
  return _then(_FatwaListCategory(
catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int?,catFatherId: freezed == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as String?,catTitle: freezed == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String?,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: freezed == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String?,catActive: freezed == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FatwaListPagination {

@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'last_page') int? get lastPage;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'total') int? get total;@JsonKey(name: 'from') int? get from;@JsonKey(name: 'to') int? get to;
/// Create a copy of FatwaListPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FatwaListPaginationCopyWith<FatwaListPagination> get copyWith => _$FatwaListPaginationCopyWithImpl<FatwaListPagination>(this as FatwaListPagination, _$identity);

  /// Serializes this FatwaListPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FatwaListPagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,lastPage,perPage,total,from,to);

@override
String toString() {
  return 'FatwaListPagination(currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $FatwaListPaginationCopyWith<$Res>  {
  factory $FatwaListPaginationCopyWith(FatwaListPagination value, $Res Function(FatwaListPagination) _then) = _$FatwaListPaginationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'total') int? total,@JsonKey(name: 'from') int? from,@JsonKey(name: 'to') int? to
});




}
/// @nodoc
class _$FatwaListPaginationCopyWithImpl<$Res>
    implements $FatwaListPaginationCopyWith<$Res> {
  _$FatwaListPaginationCopyWithImpl(this._self, this._then);

  final FatwaListPagination _self;
  final $Res Function(FatwaListPagination) _then;

/// Create a copy of FatwaListPagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? lastPage = freezed,Object? perPage = freezed,Object? total = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FatwaListPagination].
extension FatwaListPaginationPatterns on FatwaListPagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FatwaListPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FatwaListPagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FatwaListPagination value)  $default,){
final _that = this;
switch (_that) {
case _FatwaListPagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FatwaListPagination value)?  $default,){
final _that = this;
switch (_that) {
case _FatwaListPagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total')  int? total, @JsonKey(name: 'from')  int? from, @JsonKey(name: 'to')  int? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FatwaListPagination() when $default != null:
return $default(_that.currentPage,_that.lastPage,_that.perPage,_that.total,_that.from,_that.to);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total')  int? total, @JsonKey(name: 'from')  int? from, @JsonKey(name: 'to')  int? to)  $default,) {final _that = this;
switch (_that) {
case _FatwaListPagination():
return $default(_that.currentPage,_that.lastPage,_that.perPage,_that.total,_that.from,_that.to);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total')  int? total, @JsonKey(name: 'from')  int? from, @JsonKey(name: 'to')  int? to)?  $default,) {final _that = this;
switch (_that) {
case _FatwaListPagination() when $default != null:
return $default(_that.currentPage,_that.lastPage,_that.perPage,_that.total,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FatwaListPagination implements FatwaListPagination {
  const _FatwaListPagination({@JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'last_page') this.lastPage, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'total') this.total, @JsonKey(name: 'from') this.from, @JsonKey(name: 'to') this.to});
  factory _FatwaListPagination.fromJson(Map<String, dynamic> json) => _$FatwaListPaginationFromJson(json);

@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'last_page') final  int? lastPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'total') final  int? total;
@override@JsonKey(name: 'from') final  int? from;
@override@JsonKey(name: 'to') final  int? to;

/// Create a copy of FatwaListPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FatwaListPaginationCopyWith<_FatwaListPagination> get copyWith => __$FatwaListPaginationCopyWithImpl<_FatwaListPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FatwaListPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FatwaListPagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,lastPage,perPage,total,from,to);

@override
String toString() {
  return 'FatwaListPagination(currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$FatwaListPaginationCopyWith<$Res> implements $FatwaListPaginationCopyWith<$Res> {
  factory _$FatwaListPaginationCopyWith(_FatwaListPagination value, $Res Function(_FatwaListPagination) _then) = __$FatwaListPaginationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'total') int? total,@JsonKey(name: 'from') int? from,@JsonKey(name: 'to') int? to
});




}
/// @nodoc
class __$FatwaListPaginationCopyWithImpl<$Res>
    implements _$FatwaListPaginationCopyWith<$Res> {
  __$FatwaListPaginationCopyWithImpl(this._self, this._then);

  final _FatwaListPagination _self;
  final $Res Function(_FatwaListPagination) _then;

/// Create a copy of FatwaListPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? lastPage = freezed,Object? perPage = freezed,Object? total = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_FatwaListPagination(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$FatwaListMeta {

@JsonKey(name: 'sort_by') String? get sortBy;@JsonKey(name: 'sort_order') String? get sortOrder;@JsonKey(name: 'total_fatwas') int? get totalFatwas;
/// Create a copy of FatwaListMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FatwaListMetaCopyWith<FatwaListMeta> get copyWith => _$FatwaListMetaCopyWithImpl<FatwaListMeta>(this as FatwaListMeta, _$identity);

  /// Serializes this FatwaListMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FatwaListMeta&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.totalFatwas, totalFatwas) || other.totalFatwas == totalFatwas));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sortBy,sortOrder,totalFatwas);

@override
String toString() {
  return 'FatwaListMeta(sortBy: $sortBy, sortOrder: $sortOrder, totalFatwas: $totalFatwas)';
}


}

/// @nodoc
abstract mixin class $FatwaListMetaCopyWith<$Res>  {
  factory $FatwaListMetaCopyWith(FatwaListMeta value, $Res Function(FatwaListMeta) _then) = _$FatwaListMetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sort_by') String? sortBy,@JsonKey(name: 'sort_order') String? sortOrder,@JsonKey(name: 'total_fatwas') int? totalFatwas
});




}
/// @nodoc
class _$FatwaListMetaCopyWithImpl<$Res>
    implements $FatwaListMetaCopyWith<$Res> {
  _$FatwaListMetaCopyWithImpl(this._self, this._then);

  final FatwaListMeta _self;
  final $Res Function(FatwaListMeta) _then;

/// Create a copy of FatwaListMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sortBy = freezed,Object? sortOrder = freezed,Object? totalFatwas = freezed,}) {
  return _then(_self.copyWith(
sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,totalFatwas: freezed == totalFatwas ? _self.totalFatwas : totalFatwas // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FatwaListMeta].
extension FatwaListMetaPatterns on FatwaListMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FatwaListMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FatwaListMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FatwaListMeta value)  $default,){
final _that = this;
switch (_that) {
case _FatwaListMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FatwaListMeta value)?  $default,){
final _that = this;
switch (_that) {
case _FatwaListMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sort_by')  String? sortBy, @JsonKey(name: 'sort_order')  String? sortOrder, @JsonKey(name: 'total_fatwas')  int? totalFatwas)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FatwaListMeta() when $default != null:
return $default(_that.sortBy,_that.sortOrder,_that.totalFatwas);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sort_by')  String? sortBy, @JsonKey(name: 'sort_order')  String? sortOrder, @JsonKey(name: 'total_fatwas')  int? totalFatwas)  $default,) {final _that = this;
switch (_that) {
case _FatwaListMeta():
return $default(_that.sortBy,_that.sortOrder,_that.totalFatwas);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sort_by')  String? sortBy, @JsonKey(name: 'sort_order')  String? sortOrder, @JsonKey(name: 'total_fatwas')  int? totalFatwas)?  $default,) {final _that = this;
switch (_that) {
case _FatwaListMeta() when $default != null:
return $default(_that.sortBy,_that.sortOrder,_that.totalFatwas);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FatwaListMeta implements FatwaListMeta {
  const _FatwaListMeta({@JsonKey(name: 'sort_by') this.sortBy, @JsonKey(name: 'sort_order') this.sortOrder, @JsonKey(name: 'total_fatwas') this.totalFatwas});
  factory _FatwaListMeta.fromJson(Map<String, dynamic> json) => _$FatwaListMetaFromJson(json);

@override@JsonKey(name: 'sort_by') final  String? sortBy;
@override@JsonKey(name: 'sort_order') final  String? sortOrder;
@override@JsonKey(name: 'total_fatwas') final  int? totalFatwas;

/// Create a copy of FatwaListMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FatwaListMetaCopyWith<_FatwaListMeta> get copyWith => __$FatwaListMetaCopyWithImpl<_FatwaListMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FatwaListMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FatwaListMeta&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.totalFatwas, totalFatwas) || other.totalFatwas == totalFatwas));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sortBy,sortOrder,totalFatwas);

@override
String toString() {
  return 'FatwaListMeta(sortBy: $sortBy, sortOrder: $sortOrder, totalFatwas: $totalFatwas)';
}


}

/// @nodoc
abstract mixin class _$FatwaListMetaCopyWith<$Res> implements $FatwaListMetaCopyWith<$Res> {
  factory _$FatwaListMetaCopyWith(_FatwaListMeta value, $Res Function(_FatwaListMeta) _then) = __$FatwaListMetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sort_by') String? sortBy,@JsonKey(name: 'sort_order') String? sortOrder,@JsonKey(name: 'total_fatwas') int? totalFatwas
});




}
/// @nodoc
class __$FatwaListMetaCopyWithImpl<$Res>
    implements _$FatwaListMetaCopyWith<$Res> {
  __$FatwaListMetaCopyWithImpl(this._self, this._then);

  final _FatwaListMeta _self;
  final $Res Function(_FatwaListMeta) _then;

/// Create a copy of FatwaListMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sortBy = freezed,Object? sortOrder = freezed,Object? totalFatwas = freezed,}) {
  return _then(_FatwaListMeta(
sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,totalFatwas: freezed == totalFatwas ? _self.totalFatwas : totalFatwas // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
