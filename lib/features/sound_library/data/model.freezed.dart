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
mixin _$HierarchicalSoundResponse {

 String get status; HierarchicalSoundData get data; HierarchicalPagination? get pagination;
/// Create a copy of HierarchicalSoundResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HierarchicalSoundResponseCopyWith<HierarchicalSoundResponse> get copyWith => _$HierarchicalSoundResponseCopyWithImpl<HierarchicalSoundResponse>(this as HierarchicalSoundResponse, _$identity);

  /// Serializes this HierarchicalSoundResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HierarchicalSoundResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,pagination);

@override
String toString() {
  return 'HierarchicalSoundResponse(status: $status, data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $HierarchicalSoundResponseCopyWith<$Res>  {
  factory $HierarchicalSoundResponseCopyWith(HierarchicalSoundResponse value, $Res Function(HierarchicalSoundResponse) _then) = _$HierarchicalSoundResponseCopyWithImpl;
@useResult
$Res call({
 String status, HierarchicalSoundData data, HierarchicalPagination? pagination
});


$HierarchicalSoundDataCopyWith<$Res> get data;$HierarchicalPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$HierarchicalSoundResponseCopyWithImpl<$Res>
    implements $HierarchicalSoundResponseCopyWith<$Res> {
  _$HierarchicalSoundResponseCopyWithImpl(this._self, this._then);

  final HierarchicalSoundResponse _self;
  final $Res Function(HierarchicalSoundResponse) _then;

/// Create a copy of HierarchicalSoundResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HierarchicalSoundData,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as HierarchicalPagination?,
  ));
}
/// Create a copy of HierarchicalSoundResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HierarchicalSoundDataCopyWith<$Res> get data {
  
  return $HierarchicalSoundDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of HierarchicalSoundResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HierarchicalPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $HierarchicalPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [HierarchicalSoundResponse].
extension HierarchicalSoundResponsePatterns on HierarchicalSoundResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HierarchicalSoundResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HierarchicalSoundResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HierarchicalSoundResponse value)  $default,){
final _that = this;
switch (_that) {
case _HierarchicalSoundResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HierarchicalSoundResponse value)?  $default,){
final _that = this;
switch (_that) {
case _HierarchicalSoundResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  HierarchicalSoundData data,  HierarchicalPagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HierarchicalSoundResponse() when $default != null:
return $default(_that.status,_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  HierarchicalSoundData data,  HierarchicalPagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _HierarchicalSoundResponse():
return $default(_that.status,_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  HierarchicalSoundData data,  HierarchicalPagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _HierarchicalSoundResponse() when $default != null:
return $default(_that.status,_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HierarchicalSoundResponse implements HierarchicalSoundResponse {
  const _HierarchicalSoundResponse({required this.status, required this.data, this.pagination});
  factory _HierarchicalSoundResponse.fromJson(Map<String, dynamic> json) => _$HierarchicalSoundResponseFromJson(json);

@override final  String status;
@override final  HierarchicalSoundData data;
@override final  HierarchicalPagination? pagination;

/// Create a copy of HierarchicalSoundResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HierarchicalSoundResponseCopyWith<_HierarchicalSoundResponse> get copyWith => __$HierarchicalSoundResponseCopyWithImpl<_HierarchicalSoundResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HierarchicalSoundResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HierarchicalSoundResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,pagination);

@override
String toString() {
  return 'HierarchicalSoundResponse(status: $status, data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$HierarchicalSoundResponseCopyWith<$Res> implements $HierarchicalSoundResponseCopyWith<$Res> {
  factory _$HierarchicalSoundResponseCopyWith(_HierarchicalSoundResponse value, $Res Function(_HierarchicalSoundResponse) _then) = __$HierarchicalSoundResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, HierarchicalSoundData data, HierarchicalPagination? pagination
});


@override $HierarchicalSoundDataCopyWith<$Res> get data;@override $HierarchicalPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$HierarchicalSoundResponseCopyWithImpl<$Res>
    implements _$HierarchicalSoundResponseCopyWith<$Res> {
  __$HierarchicalSoundResponseCopyWithImpl(this._self, this._then);

  final _HierarchicalSoundResponse _self;
  final $Res Function(_HierarchicalSoundResponse) _then;

/// Create a copy of HierarchicalSoundResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,Object? pagination = freezed,}) {
  return _then(_HierarchicalSoundResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HierarchicalSoundData,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as HierarchicalPagination?,
  ));
}

/// Create a copy of HierarchicalSoundResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HierarchicalSoundDataCopyWith<$Res> get data {
  
  return $HierarchicalSoundDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of HierarchicalSoundResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HierarchicalPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $HierarchicalPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$HierarchicalSoundData {

@JsonKey(name: 'level_1_root_categories') List<Level1RootCategory> get level1RootCategories;
/// Create a copy of HierarchicalSoundData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HierarchicalSoundDataCopyWith<HierarchicalSoundData> get copyWith => _$HierarchicalSoundDataCopyWithImpl<HierarchicalSoundData>(this as HierarchicalSoundData, _$identity);

  /// Serializes this HierarchicalSoundData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HierarchicalSoundData&&const DeepCollectionEquality().equals(other.level1RootCategories, level1RootCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(level1RootCategories));

@override
String toString() {
  return 'HierarchicalSoundData(level1RootCategories: $level1RootCategories)';
}


}

/// @nodoc
abstract mixin class $HierarchicalSoundDataCopyWith<$Res>  {
  factory $HierarchicalSoundDataCopyWith(HierarchicalSoundData value, $Res Function(HierarchicalSoundData) _then) = _$HierarchicalSoundDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'level_1_root_categories') List<Level1RootCategory> level1RootCategories
});




}
/// @nodoc
class _$HierarchicalSoundDataCopyWithImpl<$Res>
    implements $HierarchicalSoundDataCopyWith<$Res> {
  _$HierarchicalSoundDataCopyWithImpl(this._self, this._then);

  final HierarchicalSoundData _self;
  final $Res Function(HierarchicalSoundData) _then;

/// Create a copy of HierarchicalSoundData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? level1RootCategories = null,}) {
  return _then(_self.copyWith(
level1RootCategories: null == level1RootCategories ? _self.level1RootCategories : level1RootCategories // ignore: cast_nullable_to_non_nullable
as List<Level1RootCategory>,
  ));
}

}


/// Adds pattern-matching-related methods to [HierarchicalSoundData].
extension HierarchicalSoundDataPatterns on HierarchicalSoundData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HierarchicalSoundData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HierarchicalSoundData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HierarchicalSoundData value)  $default,){
final _that = this;
switch (_that) {
case _HierarchicalSoundData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HierarchicalSoundData value)?  $default,){
final _that = this;
switch (_that) {
case _HierarchicalSoundData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'level_1_root_categories')  List<Level1RootCategory> level1RootCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HierarchicalSoundData() when $default != null:
return $default(_that.level1RootCategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'level_1_root_categories')  List<Level1RootCategory> level1RootCategories)  $default,) {final _that = this;
switch (_that) {
case _HierarchicalSoundData():
return $default(_that.level1RootCategories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'level_1_root_categories')  List<Level1RootCategory> level1RootCategories)?  $default,) {final _that = this;
switch (_that) {
case _HierarchicalSoundData() when $default != null:
return $default(_that.level1RootCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HierarchicalSoundData implements HierarchicalSoundData {
  const _HierarchicalSoundData({@JsonKey(name: 'level_1_root_categories') required final  List<Level1RootCategory> level1RootCategories}): _level1RootCategories = level1RootCategories;
  factory _HierarchicalSoundData.fromJson(Map<String, dynamic> json) => _$HierarchicalSoundDataFromJson(json);

 final  List<Level1RootCategory> _level1RootCategories;
@override@JsonKey(name: 'level_1_root_categories') List<Level1RootCategory> get level1RootCategories {
  if (_level1RootCategories is EqualUnmodifiableListView) return _level1RootCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_level1RootCategories);
}


/// Create a copy of HierarchicalSoundData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HierarchicalSoundDataCopyWith<_HierarchicalSoundData> get copyWith => __$HierarchicalSoundDataCopyWithImpl<_HierarchicalSoundData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HierarchicalSoundDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HierarchicalSoundData&&const DeepCollectionEquality().equals(other._level1RootCategories, _level1RootCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_level1RootCategories));

@override
String toString() {
  return 'HierarchicalSoundData(level1RootCategories: $level1RootCategories)';
}


}

/// @nodoc
abstract mixin class _$HierarchicalSoundDataCopyWith<$Res> implements $HierarchicalSoundDataCopyWith<$Res> {
  factory _$HierarchicalSoundDataCopyWith(_HierarchicalSoundData value, $Res Function(_HierarchicalSoundData) _then) = __$HierarchicalSoundDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'level_1_root_categories') List<Level1RootCategory> level1RootCategories
});




}
/// @nodoc
class __$HierarchicalSoundDataCopyWithImpl<$Res>
    implements _$HierarchicalSoundDataCopyWith<$Res> {
  __$HierarchicalSoundDataCopyWithImpl(this._self, this._then);

  final _HierarchicalSoundData _self;
  final $Res Function(_HierarchicalSoundData) _then;

/// Create a copy of HierarchicalSoundData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? level1RootCategories = null,}) {
  return _then(_HierarchicalSoundData(
level1RootCategories: null == level1RootCategories ? _self._level1RootCategories : level1RootCategories // ignore: cast_nullable_to_non_nullable
as List<Level1RootCategory>,
  ));
}


}


/// @nodoc
mixin _$Level1RootCategory {

@JsonKey(name: 'cat_id') int get catId;@JsonKey(name: 'cat_father_id') int get catFatherId;@JsonKey(name: 'cat_title') String get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos')@IntStringConverter() String get catPos;@JsonKey(name: 'cat_active') bool get catActive;@JsonKey(name: 'direct_sounds_count')@IntStringConverter() String get directSoundsCount;@JsonKey(name: 'subtree_sounds_count') int? get subtreeSoundsCount;@JsonKey(name: 'direct_sounds') List<SoundData> get directSounds;@JsonKey(name: 'direct_sounds_pagination') PaginationData? get directSoundsPagination;@JsonKey(name: 'level_2_children') List<Level2Category> get level2Children;@JsonKey(name: 'level_2_children_pagination') PaginationData? get level2ChildrenPagination;
/// Create a copy of Level1RootCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Level1RootCategoryCopyWith<Level1RootCategory> get copyWith => _$Level1RootCategoryCopyWithImpl<Level1RootCategory>(this as Level1RootCategory, _$identity);

  /// Serializes this Level1RootCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Level1RootCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&(identical(other.directSoundsCount, directSoundsCount) || other.directSoundsCount == directSoundsCount)&&(identical(other.subtreeSoundsCount, subtreeSoundsCount) || other.subtreeSoundsCount == subtreeSoundsCount)&&const DeepCollectionEquality().equals(other.directSounds, directSounds)&&(identical(other.directSoundsPagination, directSoundsPagination) || other.directSoundsPagination == directSoundsPagination)&&const DeepCollectionEquality().equals(other.level2Children, level2Children)&&(identical(other.level2ChildrenPagination, level2ChildrenPagination) || other.level2ChildrenPagination == level2ChildrenPagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catTitle,catNote,catPic,catPos,catActive,directSoundsCount,subtreeSoundsCount,const DeepCollectionEquality().hash(directSounds),directSoundsPagination,const DeepCollectionEquality().hash(level2Children),level2ChildrenPagination);

@override
String toString() {
  return 'Level1RootCategory(catId: $catId, catFatherId: $catFatherId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catActive: $catActive, directSoundsCount: $directSoundsCount, subtreeSoundsCount: $subtreeSoundsCount, directSounds: $directSounds, directSoundsPagination: $directSoundsPagination, level2Children: $level2Children, level2ChildrenPagination: $level2ChildrenPagination)';
}


}

/// @nodoc
abstract mixin class $Level1RootCategoryCopyWith<$Res>  {
  factory $Level1RootCategoryCopyWith(Level1RootCategory value, $Res Function(Level1RootCategory) _then) = _$Level1RootCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id') int catId,@JsonKey(name: 'cat_father_id') int catFatherId,@JsonKey(name: 'cat_title') String catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos')@IntStringConverter() String catPos,@JsonKey(name: 'cat_active') bool catActive,@JsonKey(name: 'direct_sounds_count')@IntStringConverter() String directSoundsCount,@JsonKey(name: 'subtree_sounds_count') int? subtreeSoundsCount,@JsonKey(name: 'direct_sounds') List<SoundData> directSounds,@JsonKey(name: 'direct_sounds_pagination') PaginationData? directSoundsPagination,@JsonKey(name: 'level_2_children') List<Level2Category> level2Children,@JsonKey(name: 'level_2_children_pagination') PaginationData? level2ChildrenPagination
});


$PaginationDataCopyWith<$Res>? get directSoundsPagination;$PaginationDataCopyWith<$Res>? get level2ChildrenPagination;

}
/// @nodoc
class _$Level1RootCategoryCopyWithImpl<$Res>
    implements $Level1RootCategoryCopyWith<$Res> {
  _$Level1RootCategoryCopyWithImpl(this._self, this._then);

  final Level1RootCategory _self;
  final $Res Function(Level1RootCategory) _then;

/// Create a copy of Level1RootCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = null,Object? catFatherId = null,Object? catTitle = null,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = null,Object? catActive = null,Object? directSoundsCount = null,Object? subtreeSoundsCount = freezed,Object? directSounds = null,Object? directSoundsPagination = freezed,Object? level2Children = null,Object? level2ChildrenPagination = freezed,}) {
  return _then(_self.copyWith(
catId: null == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int,catFatherId: null == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as int,catTitle: null == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: null == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String,catActive: null == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as bool,directSoundsCount: null == directSoundsCount ? _self.directSoundsCount : directSoundsCount // ignore: cast_nullable_to_non_nullable
as String,subtreeSoundsCount: freezed == subtreeSoundsCount ? _self.subtreeSoundsCount : subtreeSoundsCount // ignore: cast_nullable_to_non_nullable
as int?,directSounds: null == directSounds ? _self.directSounds : directSounds // ignore: cast_nullable_to_non_nullable
as List<SoundData>,directSoundsPagination: freezed == directSoundsPagination ? _self.directSoundsPagination : directSoundsPagination // ignore: cast_nullable_to_non_nullable
as PaginationData?,level2Children: null == level2Children ? _self.level2Children : level2Children // ignore: cast_nullable_to_non_nullable
as List<Level2Category>,level2ChildrenPagination: freezed == level2ChildrenPagination ? _self.level2ChildrenPagination : level2ChildrenPagination // ignore: cast_nullable_to_non_nullable
as PaginationData?,
  ));
}
/// Create a copy of Level1RootCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res>? get directSoundsPagination {
    if (_self.directSoundsPagination == null) {
    return null;
  }

  return $PaginationDataCopyWith<$Res>(_self.directSoundsPagination!, (value) {
    return _then(_self.copyWith(directSoundsPagination: value));
  });
}/// Create a copy of Level1RootCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res>? get level2ChildrenPagination {
    if (_self.level2ChildrenPagination == null) {
    return null;
  }

  return $PaginationDataCopyWith<$Res>(_self.level2ChildrenPagination!, (value) {
    return _then(_self.copyWith(level2ChildrenPagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [Level1RootCategory].
extension Level1RootCategoryPatterns on Level1RootCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Level1RootCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Level1RootCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Level1RootCategory value)  $default,){
final _that = this;
switch (_that) {
case _Level1RootCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Level1RootCategory value)?  $default,){
final _that = this;
switch (_that) {
case _Level1RootCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')  int catFatherId, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')  bool catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter()  String directSoundsCount, @JsonKey(name: 'subtree_sounds_count')  int? subtreeSoundsCount, @JsonKey(name: 'direct_sounds')  List<SoundData> directSounds, @JsonKey(name: 'direct_sounds_pagination')  PaginationData? directSoundsPagination, @JsonKey(name: 'level_2_children')  List<Level2Category> level2Children, @JsonKey(name: 'level_2_children_pagination')  PaginationData? level2ChildrenPagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Level1RootCategory() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.directSoundsCount,_that.subtreeSoundsCount,_that.directSounds,_that.directSoundsPagination,_that.level2Children,_that.level2ChildrenPagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')  int catFatherId, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')  bool catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter()  String directSoundsCount, @JsonKey(name: 'subtree_sounds_count')  int? subtreeSoundsCount, @JsonKey(name: 'direct_sounds')  List<SoundData> directSounds, @JsonKey(name: 'direct_sounds_pagination')  PaginationData? directSoundsPagination, @JsonKey(name: 'level_2_children')  List<Level2Category> level2Children, @JsonKey(name: 'level_2_children_pagination')  PaginationData? level2ChildrenPagination)  $default,) {final _that = this;
switch (_that) {
case _Level1RootCategory():
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.directSoundsCount,_that.subtreeSoundsCount,_that.directSounds,_that.directSoundsPagination,_that.level2Children,_that.level2ChildrenPagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')  int catFatherId, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')  bool catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter()  String directSoundsCount, @JsonKey(name: 'subtree_sounds_count')  int? subtreeSoundsCount, @JsonKey(name: 'direct_sounds')  List<SoundData> directSounds, @JsonKey(name: 'direct_sounds_pagination')  PaginationData? directSoundsPagination, @JsonKey(name: 'level_2_children')  List<Level2Category> level2Children, @JsonKey(name: 'level_2_children_pagination')  PaginationData? level2ChildrenPagination)?  $default,) {final _that = this;
switch (_that) {
case _Level1RootCategory() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.directSoundsCount,_that.subtreeSoundsCount,_that.directSounds,_that.directSoundsPagination,_that.level2Children,_that.level2ChildrenPagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Level1RootCategory implements Level1RootCategory {
  const _Level1RootCategory({@JsonKey(name: 'cat_id') required this.catId, @JsonKey(name: 'cat_father_id') required this.catFatherId, @JsonKey(name: 'cat_title') required this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos')@IntStringConverter() required this.catPos, @JsonKey(name: 'cat_active') required this.catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter() required this.directSoundsCount, @JsonKey(name: 'subtree_sounds_count') this.subtreeSoundsCount, @JsonKey(name: 'direct_sounds') final  List<SoundData> directSounds = const [], @JsonKey(name: 'direct_sounds_pagination') this.directSoundsPagination, @JsonKey(name: 'level_2_children') final  List<Level2Category> level2Children = const [], @JsonKey(name: 'level_2_children_pagination') this.level2ChildrenPagination}): _directSounds = directSounds,_level2Children = level2Children;
  factory _Level1RootCategory.fromJson(Map<String, dynamic> json) => _$Level1RootCategoryFromJson(json);

@override@JsonKey(name: 'cat_id') final  int catId;
@override@JsonKey(name: 'cat_father_id') final  int catFatherId;
@override@JsonKey(name: 'cat_title') final  String catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_pos')@IntStringConverter() final  String catPos;
@override@JsonKey(name: 'cat_active') final  bool catActive;
@override@JsonKey(name: 'direct_sounds_count')@IntStringConverter() final  String directSoundsCount;
@override@JsonKey(name: 'subtree_sounds_count') final  int? subtreeSoundsCount;
 final  List<SoundData> _directSounds;
@override@JsonKey(name: 'direct_sounds') List<SoundData> get directSounds {
  if (_directSounds is EqualUnmodifiableListView) return _directSounds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_directSounds);
}

@override@JsonKey(name: 'direct_sounds_pagination') final  PaginationData? directSoundsPagination;
 final  List<Level2Category> _level2Children;
@override@JsonKey(name: 'level_2_children') List<Level2Category> get level2Children {
  if (_level2Children is EqualUnmodifiableListView) return _level2Children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_level2Children);
}

@override@JsonKey(name: 'level_2_children_pagination') final  PaginationData? level2ChildrenPagination;

/// Create a copy of Level1RootCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Level1RootCategoryCopyWith<_Level1RootCategory> get copyWith => __$Level1RootCategoryCopyWithImpl<_Level1RootCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Level1RootCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Level1RootCategory&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&(identical(other.directSoundsCount, directSoundsCount) || other.directSoundsCount == directSoundsCount)&&(identical(other.subtreeSoundsCount, subtreeSoundsCount) || other.subtreeSoundsCount == subtreeSoundsCount)&&const DeepCollectionEquality().equals(other._directSounds, _directSounds)&&(identical(other.directSoundsPagination, directSoundsPagination) || other.directSoundsPagination == directSoundsPagination)&&const DeepCollectionEquality().equals(other._level2Children, _level2Children)&&(identical(other.level2ChildrenPagination, level2ChildrenPagination) || other.level2ChildrenPagination == level2ChildrenPagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catTitle,catNote,catPic,catPos,catActive,directSoundsCount,subtreeSoundsCount,const DeepCollectionEquality().hash(_directSounds),directSoundsPagination,const DeepCollectionEquality().hash(_level2Children),level2ChildrenPagination);

@override
String toString() {
  return 'Level1RootCategory(catId: $catId, catFatherId: $catFatherId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catActive: $catActive, directSoundsCount: $directSoundsCount, subtreeSoundsCount: $subtreeSoundsCount, directSounds: $directSounds, directSoundsPagination: $directSoundsPagination, level2Children: $level2Children, level2ChildrenPagination: $level2ChildrenPagination)';
}


}

/// @nodoc
abstract mixin class _$Level1RootCategoryCopyWith<$Res> implements $Level1RootCategoryCopyWith<$Res> {
  factory _$Level1RootCategoryCopyWith(_Level1RootCategory value, $Res Function(_Level1RootCategory) _then) = __$Level1RootCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id') int catId,@JsonKey(name: 'cat_father_id') int catFatherId,@JsonKey(name: 'cat_title') String catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos')@IntStringConverter() String catPos,@JsonKey(name: 'cat_active') bool catActive,@JsonKey(name: 'direct_sounds_count')@IntStringConverter() String directSoundsCount,@JsonKey(name: 'subtree_sounds_count') int? subtreeSoundsCount,@JsonKey(name: 'direct_sounds') List<SoundData> directSounds,@JsonKey(name: 'direct_sounds_pagination') PaginationData? directSoundsPagination,@JsonKey(name: 'level_2_children') List<Level2Category> level2Children,@JsonKey(name: 'level_2_children_pagination') PaginationData? level2ChildrenPagination
});


@override $PaginationDataCopyWith<$Res>? get directSoundsPagination;@override $PaginationDataCopyWith<$Res>? get level2ChildrenPagination;

}
/// @nodoc
class __$Level1RootCategoryCopyWithImpl<$Res>
    implements _$Level1RootCategoryCopyWith<$Res> {
  __$Level1RootCategoryCopyWithImpl(this._self, this._then);

  final _Level1RootCategory _self;
  final $Res Function(_Level1RootCategory) _then;

/// Create a copy of Level1RootCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = null,Object? catFatherId = null,Object? catTitle = null,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = null,Object? catActive = null,Object? directSoundsCount = null,Object? subtreeSoundsCount = freezed,Object? directSounds = null,Object? directSoundsPagination = freezed,Object? level2Children = null,Object? level2ChildrenPagination = freezed,}) {
  return _then(_Level1RootCategory(
catId: null == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int,catFatherId: null == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as int,catTitle: null == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: null == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String,catActive: null == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as bool,directSoundsCount: null == directSoundsCount ? _self.directSoundsCount : directSoundsCount // ignore: cast_nullable_to_non_nullable
as String,subtreeSoundsCount: freezed == subtreeSoundsCount ? _self.subtreeSoundsCount : subtreeSoundsCount // ignore: cast_nullable_to_non_nullable
as int?,directSounds: null == directSounds ? _self._directSounds : directSounds // ignore: cast_nullable_to_non_nullable
as List<SoundData>,directSoundsPagination: freezed == directSoundsPagination ? _self.directSoundsPagination : directSoundsPagination // ignore: cast_nullable_to_non_nullable
as PaginationData?,level2Children: null == level2Children ? _self._level2Children : level2Children // ignore: cast_nullable_to_non_nullable
as List<Level2Category>,level2ChildrenPagination: freezed == level2ChildrenPagination ? _self.level2ChildrenPagination : level2ChildrenPagination // ignore: cast_nullable_to_non_nullable
as PaginationData?,
  ));
}

/// Create a copy of Level1RootCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res>? get directSoundsPagination {
    if (_self.directSoundsPagination == null) {
    return null;
  }

  return $PaginationDataCopyWith<$Res>(_self.directSoundsPagination!, (value) {
    return _then(_self.copyWith(directSoundsPagination: value));
  });
}/// Create a copy of Level1RootCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res>? get level2ChildrenPagination {
    if (_self.level2ChildrenPagination == null) {
    return null;
  }

  return $PaginationDataCopyWith<$Res>(_self.level2ChildrenPagination!, (value) {
    return _then(_self.copyWith(level2ChildrenPagination: value));
  });
}
}


/// @nodoc
mixin _$Level2Category {

@JsonKey(name: 'cat_id') int get catId;@JsonKey(name: 'cat_father_id') int get catFatherId;@JsonKey(name: 'cat_title') String get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos')@IntStringConverter() String get catPos;@JsonKey(name: 'cat_active') bool get catActive;@JsonKey(name: 'direct_sounds_count')@IntStringConverter() String get directSoundsCount;@JsonKey(name: 'subtree_sounds_count') int? get subtreeSoundsCount;@JsonKey(name: 'direct_sounds') List<SoundData> get directSounds;@JsonKey(name: 'direct_sounds_pagination') PaginationData? get directSoundsPagination;@JsonKey(name: 'level_3_grandchildren') List<Level3Category> get level3Grandchildren;@JsonKey(name: 'level_3_grandchildren_pagination') PaginationData? get level3GrandchildrenPagination;
/// Create a copy of Level2Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Level2CategoryCopyWith<Level2Category> get copyWith => _$Level2CategoryCopyWithImpl<Level2Category>(this as Level2Category, _$identity);

  /// Serializes this Level2Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Level2Category&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&(identical(other.directSoundsCount, directSoundsCount) || other.directSoundsCount == directSoundsCount)&&(identical(other.subtreeSoundsCount, subtreeSoundsCount) || other.subtreeSoundsCount == subtreeSoundsCount)&&const DeepCollectionEquality().equals(other.directSounds, directSounds)&&(identical(other.directSoundsPagination, directSoundsPagination) || other.directSoundsPagination == directSoundsPagination)&&const DeepCollectionEquality().equals(other.level3Grandchildren, level3Grandchildren)&&(identical(other.level3GrandchildrenPagination, level3GrandchildrenPagination) || other.level3GrandchildrenPagination == level3GrandchildrenPagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catTitle,catNote,catPic,catPos,catActive,directSoundsCount,subtreeSoundsCount,const DeepCollectionEquality().hash(directSounds),directSoundsPagination,const DeepCollectionEquality().hash(level3Grandchildren),level3GrandchildrenPagination);

@override
String toString() {
  return 'Level2Category(catId: $catId, catFatherId: $catFatherId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catActive: $catActive, directSoundsCount: $directSoundsCount, subtreeSoundsCount: $subtreeSoundsCount, directSounds: $directSounds, directSoundsPagination: $directSoundsPagination, level3Grandchildren: $level3Grandchildren, level3GrandchildrenPagination: $level3GrandchildrenPagination)';
}


}

/// @nodoc
abstract mixin class $Level2CategoryCopyWith<$Res>  {
  factory $Level2CategoryCopyWith(Level2Category value, $Res Function(Level2Category) _then) = _$Level2CategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id') int catId,@JsonKey(name: 'cat_father_id') int catFatherId,@JsonKey(name: 'cat_title') String catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos')@IntStringConverter() String catPos,@JsonKey(name: 'cat_active') bool catActive,@JsonKey(name: 'direct_sounds_count')@IntStringConverter() String directSoundsCount,@JsonKey(name: 'subtree_sounds_count') int? subtreeSoundsCount,@JsonKey(name: 'direct_sounds') List<SoundData> directSounds,@JsonKey(name: 'direct_sounds_pagination') PaginationData? directSoundsPagination,@JsonKey(name: 'level_3_grandchildren') List<Level3Category> level3Grandchildren,@JsonKey(name: 'level_3_grandchildren_pagination') PaginationData? level3GrandchildrenPagination
});


$PaginationDataCopyWith<$Res>? get directSoundsPagination;$PaginationDataCopyWith<$Res>? get level3GrandchildrenPagination;

}
/// @nodoc
class _$Level2CategoryCopyWithImpl<$Res>
    implements $Level2CategoryCopyWith<$Res> {
  _$Level2CategoryCopyWithImpl(this._self, this._then);

  final Level2Category _self;
  final $Res Function(Level2Category) _then;

/// Create a copy of Level2Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = null,Object? catFatherId = null,Object? catTitle = null,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = null,Object? catActive = null,Object? directSoundsCount = null,Object? subtreeSoundsCount = freezed,Object? directSounds = null,Object? directSoundsPagination = freezed,Object? level3Grandchildren = null,Object? level3GrandchildrenPagination = freezed,}) {
  return _then(_self.copyWith(
catId: null == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int,catFatherId: null == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as int,catTitle: null == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: null == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String,catActive: null == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as bool,directSoundsCount: null == directSoundsCount ? _self.directSoundsCount : directSoundsCount // ignore: cast_nullable_to_non_nullable
as String,subtreeSoundsCount: freezed == subtreeSoundsCount ? _self.subtreeSoundsCount : subtreeSoundsCount // ignore: cast_nullable_to_non_nullable
as int?,directSounds: null == directSounds ? _self.directSounds : directSounds // ignore: cast_nullable_to_non_nullable
as List<SoundData>,directSoundsPagination: freezed == directSoundsPagination ? _self.directSoundsPagination : directSoundsPagination // ignore: cast_nullable_to_non_nullable
as PaginationData?,level3Grandchildren: null == level3Grandchildren ? _self.level3Grandchildren : level3Grandchildren // ignore: cast_nullable_to_non_nullable
as List<Level3Category>,level3GrandchildrenPagination: freezed == level3GrandchildrenPagination ? _self.level3GrandchildrenPagination : level3GrandchildrenPagination // ignore: cast_nullable_to_non_nullable
as PaginationData?,
  ));
}
/// Create a copy of Level2Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res>? get directSoundsPagination {
    if (_self.directSoundsPagination == null) {
    return null;
  }

  return $PaginationDataCopyWith<$Res>(_self.directSoundsPagination!, (value) {
    return _then(_self.copyWith(directSoundsPagination: value));
  });
}/// Create a copy of Level2Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res>? get level3GrandchildrenPagination {
    if (_self.level3GrandchildrenPagination == null) {
    return null;
  }

  return $PaginationDataCopyWith<$Res>(_self.level3GrandchildrenPagination!, (value) {
    return _then(_self.copyWith(level3GrandchildrenPagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [Level2Category].
extension Level2CategoryPatterns on Level2Category {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Level2Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Level2Category() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Level2Category value)  $default,){
final _that = this;
switch (_that) {
case _Level2Category():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Level2Category value)?  $default,){
final _that = this;
switch (_that) {
case _Level2Category() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')  int catFatherId, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')  bool catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter()  String directSoundsCount, @JsonKey(name: 'subtree_sounds_count')  int? subtreeSoundsCount, @JsonKey(name: 'direct_sounds')  List<SoundData> directSounds, @JsonKey(name: 'direct_sounds_pagination')  PaginationData? directSoundsPagination, @JsonKey(name: 'level_3_grandchildren')  List<Level3Category> level3Grandchildren, @JsonKey(name: 'level_3_grandchildren_pagination')  PaginationData? level3GrandchildrenPagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Level2Category() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.directSoundsCount,_that.subtreeSoundsCount,_that.directSounds,_that.directSoundsPagination,_that.level3Grandchildren,_that.level3GrandchildrenPagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')  int catFatherId, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')  bool catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter()  String directSoundsCount, @JsonKey(name: 'subtree_sounds_count')  int? subtreeSoundsCount, @JsonKey(name: 'direct_sounds')  List<SoundData> directSounds, @JsonKey(name: 'direct_sounds_pagination')  PaginationData? directSoundsPagination, @JsonKey(name: 'level_3_grandchildren')  List<Level3Category> level3Grandchildren, @JsonKey(name: 'level_3_grandchildren_pagination')  PaginationData? level3GrandchildrenPagination)  $default,) {final _that = this;
switch (_that) {
case _Level2Category():
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.directSoundsCount,_that.subtreeSoundsCount,_that.directSounds,_that.directSoundsPagination,_that.level3Grandchildren,_that.level3GrandchildrenPagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')  int catFatherId, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')  bool catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter()  String directSoundsCount, @JsonKey(name: 'subtree_sounds_count')  int? subtreeSoundsCount, @JsonKey(name: 'direct_sounds')  List<SoundData> directSounds, @JsonKey(name: 'direct_sounds_pagination')  PaginationData? directSoundsPagination, @JsonKey(name: 'level_3_grandchildren')  List<Level3Category> level3Grandchildren, @JsonKey(name: 'level_3_grandchildren_pagination')  PaginationData? level3GrandchildrenPagination)?  $default,) {final _that = this;
switch (_that) {
case _Level2Category() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.directSoundsCount,_that.subtreeSoundsCount,_that.directSounds,_that.directSoundsPagination,_that.level3Grandchildren,_that.level3GrandchildrenPagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Level2Category implements Level2Category {
  const _Level2Category({@JsonKey(name: 'cat_id') required this.catId, @JsonKey(name: 'cat_father_id') required this.catFatherId, @JsonKey(name: 'cat_title') required this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos')@IntStringConverter() required this.catPos, @JsonKey(name: 'cat_active') required this.catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter() required this.directSoundsCount, @JsonKey(name: 'subtree_sounds_count') this.subtreeSoundsCount, @JsonKey(name: 'direct_sounds') final  List<SoundData> directSounds = const [], @JsonKey(name: 'direct_sounds_pagination') this.directSoundsPagination, @JsonKey(name: 'level_3_grandchildren') final  List<Level3Category> level3Grandchildren = const [], @JsonKey(name: 'level_3_grandchildren_pagination') this.level3GrandchildrenPagination}): _directSounds = directSounds,_level3Grandchildren = level3Grandchildren;
  factory _Level2Category.fromJson(Map<String, dynamic> json) => _$Level2CategoryFromJson(json);

@override@JsonKey(name: 'cat_id') final  int catId;
@override@JsonKey(name: 'cat_father_id') final  int catFatherId;
@override@JsonKey(name: 'cat_title') final  String catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_pos')@IntStringConverter() final  String catPos;
@override@JsonKey(name: 'cat_active') final  bool catActive;
@override@JsonKey(name: 'direct_sounds_count')@IntStringConverter() final  String directSoundsCount;
@override@JsonKey(name: 'subtree_sounds_count') final  int? subtreeSoundsCount;
 final  List<SoundData> _directSounds;
@override@JsonKey(name: 'direct_sounds') List<SoundData> get directSounds {
  if (_directSounds is EqualUnmodifiableListView) return _directSounds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_directSounds);
}

@override@JsonKey(name: 'direct_sounds_pagination') final  PaginationData? directSoundsPagination;
 final  List<Level3Category> _level3Grandchildren;
@override@JsonKey(name: 'level_3_grandchildren') List<Level3Category> get level3Grandchildren {
  if (_level3Grandchildren is EqualUnmodifiableListView) return _level3Grandchildren;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_level3Grandchildren);
}

@override@JsonKey(name: 'level_3_grandchildren_pagination') final  PaginationData? level3GrandchildrenPagination;

/// Create a copy of Level2Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Level2CategoryCopyWith<_Level2Category> get copyWith => __$Level2CategoryCopyWithImpl<_Level2Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Level2CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Level2Category&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&(identical(other.directSoundsCount, directSoundsCount) || other.directSoundsCount == directSoundsCount)&&(identical(other.subtreeSoundsCount, subtreeSoundsCount) || other.subtreeSoundsCount == subtreeSoundsCount)&&const DeepCollectionEquality().equals(other._directSounds, _directSounds)&&(identical(other.directSoundsPagination, directSoundsPagination) || other.directSoundsPagination == directSoundsPagination)&&const DeepCollectionEquality().equals(other._level3Grandchildren, _level3Grandchildren)&&(identical(other.level3GrandchildrenPagination, level3GrandchildrenPagination) || other.level3GrandchildrenPagination == level3GrandchildrenPagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catTitle,catNote,catPic,catPos,catActive,directSoundsCount,subtreeSoundsCount,const DeepCollectionEquality().hash(_directSounds),directSoundsPagination,const DeepCollectionEquality().hash(_level3Grandchildren),level3GrandchildrenPagination);

@override
String toString() {
  return 'Level2Category(catId: $catId, catFatherId: $catFatherId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catActive: $catActive, directSoundsCount: $directSoundsCount, subtreeSoundsCount: $subtreeSoundsCount, directSounds: $directSounds, directSoundsPagination: $directSoundsPagination, level3Grandchildren: $level3Grandchildren, level3GrandchildrenPagination: $level3GrandchildrenPagination)';
}


}

/// @nodoc
abstract mixin class _$Level2CategoryCopyWith<$Res> implements $Level2CategoryCopyWith<$Res> {
  factory _$Level2CategoryCopyWith(_Level2Category value, $Res Function(_Level2Category) _then) = __$Level2CategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id') int catId,@JsonKey(name: 'cat_father_id') int catFatherId,@JsonKey(name: 'cat_title') String catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos')@IntStringConverter() String catPos,@JsonKey(name: 'cat_active') bool catActive,@JsonKey(name: 'direct_sounds_count')@IntStringConverter() String directSoundsCount,@JsonKey(name: 'subtree_sounds_count') int? subtreeSoundsCount,@JsonKey(name: 'direct_sounds') List<SoundData> directSounds,@JsonKey(name: 'direct_sounds_pagination') PaginationData? directSoundsPagination,@JsonKey(name: 'level_3_grandchildren') List<Level3Category> level3Grandchildren,@JsonKey(name: 'level_3_grandchildren_pagination') PaginationData? level3GrandchildrenPagination
});


@override $PaginationDataCopyWith<$Res>? get directSoundsPagination;@override $PaginationDataCopyWith<$Res>? get level3GrandchildrenPagination;

}
/// @nodoc
class __$Level2CategoryCopyWithImpl<$Res>
    implements _$Level2CategoryCopyWith<$Res> {
  __$Level2CategoryCopyWithImpl(this._self, this._then);

  final _Level2Category _self;
  final $Res Function(_Level2Category) _then;

/// Create a copy of Level2Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = null,Object? catFatherId = null,Object? catTitle = null,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = null,Object? catActive = null,Object? directSoundsCount = null,Object? subtreeSoundsCount = freezed,Object? directSounds = null,Object? directSoundsPagination = freezed,Object? level3Grandchildren = null,Object? level3GrandchildrenPagination = freezed,}) {
  return _then(_Level2Category(
catId: null == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int,catFatherId: null == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as int,catTitle: null == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: null == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String,catActive: null == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as bool,directSoundsCount: null == directSoundsCount ? _self.directSoundsCount : directSoundsCount // ignore: cast_nullable_to_non_nullable
as String,subtreeSoundsCount: freezed == subtreeSoundsCount ? _self.subtreeSoundsCount : subtreeSoundsCount // ignore: cast_nullable_to_non_nullable
as int?,directSounds: null == directSounds ? _self._directSounds : directSounds // ignore: cast_nullable_to_non_nullable
as List<SoundData>,directSoundsPagination: freezed == directSoundsPagination ? _self.directSoundsPagination : directSoundsPagination // ignore: cast_nullable_to_non_nullable
as PaginationData?,level3Grandchildren: null == level3Grandchildren ? _self._level3Grandchildren : level3Grandchildren // ignore: cast_nullable_to_non_nullable
as List<Level3Category>,level3GrandchildrenPagination: freezed == level3GrandchildrenPagination ? _self.level3GrandchildrenPagination : level3GrandchildrenPagination // ignore: cast_nullable_to_non_nullable
as PaginationData?,
  ));
}

/// Create a copy of Level2Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res>? get directSoundsPagination {
    if (_self.directSoundsPagination == null) {
    return null;
  }

  return $PaginationDataCopyWith<$Res>(_self.directSoundsPagination!, (value) {
    return _then(_self.copyWith(directSoundsPagination: value));
  });
}/// Create a copy of Level2Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res>? get level3GrandchildrenPagination {
    if (_self.level3GrandchildrenPagination == null) {
    return null;
  }

  return $PaginationDataCopyWith<$Res>(_self.level3GrandchildrenPagination!, (value) {
    return _then(_self.copyWith(level3GrandchildrenPagination: value));
  });
}
}


/// @nodoc
mixin _$Level3Category {

@JsonKey(name: 'cat_id') int get catId;@JsonKey(name: 'cat_father_id') int get catFatherId;@JsonKey(name: 'cat_title') String get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos')@IntStringConverter() String get catPos;@JsonKey(name: 'cat_active') bool get catActive;@JsonKey(name: 'direct_sounds_count')@IntStringConverter() String get directSoundsCount;@JsonKey(name: 'subtree_sounds_count') int? get subtreeSoundsCount;@JsonKey(name: 'direct_sounds') List<SoundData> get directSounds;@JsonKey(name: 'direct_sounds_pagination') PaginationData? get directSoundsPagination;@JsonKey(name: 'level_4_great_grandchildren') List<Level4Category> get level4GreatGrandchildren;
/// Create a copy of Level3Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Level3CategoryCopyWith<Level3Category> get copyWith => _$Level3CategoryCopyWithImpl<Level3Category>(this as Level3Category, _$identity);

  /// Serializes this Level3Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Level3Category&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&(identical(other.directSoundsCount, directSoundsCount) || other.directSoundsCount == directSoundsCount)&&(identical(other.subtreeSoundsCount, subtreeSoundsCount) || other.subtreeSoundsCount == subtreeSoundsCount)&&const DeepCollectionEquality().equals(other.directSounds, directSounds)&&(identical(other.directSoundsPagination, directSoundsPagination) || other.directSoundsPagination == directSoundsPagination)&&const DeepCollectionEquality().equals(other.level4GreatGrandchildren, level4GreatGrandchildren));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catTitle,catNote,catPic,catPos,catActive,directSoundsCount,subtreeSoundsCount,const DeepCollectionEquality().hash(directSounds),directSoundsPagination,const DeepCollectionEquality().hash(level4GreatGrandchildren));

@override
String toString() {
  return 'Level3Category(catId: $catId, catFatherId: $catFatherId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catActive: $catActive, directSoundsCount: $directSoundsCount, subtreeSoundsCount: $subtreeSoundsCount, directSounds: $directSounds, directSoundsPagination: $directSoundsPagination, level4GreatGrandchildren: $level4GreatGrandchildren)';
}


}

/// @nodoc
abstract mixin class $Level3CategoryCopyWith<$Res>  {
  factory $Level3CategoryCopyWith(Level3Category value, $Res Function(Level3Category) _then) = _$Level3CategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id') int catId,@JsonKey(name: 'cat_father_id') int catFatherId,@JsonKey(name: 'cat_title') String catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos')@IntStringConverter() String catPos,@JsonKey(name: 'cat_active') bool catActive,@JsonKey(name: 'direct_sounds_count')@IntStringConverter() String directSoundsCount,@JsonKey(name: 'subtree_sounds_count') int? subtreeSoundsCount,@JsonKey(name: 'direct_sounds') List<SoundData> directSounds,@JsonKey(name: 'direct_sounds_pagination') PaginationData? directSoundsPagination,@JsonKey(name: 'level_4_great_grandchildren') List<Level4Category> level4GreatGrandchildren
});


$PaginationDataCopyWith<$Res>? get directSoundsPagination;

}
/// @nodoc
class _$Level3CategoryCopyWithImpl<$Res>
    implements $Level3CategoryCopyWith<$Res> {
  _$Level3CategoryCopyWithImpl(this._self, this._then);

  final Level3Category _self;
  final $Res Function(Level3Category) _then;

/// Create a copy of Level3Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = null,Object? catFatherId = null,Object? catTitle = null,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = null,Object? catActive = null,Object? directSoundsCount = null,Object? subtreeSoundsCount = freezed,Object? directSounds = null,Object? directSoundsPagination = freezed,Object? level4GreatGrandchildren = null,}) {
  return _then(_self.copyWith(
catId: null == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int,catFatherId: null == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as int,catTitle: null == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: null == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String,catActive: null == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as bool,directSoundsCount: null == directSoundsCount ? _self.directSoundsCount : directSoundsCount // ignore: cast_nullable_to_non_nullable
as String,subtreeSoundsCount: freezed == subtreeSoundsCount ? _self.subtreeSoundsCount : subtreeSoundsCount // ignore: cast_nullable_to_non_nullable
as int?,directSounds: null == directSounds ? _self.directSounds : directSounds // ignore: cast_nullable_to_non_nullable
as List<SoundData>,directSoundsPagination: freezed == directSoundsPagination ? _self.directSoundsPagination : directSoundsPagination // ignore: cast_nullable_to_non_nullable
as PaginationData?,level4GreatGrandchildren: null == level4GreatGrandchildren ? _self.level4GreatGrandchildren : level4GreatGrandchildren // ignore: cast_nullable_to_non_nullable
as List<Level4Category>,
  ));
}
/// Create a copy of Level3Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res>? get directSoundsPagination {
    if (_self.directSoundsPagination == null) {
    return null;
  }

  return $PaginationDataCopyWith<$Res>(_self.directSoundsPagination!, (value) {
    return _then(_self.copyWith(directSoundsPagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [Level3Category].
extension Level3CategoryPatterns on Level3Category {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Level3Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Level3Category() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Level3Category value)  $default,){
final _that = this;
switch (_that) {
case _Level3Category():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Level3Category value)?  $default,){
final _that = this;
switch (_that) {
case _Level3Category() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')  int catFatherId, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')  bool catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter()  String directSoundsCount, @JsonKey(name: 'subtree_sounds_count')  int? subtreeSoundsCount, @JsonKey(name: 'direct_sounds')  List<SoundData> directSounds, @JsonKey(name: 'direct_sounds_pagination')  PaginationData? directSoundsPagination, @JsonKey(name: 'level_4_great_grandchildren')  List<Level4Category> level4GreatGrandchildren)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Level3Category() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.directSoundsCount,_that.subtreeSoundsCount,_that.directSounds,_that.directSoundsPagination,_that.level4GreatGrandchildren);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')  int catFatherId, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')  bool catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter()  String directSoundsCount, @JsonKey(name: 'subtree_sounds_count')  int? subtreeSoundsCount, @JsonKey(name: 'direct_sounds')  List<SoundData> directSounds, @JsonKey(name: 'direct_sounds_pagination')  PaginationData? directSoundsPagination, @JsonKey(name: 'level_4_great_grandchildren')  List<Level4Category> level4GreatGrandchildren)  $default,) {final _that = this;
switch (_that) {
case _Level3Category():
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.directSoundsCount,_that.subtreeSoundsCount,_that.directSounds,_that.directSoundsPagination,_that.level4GreatGrandchildren);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')  int catFatherId, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')  bool catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter()  String directSoundsCount, @JsonKey(name: 'subtree_sounds_count')  int? subtreeSoundsCount, @JsonKey(name: 'direct_sounds')  List<SoundData> directSounds, @JsonKey(name: 'direct_sounds_pagination')  PaginationData? directSoundsPagination, @JsonKey(name: 'level_4_great_grandchildren')  List<Level4Category> level4GreatGrandchildren)?  $default,) {final _that = this;
switch (_that) {
case _Level3Category() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.directSoundsCount,_that.subtreeSoundsCount,_that.directSounds,_that.directSoundsPagination,_that.level4GreatGrandchildren);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Level3Category implements Level3Category {
  const _Level3Category({@JsonKey(name: 'cat_id') required this.catId, @JsonKey(name: 'cat_father_id') required this.catFatherId, @JsonKey(name: 'cat_title') required this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos')@IntStringConverter() required this.catPos, @JsonKey(name: 'cat_active') required this.catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter() required this.directSoundsCount, @JsonKey(name: 'subtree_sounds_count') this.subtreeSoundsCount, @JsonKey(name: 'direct_sounds') final  List<SoundData> directSounds = const [], @JsonKey(name: 'direct_sounds_pagination') this.directSoundsPagination, @JsonKey(name: 'level_4_great_grandchildren') final  List<Level4Category> level4GreatGrandchildren = const []}): _directSounds = directSounds,_level4GreatGrandchildren = level4GreatGrandchildren;
  factory _Level3Category.fromJson(Map<String, dynamic> json) => _$Level3CategoryFromJson(json);

@override@JsonKey(name: 'cat_id') final  int catId;
@override@JsonKey(name: 'cat_father_id') final  int catFatherId;
@override@JsonKey(name: 'cat_title') final  String catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_pos')@IntStringConverter() final  String catPos;
@override@JsonKey(name: 'cat_active') final  bool catActive;
@override@JsonKey(name: 'direct_sounds_count')@IntStringConverter() final  String directSoundsCount;
@override@JsonKey(name: 'subtree_sounds_count') final  int? subtreeSoundsCount;
 final  List<SoundData> _directSounds;
@override@JsonKey(name: 'direct_sounds') List<SoundData> get directSounds {
  if (_directSounds is EqualUnmodifiableListView) return _directSounds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_directSounds);
}

@override@JsonKey(name: 'direct_sounds_pagination') final  PaginationData? directSoundsPagination;
 final  List<Level4Category> _level4GreatGrandchildren;
@override@JsonKey(name: 'level_4_great_grandchildren') List<Level4Category> get level4GreatGrandchildren {
  if (_level4GreatGrandchildren is EqualUnmodifiableListView) return _level4GreatGrandchildren;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_level4GreatGrandchildren);
}


/// Create a copy of Level3Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Level3CategoryCopyWith<_Level3Category> get copyWith => __$Level3CategoryCopyWithImpl<_Level3Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Level3CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Level3Category&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&(identical(other.directSoundsCount, directSoundsCount) || other.directSoundsCount == directSoundsCount)&&(identical(other.subtreeSoundsCount, subtreeSoundsCount) || other.subtreeSoundsCount == subtreeSoundsCount)&&const DeepCollectionEquality().equals(other._directSounds, _directSounds)&&(identical(other.directSoundsPagination, directSoundsPagination) || other.directSoundsPagination == directSoundsPagination)&&const DeepCollectionEquality().equals(other._level4GreatGrandchildren, _level4GreatGrandchildren));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catTitle,catNote,catPic,catPos,catActive,directSoundsCount,subtreeSoundsCount,const DeepCollectionEquality().hash(_directSounds),directSoundsPagination,const DeepCollectionEquality().hash(_level4GreatGrandchildren));

@override
String toString() {
  return 'Level3Category(catId: $catId, catFatherId: $catFatherId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catActive: $catActive, directSoundsCount: $directSoundsCount, subtreeSoundsCount: $subtreeSoundsCount, directSounds: $directSounds, directSoundsPagination: $directSoundsPagination, level4GreatGrandchildren: $level4GreatGrandchildren)';
}


}

/// @nodoc
abstract mixin class _$Level3CategoryCopyWith<$Res> implements $Level3CategoryCopyWith<$Res> {
  factory _$Level3CategoryCopyWith(_Level3Category value, $Res Function(_Level3Category) _then) = __$Level3CategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id') int catId,@JsonKey(name: 'cat_father_id') int catFatherId,@JsonKey(name: 'cat_title') String catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos')@IntStringConverter() String catPos,@JsonKey(name: 'cat_active') bool catActive,@JsonKey(name: 'direct_sounds_count')@IntStringConverter() String directSoundsCount,@JsonKey(name: 'subtree_sounds_count') int? subtreeSoundsCount,@JsonKey(name: 'direct_sounds') List<SoundData> directSounds,@JsonKey(name: 'direct_sounds_pagination') PaginationData? directSoundsPagination,@JsonKey(name: 'level_4_great_grandchildren') List<Level4Category> level4GreatGrandchildren
});


@override $PaginationDataCopyWith<$Res>? get directSoundsPagination;

}
/// @nodoc
class __$Level3CategoryCopyWithImpl<$Res>
    implements _$Level3CategoryCopyWith<$Res> {
  __$Level3CategoryCopyWithImpl(this._self, this._then);

  final _Level3Category _self;
  final $Res Function(_Level3Category) _then;

/// Create a copy of Level3Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = null,Object? catFatherId = null,Object? catTitle = null,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = null,Object? catActive = null,Object? directSoundsCount = null,Object? subtreeSoundsCount = freezed,Object? directSounds = null,Object? directSoundsPagination = freezed,Object? level4GreatGrandchildren = null,}) {
  return _then(_Level3Category(
catId: null == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int,catFatherId: null == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as int,catTitle: null == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: null == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String,catActive: null == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as bool,directSoundsCount: null == directSoundsCount ? _self.directSoundsCount : directSoundsCount // ignore: cast_nullable_to_non_nullable
as String,subtreeSoundsCount: freezed == subtreeSoundsCount ? _self.subtreeSoundsCount : subtreeSoundsCount // ignore: cast_nullable_to_non_nullable
as int?,directSounds: null == directSounds ? _self._directSounds : directSounds // ignore: cast_nullable_to_non_nullable
as List<SoundData>,directSoundsPagination: freezed == directSoundsPagination ? _self.directSoundsPagination : directSoundsPagination // ignore: cast_nullable_to_non_nullable
as PaginationData?,level4GreatGrandchildren: null == level4GreatGrandchildren ? _self._level4GreatGrandchildren : level4GreatGrandchildren // ignore: cast_nullable_to_non_nullable
as List<Level4Category>,
  ));
}

/// Create a copy of Level3Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res>? get directSoundsPagination {
    if (_self.directSoundsPagination == null) {
    return null;
  }

  return $PaginationDataCopyWith<$Res>(_self.directSoundsPagination!, (value) {
    return _then(_self.copyWith(directSoundsPagination: value));
  });
}
}


/// @nodoc
mixin _$Level4Category {

@JsonKey(name: 'cat_id') int get catId;@JsonKey(name: 'cat_father_id') int get catFatherId;@JsonKey(name: 'cat_title') String get catTitle;@JsonKey(name: 'cat_note') String? get catNote;@JsonKey(name: 'cat_pic') String? get catPic;@JsonKey(name: 'cat_pos')@IntStringConverter() String get catPos;@JsonKey(name: 'cat_active') bool get catActive;@JsonKey(name: 'direct_sounds_count')@IntStringConverter() String get directSoundsCount;@JsonKey(name: 'subtree_sounds_count') int? get subtreeSoundsCount;@JsonKey(name: 'direct_sounds') List<SoundData> get directSounds;@JsonKey(name: 'direct_sounds_pagination') PaginationData? get directSoundsPagination;
/// Create a copy of Level4Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Level4CategoryCopyWith<Level4Category> get copyWith => _$Level4CategoryCopyWithImpl<Level4Category>(this as Level4Category, _$identity);

  /// Serializes this Level4Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Level4Category&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&(identical(other.directSoundsCount, directSoundsCount) || other.directSoundsCount == directSoundsCount)&&(identical(other.subtreeSoundsCount, subtreeSoundsCount) || other.subtreeSoundsCount == subtreeSoundsCount)&&const DeepCollectionEquality().equals(other.directSounds, directSounds)&&(identical(other.directSoundsPagination, directSoundsPagination) || other.directSoundsPagination == directSoundsPagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catTitle,catNote,catPic,catPos,catActive,directSoundsCount,subtreeSoundsCount,const DeepCollectionEquality().hash(directSounds),directSoundsPagination);

@override
String toString() {
  return 'Level4Category(catId: $catId, catFatherId: $catFatherId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catActive: $catActive, directSoundsCount: $directSoundsCount, subtreeSoundsCount: $subtreeSoundsCount, directSounds: $directSounds, directSoundsPagination: $directSoundsPagination)';
}


}

/// @nodoc
abstract mixin class $Level4CategoryCopyWith<$Res>  {
  factory $Level4CategoryCopyWith(Level4Category value, $Res Function(Level4Category) _then) = _$Level4CategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id') int catId,@JsonKey(name: 'cat_father_id') int catFatherId,@JsonKey(name: 'cat_title') String catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos')@IntStringConverter() String catPos,@JsonKey(name: 'cat_active') bool catActive,@JsonKey(name: 'direct_sounds_count')@IntStringConverter() String directSoundsCount,@JsonKey(name: 'subtree_sounds_count') int? subtreeSoundsCount,@JsonKey(name: 'direct_sounds') List<SoundData> directSounds,@JsonKey(name: 'direct_sounds_pagination') PaginationData? directSoundsPagination
});


$PaginationDataCopyWith<$Res>? get directSoundsPagination;

}
/// @nodoc
class _$Level4CategoryCopyWithImpl<$Res>
    implements $Level4CategoryCopyWith<$Res> {
  _$Level4CategoryCopyWithImpl(this._self, this._then);

  final Level4Category _self;
  final $Res Function(Level4Category) _then;

/// Create a copy of Level4Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = null,Object? catFatherId = null,Object? catTitle = null,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = null,Object? catActive = null,Object? directSoundsCount = null,Object? subtreeSoundsCount = freezed,Object? directSounds = null,Object? directSoundsPagination = freezed,}) {
  return _then(_self.copyWith(
catId: null == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int,catFatherId: null == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as int,catTitle: null == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: null == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String,catActive: null == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as bool,directSoundsCount: null == directSoundsCount ? _self.directSoundsCount : directSoundsCount // ignore: cast_nullable_to_non_nullable
as String,subtreeSoundsCount: freezed == subtreeSoundsCount ? _self.subtreeSoundsCount : subtreeSoundsCount // ignore: cast_nullable_to_non_nullable
as int?,directSounds: null == directSounds ? _self.directSounds : directSounds // ignore: cast_nullable_to_non_nullable
as List<SoundData>,directSoundsPagination: freezed == directSoundsPagination ? _self.directSoundsPagination : directSoundsPagination // ignore: cast_nullable_to_non_nullable
as PaginationData?,
  ));
}
/// Create a copy of Level4Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res>? get directSoundsPagination {
    if (_self.directSoundsPagination == null) {
    return null;
  }

  return $PaginationDataCopyWith<$Res>(_self.directSoundsPagination!, (value) {
    return _then(_self.copyWith(directSoundsPagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [Level4Category].
extension Level4CategoryPatterns on Level4Category {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Level4Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Level4Category() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Level4Category value)  $default,){
final _that = this;
switch (_that) {
case _Level4Category():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Level4Category value)?  $default,){
final _that = this;
switch (_that) {
case _Level4Category() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')  int catFatherId, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')  bool catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter()  String directSoundsCount, @JsonKey(name: 'subtree_sounds_count')  int? subtreeSoundsCount, @JsonKey(name: 'direct_sounds')  List<SoundData> directSounds, @JsonKey(name: 'direct_sounds_pagination')  PaginationData? directSoundsPagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Level4Category() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.directSoundsCount,_that.subtreeSoundsCount,_that.directSounds,_that.directSoundsPagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')  int catFatherId, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')  bool catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter()  String directSoundsCount, @JsonKey(name: 'subtree_sounds_count')  int? subtreeSoundsCount, @JsonKey(name: 'direct_sounds')  List<SoundData> directSounds, @JsonKey(name: 'direct_sounds_pagination')  PaginationData? directSoundsPagination)  $default,) {final _that = this;
switch (_that) {
case _Level4Category():
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.directSoundsCount,_that.subtreeSoundsCount,_that.directSounds,_that.directSoundsPagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_father_id')  int catFatherId, @JsonKey(name: 'cat_title')  String catTitle, @JsonKey(name: 'cat_note')  String? catNote, @JsonKey(name: 'cat_pic')  String? catPic, @JsonKey(name: 'cat_pos')@IntStringConverter()  String catPos, @JsonKey(name: 'cat_active')  bool catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter()  String directSoundsCount, @JsonKey(name: 'subtree_sounds_count')  int? subtreeSoundsCount, @JsonKey(name: 'direct_sounds')  List<SoundData> directSounds, @JsonKey(name: 'direct_sounds_pagination')  PaginationData? directSoundsPagination)?  $default,) {final _that = this;
switch (_that) {
case _Level4Category() when $default != null:
return $default(_that.catId,_that.catFatherId,_that.catTitle,_that.catNote,_that.catPic,_that.catPos,_that.catActive,_that.directSoundsCount,_that.subtreeSoundsCount,_that.directSounds,_that.directSoundsPagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Level4Category implements Level4Category {
  const _Level4Category({@JsonKey(name: 'cat_id') required this.catId, @JsonKey(name: 'cat_father_id') required this.catFatherId, @JsonKey(name: 'cat_title') required this.catTitle, @JsonKey(name: 'cat_note') this.catNote, @JsonKey(name: 'cat_pic') this.catPic, @JsonKey(name: 'cat_pos')@IntStringConverter() required this.catPos, @JsonKey(name: 'cat_active') required this.catActive, @JsonKey(name: 'direct_sounds_count')@IntStringConverter() required this.directSoundsCount, @JsonKey(name: 'subtree_sounds_count') this.subtreeSoundsCount, @JsonKey(name: 'direct_sounds') final  List<SoundData> directSounds = const [], @JsonKey(name: 'direct_sounds_pagination') this.directSoundsPagination}): _directSounds = directSounds;
  factory _Level4Category.fromJson(Map<String, dynamic> json) => _$Level4CategoryFromJson(json);

@override@JsonKey(name: 'cat_id') final  int catId;
@override@JsonKey(name: 'cat_father_id') final  int catFatherId;
@override@JsonKey(name: 'cat_title') final  String catTitle;
@override@JsonKey(name: 'cat_note') final  String? catNote;
@override@JsonKey(name: 'cat_pic') final  String? catPic;
@override@JsonKey(name: 'cat_pos')@IntStringConverter() final  String catPos;
@override@JsonKey(name: 'cat_active') final  bool catActive;
@override@JsonKey(name: 'direct_sounds_count')@IntStringConverter() final  String directSoundsCount;
@override@JsonKey(name: 'subtree_sounds_count') final  int? subtreeSoundsCount;
 final  List<SoundData> _directSounds;
@override@JsonKey(name: 'direct_sounds') List<SoundData> get directSounds {
  if (_directSounds is EqualUnmodifiableListView) return _directSounds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_directSounds);
}

@override@JsonKey(name: 'direct_sounds_pagination') final  PaginationData? directSoundsPagination;

/// Create a copy of Level4Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Level4CategoryCopyWith<_Level4Category> get copyWith => __$Level4CategoryCopyWithImpl<_Level4Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Level4CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Level4Category&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catFatherId, catFatherId) || other.catFatherId == catFatherId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle)&&(identical(other.catNote, catNote) || other.catNote == catNote)&&(identical(other.catPic, catPic) || other.catPic == catPic)&&(identical(other.catPos, catPos) || other.catPos == catPos)&&(identical(other.catActive, catActive) || other.catActive == catActive)&&(identical(other.directSoundsCount, directSoundsCount) || other.directSoundsCount == directSoundsCount)&&(identical(other.subtreeSoundsCount, subtreeSoundsCount) || other.subtreeSoundsCount == subtreeSoundsCount)&&const DeepCollectionEquality().equals(other._directSounds, _directSounds)&&(identical(other.directSoundsPagination, directSoundsPagination) || other.directSoundsPagination == directSoundsPagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catFatherId,catTitle,catNote,catPic,catPos,catActive,directSoundsCount,subtreeSoundsCount,const DeepCollectionEquality().hash(_directSounds),directSoundsPagination);

@override
String toString() {
  return 'Level4Category(catId: $catId, catFatherId: $catFatherId, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catPos: $catPos, catActive: $catActive, directSoundsCount: $directSoundsCount, subtreeSoundsCount: $subtreeSoundsCount, directSounds: $directSounds, directSoundsPagination: $directSoundsPagination)';
}


}

/// @nodoc
abstract mixin class _$Level4CategoryCopyWith<$Res> implements $Level4CategoryCopyWith<$Res> {
  factory _$Level4CategoryCopyWith(_Level4Category value, $Res Function(_Level4Category) _then) = __$Level4CategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id') int catId,@JsonKey(name: 'cat_father_id') int catFatherId,@JsonKey(name: 'cat_title') String catTitle,@JsonKey(name: 'cat_note') String? catNote,@JsonKey(name: 'cat_pic') String? catPic,@JsonKey(name: 'cat_pos')@IntStringConverter() String catPos,@JsonKey(name: 'cat_active') bool catActive,@JsonKey(name: 'direct_sounds_count')@IntStringConverter() String directSoundsCount,@JsonKey(name: 'subtree_sounds_count') int? subtreeSoundsCount,@JsonKey(name: 'direct_sounds') List<SoundData> directSounds,@JsonKey(name: 'direct_sounds_pagination') PaginationData? directSoundsPagination
});


@override $PaginationDataCopyWith<$Res>? get directSoundsPagination;

}
/// @nodoc
class __$Level4CategoryCopyWithImpl<$Res>
    implements _$Level4CategoryCopyWith<$Res> {
  __$Level4CategoryCopyWithImpl(this._self, this._then);

  final _Level4Category _self;
  final $Res Function(_Level4Category) _then;

/// Create a copy of Level4Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = null,Object? catFatherId = null,Object? catTitle = null,Object? catNote = freezed,Object? catPic = freezed,Object? catPos = null,Object? catActive = null,Object? directSoundsCount = null,Object? subtreeSoundsCount = freezed,Object? directSounds = null,Object? directSoundsPagination = freezed,}) {
  return _then(_Level4Category(
catId: null == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int,catFatherId: null == catFatherId ? _self.catFatherId : catFatherId // ignore: cast_nullable_to_non_nullable
as int,catTitle: null == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String,catNote: freezed == catNote ? _self.catNote : catNote // ignore: cast_nullable_to_non_nullable
as String?,catPic: freezed == catPic ? _self.catPic : catPic // ignore: cast_nullable_to_non_nullable
as String?,catPos: null == catPos ? _self.catPos : catPos // ignore: cast_nullable_to_non_nullable
as String,catActive: null == catActive ? _self.catActive : catActive // ignore: cast_nullable_to_non_nullable
as bool,directSoundsCount: null == directSoundsCount ? _self.directSoundsCount : directSoundsCount // ignore: cast_nullable_to_non_nullable
as String,subtreeSoundsCount: freezed == subtreeSoundsCount ? _self.subtreeSoundsCount : subtreeSoundsCount // ignore: cast_nullable_to_non_nullable
as int?,directSounds: null == directSounds ? _self._directSounds : directSounds // ignore: cast_nullable_to_non_nullable
as List<SoundData>,directSoundsPagination: freezed == directSoundsPagination ? _self.directSoundsPagination : directSoundsPagination // ignore: cast_nullable_to_non_nullable
as PaginationData?,
  ));
}

/// Create a copy of Level4Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res>? get directSoundsPagination {
    if (_self.directSoundsPagination == null) {
    return null;
  }

  return $PaginationDataCopyWith<$Res>(_self.directSoundsPagination!, (value) {
    return _then(_self.copyWith(directSoundsPagination: value));
  });
}
}


/// @nodoc
mixin _$SoundData {

@JsonKey(name: 'sound_id') int get soundId;@JsonKey(name: 'sound_title') String get soundTitle;@JsonKey(name: 'sound_summary') String? get soundSummary;@JsonKey(name: 'sound_des') String? get soundDes;@JsonKey(name: 'sound_cat_id') int get soundCatId;@JsonKey(name: 'sound_pic') String? get soundPic;@JsonKey(name: 'sound_visitor')@IntStringConverter() String? get soundVisitor;@JsonKey(name: 'sound_priority') int? get soundPriority;@JsonKey(name: 'sound_date') String get soundDate;@JsonKey(name: 'sound_file') String? get soundFile;@JsonKey(name: 'sound_source_url') String? get soundSourceUrl;@JsonKey(name: 'sound_youtube_id') String? get soundYoutubeId;@JsonKey(name: 'sound_active') bool get soundActive;@JsonKey(name: 'sound_pic_url') String? get soundPicUrl;@JsonKey(name: 'sound_file_url') String? get soundFileUrl; CategoryData? get category;
/// Create a copy of SoundData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SoundDataCopyWith<SoundData> get copyWith => _$SoundDataCopyWithImpl<SoundData>(this as SoundData, _$identity);

  /// Serializes this SoundData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SoundData&&(identical(other.soundId, soundId) || other.soundId == soundId)&&(identical(other.soundTitle, soundTitle) || other.soundTitle == soundTitle)&&(identical(other.soundSummary, soundSummary) || other.soundSummary == soundSummary)&&(identical(other.soundDes, soundDes) || other.soundDes == soundDes)&&(identical(other.soundCatId, soundCatId) || other.soundCatId == soundCatId)&&(identical(other.soundPic, soundPic) || other.soundPic == soundPic)&&(identical(other.soundVisitor, soundVisitor) || other.soundVisitor == soundVisitor)&&(identical(other.soundPriority, soundPriority) || other.soundPriority == soundPriority)&&(identical(other.soundDate, soundDate) || other.soundDate == soundDate)&&(identical(other.soundFile, soundFile) || other.soundFile == soundFile)&&(identical(other.soundSourceUrl, soundSourceUrl) || other.soundSourceUrl == soundSourceUrl)&&(identical(other.soundYoutubeId, soundYoutubeId) || other.soundYoutubeId == soundYoutubeId)&&(identical(other.soundActive, soundActive) || other.soundActive == soundActive)&&(identical(other.soundPicUrl, soundPicUrl) || other.soundPicUrl == soundPicUrl)&&(identical(other.soundFileUrl, soundFileUrl) || other.soundFileUrl == soundFileUrl)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,soundId,soundTitle,soundSummary,soundDes,soundCatId,soundPic,soundVisitor,soundPriority,soundDate,soundFile,soundSourceUrl,soundYoutubeId,soundActive,soundPicUrl,soundFileUrl,category);

@override
String toString() {
  return 'SoundData(soundId: $soundId, soundTitle: $soundTitle, soundSummary: $soundSummary, soundDes: $soundDes, soundCatId: $soundCatId, soundPic: $soundPic, soundVisitor: $soundVisitor, soundPriority: $soundPriority, soundDate: $soundDate, soundFile: $soundFile, soundSourceUrl: $soundSourceUrl, soundYoutubeId: $soundYoutubeId, soundActive: $soundActive, soundPicUrl: $soundPicUrl, soundFileUrl: $soundFileUrl, category: $category)';
}


}

/// @nodoc
abstract mixin class $SoundDataCopyWith<$Res>  {
  factory $SoundDataCopyWith(SoundData value, $Res Function(SoundData) _then) = _$SoundDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sound_id') int soundId,@JsonKey(name: 'sound_title') String soundTitle,@JsonKey(name: 'sound_summary') String? soundSummary,@JsonKey(name: 'sound_des') String? soundDes,@JsonKey(name: 'sound_cat_id') int soundCatId,@JsonKey(name: 'sound_pic') String? soundPic,@JsonKey(name: 'sound_visitor')@IntStringConverter() String? soundVisitor,@JsonKey(name: 'sound_priority') int? soundPriority,@JsonKey(name: 'sound_date') String soundDate,@JsonKey(name: 'sound_file') String? soundFile,@JsonKey(name: 'sound_source_url') String? soundSourceUrl,@JsonKey(name: 'sound_youtube_id') String? soundYoutubeId,@JsonKey(name: 'sound_active') bool soundActive,@JsonKey(name: 'sound_pic_url') String? soundPicUrl,@JsonKey(name: 'sound_file_url') String? soundFileUrl, CategoryData? category
});


$CategoryDataCopyWith<$Res>? get category;

}
/// @nodoc
class _$SoundDataCopyWithImpl<$Res>
    implements $SoundDataCopyWith<$Res> {
  _$SoundDataCopyWithImpl(this._self, this._then);

  final SoundData _self;
  final $Res Function(SoundData) _then;

/// Create a copy of SoundData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? soundId = null,Object? soundTitle = null,Object? soundSummary = freezed,Object? soundDes = freezed,Object? soundCatId = null,Object? soundPic = freezed,Object? soundVisitor = freezed,Object? soundPriority = freezed,Object? soundDate = null,Object? soundFile = freezed,Object? soundSourceUrl = freezed,Object? soundYoutubeId = freezed,Object? soundActive = null,Object? soundPicUrl = freezed,Object? soundFileUrl = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
soundId: null == soundId ? _self.soundId : soundId // ignore: cast_nullable_to_non_nullable
as int,soundTitle: null == soundTitle ? _self.soundTitle : soundTitle // ignore: cast_nullable_to_non_nullable
as String,soundSummary: freezed == soundSummary ? _self.soundSummary : soundSummary // ignore: cast_nullable_to_non_nullable
as String?,soundDes: freezed == soundDes ? _self.soundDes : soundDes // ignore: cast_nullable_to_non_nullable
as String?,soundCatId: null == soundCatId ? _self.soundCatId : soundCatId // ignore: cast_nullable_to_non_nullable
as int,soundPic: freezed == soundPic ? _self.soundPic : soundPic // ignore: cast_nullable_to_non_nullable
as String?,soundVisitor: freezed == soundVisitor ? _self.soundVisitor : soundVisitor // ignore: cast_nullable_to_non_nullable
as String?,soundPriority: freezed == soundPriority ? _self.soundPriority : soundPriority // ignore: cast_nullable_to_non_nullable
as int?,soundDate: null == soundDate ? _self.soundDate : soundDate // ignore: cast_nullable_to_non_nullable
as String,soundFile: freezed == soundFile ? _self.soundFile : soundFile // ignore: cast_nullable_to_non_nullable
as String?,soundSourceUrl: freezed == soundSourceUrl ? _self.soundSourceUrl : soundSourceUrl // ignore: cast_nullable_to_non_nullable
as String?,soundYoutubeId: freezed == soundYoutubeId ? _self.soundYoutubeId : soundYoutubeId // ignore: cast_nullable_to_non_nullable
as String?,soundActive: null == soundActive ? _self.soundActive : soundActive // ignore: cast_nullable_to_non_nullable
as bool,soundPicUrl: freezed == soundPicUrl ? _self.soundPicUrl : soundPicUrl // ignore: cast_nullable_to_non_nullable
as String?,soundFileUrl: freezed == soundFileUrl ? _self.soundFileUrl : soundFileUrl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryData?,
  ));
}
/// Create a copy of SoundData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryDataCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryDataCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [SoundData].
extension SoundDataPatterns on SoundData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SoundData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SoundData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SoundData value)  $default,){
final _that = this;
switch (_that) {
case _SoundData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SoundData value)?  $default,){
final _that = this;
switch (_that) {
case _SoundData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sound_id')  int soundId, @JsonKey(name: 'sound_title')  String soundTitle, @JsonKey(name: 'sound_summary')  String? soundSummary, @JsonKey(name: 'sound_des')  String? soundDes, @JsonKey(name: 'sound_cat_id')  int soundCatId, @JsonKey(name: 'sound_pic')  String? soundPic, @JsonKey(name: 'sound_visitor')@IntStringConverter()  String? soundVisitor, @JsonKey(name: 'sound_priority')  int? soundPriority, @JsonKey(name: 'sound_date')  String soundDate, @JsonKey(name: 'sound_file')  String? soundFile, @JsonKey(name: 'sound_source_url')  String? soundSourceUrl, @JsonKey(name: 'sound_youtube_id')  String? soundYoutubeId, @JsonKey(name: 'sound_active')  bool soundActive, @JsonKey(name: 'sound_pic_url')  String? soundPicUrl, @JsonKey(name: 'sound_file_url')  String? soundFileUrl,  CategoryData? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SoundData() when $default != null:
return $default(_that.soundId,_that.soundTitle,_that.soundSummary,_that.soundDes,_that.soundCatId,_that.soundPic,_that.soundVisitor,_that.soundPriority,_that.soundDate,_that.soundFile,_that.soundSourceUrl,_that.soundYoutubeId,_that.soundActive,_that.soundPicUrl,_that.soundFileUrl,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sound_id')  int soundId, @JsonKey(name: 'sound_title')  String soundTitle, @JsonKey(name: 'sound_summary')  String? soundSummary, @JsonKey(name: 'sound_des')  String? soundDes, @JsonKey(name: 'sound_cat_id')  int soundCatId, @JsonKey(name: 'sound_pic')  String? soundPic, @JsonKey(name: 'sound_visitor')@IntStringConverter()  String? soundVisitor, @JsonKey(name: 'sound_priority')  int? soundPriority, @JsonKey(name: 'sound_date')  String soundDate, @JsonKey(name: 'sound_file')  String? soundFile, @JsonKey(name: 'sound_source_url')  String? soundSourceUrl, @JsonKey(name: 'sound_youtube_id')  String? soundYoutubeId, @JsonKey(name: 'sound_active')  bool soundActive, @JsonKey(name: 'sound_pic_url')  String? soundPicUrl, @JsonKey(name: 'sound_file_url')  String? soundFileUrl,  CategoryData? category)  $default,) {final _that = this;
switch (_that) {
case _SoundData():
return $default(_that.soundId,_that.soundTitle,_that.soundSummary,_that.soundDes,_that.soundCatId,_that.soundPic,_that.soundVisitor,_that.soundPriority,_that.soundDate,_that.soundFile,_that.soundSourceUrl,_that.soundYoutubeId,_that.soundActive,_that.soundPicUrl,_that.soundFileUrl,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sound_id')  int soundId, @JsonKey(name: 'sound_title')  String soundTitle, @JsonKey(name: 'sound_summary')  String? soundSummary, @JsonKey(name: 'sound_des')  String? soundDes, @JsonKey(name: 'sound_cat_id')  int soundCatId, @JsonKey(name: 'sound_pic')  String? soundPic, @JsonKey(name: 'sound_visitor')@IntStringConverter()  String? soundVisitor, @JsonKey(name: 'sound_priority')  int? soundPriority, @JsonKey(name: 'sound_date')  String soundDate, @JsonKey(name: 'sound_file')  String? soundFile, @JsonKey(name: 'sound_source_url')  String? soundSourceUrl, @JsonKey(name: 'sound_youtube_id')  String? soundYoutubeId, @JsonKey(name: 'sound_active')  bool soundActive, @JsonKey(name: 'sound_pic_url')  String? soundPicUrl, @JsonKey(name: 'sound_file_url')  String? soundFileUrl,  CategoryData? category)?  $default,) {final _that = this;
switch (_that) {
case _SoundData() when $default != null:
return $default(_that.soundId,_that.soundTitle,_that.soundSummary,_that.soundDes,_that.soundCatId,_that.soundPic,_that.soundVisitor,_that.soundPriority,_that.soundDate,_that.soundFile,_that.soundSourceUrl,_that.soundYoutubeId,_that.soundActive,_that.soundPicUrl,_that.soundFileUrl,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SoundData implements SoundData {
  const _SoundData({@JsonKey(name: 'sound_id') required this.soundId, @JsonKey(name: 'sound_title') required this.soundTitle, @JsonKey(name: 'sound_summary') this.soundSummary, @JsonKey(name: 'sound_des') this.soundDes, @JsonKey(name: 'sound_cat_id') required this.soundCatId, @JsonKey(name: 'sound_pic') this.soundPic, @JsonKey(name: 'sound_visitor')@IntStringConverter() this.soundVisitor, @JsonKey(name: 'sound_priority') this.soundPriority, @JsonKey(name: 'sound_date') required this.soundDate, @JsonKey(name: 'sound_file') this.soundFile, @JsonKey(name: 'sound_source_url') this.soundSourceUrl, @JsonKey(name: 'sound_youtube_id') this.soundYoutubeId, @JsonKey(name: 'sound_active') required this.soundActive, @JsonKey(name: 'sound_pic_url') this.soundPicUrl, @JsonKey(name: 'sound_file_url') this.soundFileUrl, this.category});
  factory _SoundData.fromJson(Map<String, dynamic> json) => _$SoundDataFromJson(json);

@override@JsonKey(name: 'sound_id') final  int soundId;
@override@JsonKey(name: 'sound_title') final  String soundTitle;
@override@JsonKey(name: 'sound_summary') final  String? soundSummary;
@override@JsonKey(name: 'sound_des') final  String? soundDes;
@override@JsonKey(name: 'sound_cat_id') final  int soundCatId;
@override@JsonKey(name: 'sound_pic') final  String? soundPic;
@override@JsonKey(name: 'sound_visitor')@IntStringConverter() final  String? soundVisitor;
@override@JsonKey(name: 'sound_priority') final  int? soundPriority;
@override@JsonKey(name: 'sound_date') final  String soundDate;
@override@JsonKey(name: 'sound_file') final  String? soundFile;
@override@JsonKey(name: 'sound_source_url') final  String? soundSourceUrl;
@override@JsonKey(name: 'sound_youtube_id') final  String? soundYoutubeId;
@override@JsonKey(name: 'sound_active') final  bool soundActive;
@override@JsonKey(name: 'sound_pic_url') final  String? soundPicUrl;
@override@JsonKey(name: 'sound_file_url') final  String? soundFileUrl;
@override final  CategoryData? category;

/// Create a copy of SoundData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SoundDataCopyWith<_SoundData> get copyWith => __$SoundDataCopyWithImpl<_SoundData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SoundDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SoundData&&(identical(other.soundId, soundId) || other.soundId == soundId)&&(identical(other.soundTitle, soundTitle) || other.soundTitle == soundTitle)&&(identical(other.soundSummary, soundSummary) || other.soundSummary == soundSummary)&&(identical(other.soundDes, soundDes) || other.soundDes == soundDes)&&(identical(other.soundCatId, soundCatId) || other.soundCatId == soundCatId)&&(identical(other.soundPic, soundPic) || other.soundPic == soundPic)&&(identical(other.soundVisitor, soundVisitor) || other.soundVisitor == soundVisitor)&&(identical(other.soundPriority, soundPriority) || other.soundPriority == soundPriority)&&(identical(other.soundDate, soundDate) || other.soundDate == soundDate)&&(identical(other.soundFile, soundFile) || other.soundFile == soundFile)&&(identical(other.soundSourceUrl, soundSourceUrl) || other.soundSourceUrl == soundSourceUrl)&&(identical(other.soundYoutubeId, soundYoutubeId) || other.soundYoutubeId == soundYoutubeId)&&(identical(other.soundActive, soundActive) || other.soundActive == soundActive)&&(identical(other.soundPicUrl, soundPicUrl) || other.soundPicUrl == soundPicUrl)&&(identical(other.soundFileUrl, soundFileUrl) || other.soundFileUrl == soundFileUrl)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,soundId,soundTitle,soundSummary,soundDes,soundCatId,soundPic,soundVisitor,soundPriority,soundDate,soundFile,soundSourceUrl,soundYoutubeId,soundActive,soundPicUrl,soundFileUrl,category);

@override
String toString() {
  return 'SoundData(soundId: $soundId, soundTitle: $soundTitle, soundSummary: $soundSummary, soundDes: $soundDes, soundCatId: $soundCatId, soundPic: $soundPic, soundVisitor: $soundVisitor, soundPriority: $soundPriority, soundDate: $soundDate, soundFile: $soundFile, soundSourceUrl: $soundSourceUrl, soundYoutubeId: $soundYoutubeId, soundActive: $soundActive, soundPicUrl: $soundPicUrl, soundFileUrl: $soundFileUrl, category: $category)';
}


}

/// @nodoc
abstract mixin class _$SoundDataCopyWith<$Res> implements $SoundDataCopyWith<$Res> {
  factory _$SoundDataCopyWith(_SoundData value, $Res Function(_SoundData) _then) = __$SoundDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sound_id') int soundId,@JsonKey(name: 'sound_title') String soundTitle,@JsonKey(name: 'sound_summary') String? soundSummary,@JsonKey(name: 'sound_des') String? soundDes,@JsonKey(name: 'sound_cat_id') int soundCatId,@JsonKey(name: 'sound_pic') String? soundPic,@JsonKey(name: 'sound_visitor')@IntStringConverter() String? soundVisitor,@JsonKey(name: 'sound_priority') int? soundPriority,@JsonKey(name: 'sound_date') String soundDate,@JsonKey(name: 'sound_file') String? soundFile,@JsonKey(name: 'sound_source_url') String? soundSourceUrl,@JsonKey(name: 'sound_youtube_id') String? soundYoutubeId,@JsonKey(name: 'sound_active') bool soundActive,@JsonKey(name: 'sound_pic_url') String? soundPicUrl,@JsonKey(name: 'sound_file_url') String? soundFileUrl, CategoryData? category
});


@override $CategoryDataCopyWith<$Res>? get category;

}
/// @nodoc
class __$SoundDataCopyWithImpl<$Res>
    implements _$SoundDataCopyWith<$Res> {
  __$SoundDataCopyWithImpl(this._self, this._then);

  final _SoundData _self;
  final $Res Function(_SoundData) _then;

/// Create a copy of SoundData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? soundId = null,Object? soundTitle = null,Object? soundSummary = freezed,Object? soundDes = freezed,Object? soundCatId = null,Object? soundPic = freezed,Object? soundVisitor = freezed,Object? soundPriority = freezed,Object? soundDate = null,Object? soundFile = freezed,Object? soundSourceUrl = freezed,Object? soundYoutubeId = freezed,Object? soundActive = null,Object? soundPicUrl = freezed,Object? soundFileUrl = freezed,Object? category = freezed,}) {
  return _then(_SoundData(
soundId: null == soundId ? _self.soundId : soundId // ignore: cast_nullable_to_non_nullable
as int,soundTitle: null == soundTitle ? _self.soundTitle : soundTitle // ignore: cast_nullable_to_non_nullable
as String,soundSummary: freezed == soundSummary ? _self.soundSummary : soundSummary // ignore: cast_nullable_to_non_nullable
as String?,soundDes: freezed == soundDes ? _self.soundDes : soundDes // ignore: cast_nullable_to_non_nullable
as String?,soundCatId: null == soundCatId ? _self.soundCatId : soundCatId // ignore: cast_nullable_to_non_nullable
as int,soundPic: freezed == soundPic ? _self.soundPic : soundPic // ignore: cast_nullable_to_non_nullable
as String?,soundVisitor: freezed == soundVisitor ? _self.soundVisitor : soundVisitor // ignore: cast_nullable_to_non_nullable
as String?,soundPriority: freezed == soundPriority ? _self.soundPriority : soundPriority // ignore: cast_nullable_to_non_nullable
as int?,soundDate: null == soundDate ? _self.soundDate : soundDate // ignore: cast_nullable_to_non_nullable
as String,soundFile: freezed == soundFile ? _self.soundFile : soundFile // ignore: cast_nullable_to_non_nullable
as String?,soundSourceUrl: freezed == soundSourceUrl ? _self.soundSourceUrl : soundSourceUrl // ignore: cast_nullable_to_non_nullable
as String?,soundYoutubeId: freezed == soundYoutubeId ? _self.soundYoutubeId : soundYoutubeId // ignore: cast_nullable_to_non_nullable
as String?,soundActive: null == soundActive ? _self.soundActive : soundActive // ignore: cast_nullable_to_non_nullable
as bool,soundPicUrl: freezed == soundPicUrl ? _self.soundPicUrl : soundPicUrl // ignore: cast_nullable_to_non_nullable
as String?,soundFileUrl: freezed == soundFileUrl ? _self.soundFileUrl : soundFileUrl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryData?,
  ));
}

/// Create a copy of SoundData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryDataCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryDataCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$CategoryData {

@JsonKey(name: 'cat_id') int get catId;@JsonKey(name: 'cat_title') String get catTitle;
/// Create a copy of CategoryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDataCopyWith<CategoryData> get copyWith => _$CategoryDataCopyWithImpl<CategoryData>(this as CategoryData, _$identity);

  /// Serializes this CategoryData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryData&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle);

@override
String toString() {
  return 'CategoryData(catId: $catId, catTitle: $catTitle)';
}


}

/// @nodoc
abstract mixin class $CategoryDataCopyWith<$Res>  {
  factory $CategoryDataCopyWith(CategoryData value, $Res Function(CategoryData) _then) = _$CategoryDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cat_id') int catId,@JsonKey(name: 'cat_title') String catTitle
});




}
/// @nodoc
class _$CategoryDataCopyWithImpl<$Res>
    implements $CategoryDataCopyWith<$Res> {
  _$CategoryDataCopyWithImpl(this._self, this._then);

  final CategoryData _self;
  final $Res Function(CategoryData) _then;

/// Create a copy of CategoryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catId = null,Object? catTitle = null,}) {
  return _then(_self.copyWith(
catId: null == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int,catTitle: null == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryData].
extension CategoryDataPatterns on CategoryData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryData value)  $default,){
final _that = this;
switch (_that) {
case _CategoryData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryData value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_title')  String catTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_title')  String catTitle)  $default,) {final _that = this;
switch (_that) {
case _CategoryData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cat_id')  int catId, @JsonKey(name: 'cat_title')  String catTitle)?  $default,) {final _that = this;
switch (_that) {
case _CategoryData() when $default != null:
return $default(_that.catId,_that.catTitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryData implements CategoryData {
  const _CategoryData({@JsonKey(name: 'cat_id') required this.catId, @JsonKey(name: 'cat_title') required this.catTitle});
  factory _CategoryData.fromJson(Map<String, dynamic> json) => _$CategoryDataFromJson(json);

@override@JsonKey(name: 'cat_id') final  int catId;
@override@JsonKey(name: 'cat_title') final  String catTitle;

/// Create a copy of CategoryData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDataCopyWith<_CategoryData> get copyWith => __$CategoryDataCopyWithImpl<_CategoryData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryData&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.catTitle, catTitle) || other.catTitle == catTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catId,catTitle);

@override
String toString() {
  return 'CategoryData(catId: $catId, catTitle: $catTitle)';
}


}

/// @nodoc
abstract mixin class _$CategoryDataCopyWith<$Res> implements $CategoryDataCopyWith<$Res> {
  factory _$CategoryDataCopyWith(_CategoryData value, $Res Function(_CategoryData) _then) = __$CategoryDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cat_id') int catId,@JsonKey(name: 'cat_title') String catTitle
});




}
/// @nodoc
class __$CategoryDataCopyWithImpl<$Res>
    implements _$CategoryDataCopyWith<$Res> {
  __$CategoryDataCopyWithImpl(this._self, this._then);

  final _CategoryData _self;
  final $Res Function(_CategoryData) _then;

/// Create a copy of CategoryData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catId = null,Object? catTitle = null,}) {
  return _then(_CategoryData(
catId: null == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as int,catTitle: null == catTitle ? _self.catTitle : catTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PaginationData {

 int get total; int get count;@JsonKey(name: 'per_page') int get perPage;@JsonKey(name: 'current_page') int get currentPage;@JsonKey(name: 'last_page') int get lastPage; int? get from; int? get to;
/// Create a copy of PaginationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<PaginationData> get copyWith => _$PaginationDataCopyWithImpl<PaginationData>(this as PaginationData, _$identity);

  /// Serializes this PaginationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationData&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'PaginationData(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $PaginationDataCopyWith<$Res>  {
  factory $PaginationDataCopyWith(PaginationData value, $Res Function(PaginationData) _then) = _$PaginationDataCopyWithImpl;
@useResult
$Res call({
 int total, int count,@JsonKey(name: 'per_page') int perPage,@JsonKey(name: 'current_page') int currentPage,@JsonKey(name: 'last_page') int lastPage, int? from, int? to
});




}
/// @nodoc
class _$PaginationDataCopyWithImpl<$Res>
    implements $PaginationDataCopyWith<$Res> {
  _$PaginationDataCopyWithImpl(this._self, this._then);

  final PaginationData _self;
  final $Res Function(PaginationData) _then;

/// Create a copy of PaginationData
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


/// Adds pattern-matching-related methods to [PaginationData].
extension PaginationDataPatterns on PaginationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationData value)  $default,){
final _that = this;
switch (_that) {
case _PaginationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationData value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationData() when $default != null:
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
case _PaginationData() when $default != null:
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
case _PaginationData():
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
case _PaginationData() when $default != null:
return $default(_that.total,_that.count,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationData implements PaginationData {
  const _PaginationData({required this.total, required this.count, @JsonKey(name: 'per_page') required this.perPage, @JsonKey(name: 'current_page') required this.currentPage, @JsonKey(name: 'last_page') required this.lastPage, required this.from, required this.to});
  factory _PaginationData.fromJson(Map<String, dynamic> json) => _$PaginationDataFromJson(json);

@override final  int total;
@override final  int count;
@override@JsonKey(name: 'per_page') final  int perPage;
@override@JsonKey(name: 'current_page') final  int currentPage;
@override@JsonKey(name: 'last_page') final  int lastPage;
@override final  int? from;
@override final  int? to;

/// Create a copy of PaginationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationDataCopyWith<_PaginationData> get copyWith => __$PaginationDataCopyWithImpl<_PaginationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationData&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'PaginationData(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$PaginationDataCopyWith<$Res> implements $PaginationDataCopyWith<$Res> {
  factory _$PaginationDataCopyWith(_PaginationData value, $Res Function(_PaginationData) _then) = __$PaginationDataCopyWithImpl;
@override @useResult
$Res call({
 int total, int count,@JsonKey(name: 'per_page') int perPage,@JsonKey(name: 'current_page') int currentPage,@JsonKey(name: 'last_page') int lastPage, int? from, int? to
});




}
/// @nodoc
class __$PaginationDataCopyWithImpl<$Res>
    implements _$PaginationDataCopyWith<$Res> {
  __$PaginationDataCopyWithImpl(this._self, this._then);

  final _PaginationData _self;
  final $Res Function(_PaginationData) _then;

/// Create a copy of PaginationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? count = null,Object? perPage = null,Object? currentPage = null,Object? lastPage = null,Object? from = freezed,Object? to = freezed,}) {
  return _then(_PaginationData(
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
mixin _$HierarchicalPagination {

@JsonKey(name: 'parents_pagination') PaginationData get parentsPagination;
/// Create a copy of HierarchicalPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HierarchicalPaginationCopyWith<HierarchicalPagination> get copyWith => _$HierarchicalPaginationCopyWithImpl<HierarchicalPagination>(this as HierarchicalPagination, _$identity);

  /// Serializes this HierarchicalPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HierarchicalPagination&&(identical(other.parentsPagination, parentsPagination) || other.parentsPagination == parentsPagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parentsPagination);

@override
String toString() {
  return 'HierarchicalPagination(parentsPagination: $parentsPagination)';
}


}

/// @nodoc
abstract mixin class $HierarchicalPaginationCopyWith<$Res>  {
  factory $HierarchicalPaginationCopyWith(HierarchicalPagination value, $Res Function(HierarchicalPagination) _then) = _$HierarchicalPaginationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parents_pagination') PaginationData parentsPagination
});


$PaginationDataCopyWith<$Res> get parentsPagination;

}
/// @nodoc
class _$HierarchicalPaginationCopyWithImpl<$Res>
    implements $HierarchicalPaginationCopyWith<$Res> {
  _$HierarchicalPaginationCopyWithImpl(this._self, this._then);

  final HierarchicalPagination _self;
  final $Res Function(HierarchicalPagination) _then;

/// Create a copy of HierarchicalPagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parentsPagination = null,}) {
  return _then(_self.copyWith(
parentsPagination: null == parentsPagination ? _self.parentsPagination : parentsPagination // ignore: cast_nullable_to_non_nullable
as PaginationData,
  ));
}
/// Create a copy of HierarchicalPagination
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res> get parentsPagination {
  
  return $PaginationDataCopyWith<$Res>(_self.parentsPagination, (value) {
    return _then(_self.copyWith(parentsPagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [HierarchicalPagination].
extension HierarchicalPaginationPatterns on HierarchicalPagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HierarchicalPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HierarchicalPagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HierarchicalPagination value)  $default,){
final _that = this;
switch (_that) {
case _HierarchicalPagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HierarchicalPagination value)?  $default,){
final _that = this;
switch (_that) {
case _HierarchicalPagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parents_pagination')  PaginationData parentsPagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HierarchicalPagination() when $default != null:
return $default(_that.parentsPagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parents_pagination')  PaginationData parentsPagination)  $default,) {final _that = this;
switch (_that) {
case _HierarchicalPagination():
return $default(_that.parentsPagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parents_pagination')  PaginationData parentsPagination)?  $default,) {final _that = this;
switch (_that) {
case _HierarchicalPagination() when $default != null:
return $default(_that.parentsPagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HierarchicalPagination implements HierarchicalPagination {
  const _HierarchicalPagination({@JsonKey(name: 'parents_pagination') required this.parentsPagination});
  factory _HierarchicalPagination.fromJson(Map<String, dynamic> json) => _$HierarchicalPaginationFromJson(json);

@override@JsonKey(name: 'parents_pagination') final  PaginationData parentsPagination;

/// Create a copy of HierarchicalPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HierarchicalPaginationCopyWith<_HierarchicalPagination> get copyWith => __$HierarchicalPaginationCopyWithImpl<_HierarchicalPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HierarchicalPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HierarchicalPagination&&(identical(other.parentsPagination, parentsPagination) || other.parentsPagination == parentsPagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parentsPagination);

@override
String toString() {
  return 'HierarchicalPagination(parentsPagination: $parentsPagination)';
}


}

/// @nodoc
abstract mixin class _$HierarchicalPaginationCopyWith<$Res> implements $HierarchicalPaginationCopyWith<$Res> {
  factory _$HierarchicalPaginationCopyWith(_HierarchicalPagination value, $Res Function(_HierarchicalPagination) _then) = __$HierarchicalPaginationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parents_pagination') PaginationData parentsPagination
});


@override $PaginationDataCopyWith<$Res> get parentsPagination;

}
/// @nodoc
class __$HierarchicalPaginationCopyWithImpl<$Res>
    implements _$HierarchicalPaginationCopyWith<$Res> {
  __$HierarchicalPaginationCopyWithImpl(this._self, this._then);

  final _HierarchicalPagination _self;
  final $Res Function(_HierarchicalPagination) _then;

/// Create a copy of HierarchicalPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parentsPagination = null,}) {
  return _then(_HierarchicalPagination(
parentsPagination: null == parentsPagination ? _self.parentsPagination : parentsPagination // ignore: cast_nullable_to_non_nullable
as PaginationData,
  ));
}

/// Create a copy of HierarchicalPagination
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res> get parentsPagination {
  
  return $PaginationDataCopyWith<$Res>(_self.parentsPagination, (value) {
    return _then(_self.copyWith(parentsPagination: value));
  });
}
}

// dart format on
