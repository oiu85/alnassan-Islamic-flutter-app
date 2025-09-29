// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationModel {

 String? get status; List<NotificationItem>? get data; NotificationMeta? get meta;
/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<NotificationModel> get copyWith => _$NotificationModelCopyWithImpl<NotificationModel>(this as NotificationModel, _$identity);

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationModel&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'NotificationModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $NotificationModelCopyWith<$Res>  {
  factory $NotificationModelCopyWith(NotificationModel value, $Res Function(NotificationModel) _then) = _$NotificationModelCopyWithImpl;
@useResult
$Res call({
 String? status, List<NotificationItem>? data, NotificationMeta? meta
});


$NotificationMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._self, this._then);

  final NotificationModel _self;
  final $Res Function(NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<NotificationItem>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as NotificationMeta?,
  ));
}
/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $NotificationMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationModel].
extension NotificationModelPatterns on NotificationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  List<NotificationItem>? data,  NotificationMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  List<NotificationItem>? data,  NotificationMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _NotificationModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  List<NotificationItem>? data,  NotificationMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
return $default(_that.status,_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationModel implements NotificationModel {
  const _NotificationModel({this.status, final  List<NotificationItem>? data, this.meta}): _data = data;
  factory _NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);

@override final  String? status;
 final  List<NotificationItem>? _data;
@override List<NotificationItem>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  NotificationMeta? meta;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationModelCopyWith<_NotificationModel> get copyWith => __$NotificationModelCopyWithImpl<_NotificationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationModel&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'NotificationModel(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$NotificationModelCopyWith<$Res> implements $NotificationModelCopyWith<$Res> {
  factory _$NotificationModelCopyWith(_NotificationModel value, $Res Function(_NotificationModel) _then) = __$NotificationModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, List<NotificationItem>? data, NotificationMeta? meta
});


@override $NotificationMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$NotificationModelCopyWithImpl<$Res>
    implements _$NotificationModelCopyWith<$Res> {
  __$NotificationModelCopyWithImpl(this._self, this._then);

  final _NotificationModel _self;
  final $Res Function(_NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_NotificationModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<NotificationItem>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as NotificationMeta?,
  ));
}

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $NotificationMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$NotificationItem {

 int? get id; String? get type; String? get title; String? get message; String? get icon; String? get url; NotificationData? get data;@JsonKey(name: 'is_public') bool? get isPublic;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of NotificationItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationItemCopyWith<NotificationItem> get copyWith => _$NotificationItemCopyWithImpl<NotificationItem>(this as NotificationItem, _$identity);

  /// Serializes this NotificationItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationItem&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.url, url) || other.url == url)&&(identical(other.data, data) || other.data == data)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,message,icon,url,data,isPublic,createdAt,updatedAt);

@override
String toString() {
  return 'NotificationItem(id: $id, type: $type, title: $title, message: $message, icon: $icon, url: $url, data: $data, isPublic: $isPublic, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $NotificationItemCopyWith<$Res>  {
  factory $NotificationItemCopyWith(NotificationItem value, $Res Function(NotificationItem) _then) = _$NotificationItemCopyWithImpl;
@useResult
$Res call({
 int? id, String? type, String? title, String? message, String? icon, String? url, NotificationData? data,@JsonKey(name: 'is_public') bool? isPublic,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});


$NotificationDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$NotificationItemCopyWithImpl<$Res>
    implements $NotificationItemCopyWith<$Res> {
  _$NotificationItemCopyWithImpl(this._self, this._then);

  final NotificationItem _self;
  final $Res Function(NotificationItem) _then;

/// Create a copy of NotificationItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? title = freezed,Object? message = freezed,Object? icon = freezed,Object? url = freezed,Object? data = freezed,Object? isPublic = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationData?,isPublic: freezed == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of NotificationItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $NotificationDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationItem].
extension NotificationItemPatterns on NotificationItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationItem value)  $default,){
final _that = this;
switch (_that) {
case _NotificationItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationItem value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? type,  String? title,  String? message,  String? icon,  String? url,  NotificationData? data, @JsonKey(name: 'is_public')  bool? isPublic, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationItem() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.message,_that.icon,_that.url,_that.data,_that.isPublic,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? type,  String? title,  String? message,  String? icon,  String? url,  NotificationData? data, @JsonKey(name: 'is_public')  bool? isPublic, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _NotificationItem():
return $default(_that.id,_that.type,_that.title,_that.message,_that.icon,_that.url,_that.data,_that.isPublic,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? type,  String? title,  String? message,  String? icon,  String? url,  NotificationData? data, @JsonKey(name: 'is_public')  bool? isPublic, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _NotificationItem() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.message,_that.icon,_that.url,_that.data,_that.isPublic,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationItem implements NotificationItem {
  const _NotificationItem({this.id, this.type, this.title, this.message, this.icon, this.url, this.data, @JsonKey(name: 'is_public') this.isPublic, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _NotificationItem.fromJson(Map<String, dynamic> json) => _$NotificationItemFromJson(json);

@override final  int? id;
@override final  String? type;
@override final  String? title;
@override final  String? message;
@override final  String? icon;
@override final  String? url;
@override final  NotificationData? data;
@override@JsonKey(name: 'is_public') final  bool? isPublic;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of NotificationItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationItemCopyWith<_NotificationItem> get copyWith => __$NotificationItemCopyWithImpl<_NotificationItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationItem&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.url, url) || other.url == url)&&(identical(other.data, data) || other.data == data)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,message,icon,url,data,isPublic,createdAt,updatedAt);

@override
String toString() {
  return 'NotificationItem(id: $id, type: $type, title: $title, message: $message, icon: $icon, url: $url, data: $data, isPublic: $isPublic, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationItemCopyWith<$Res> implements $NotificationItemCopyWith<$Res> {
  factory _$NotificationItemCopyWith(_NotificationItem value, $Res Function(_NotificationItem) _then) = __$NotificationItemCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? type, String? title, String? message, String? icon, String? url, NotificationData? data,@JsonKey(name: 'is_public') bool? isPublic,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});


@override $NotificationDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$NotificationItemCopyWithImpl<$Res>
    implements _$NotificationItemCopyWith<$Res> {
  __$NotificationItemCopyWithImpl(this._self, this._then);

  final _NotificationItem _self;
  final $Res Function(_NotificationItem) _then;

/// Create a copy of NotificationItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? title = freezed,Object? message = freezed,Object? icon = freezed,Object? url = freezed,Object? data = freezed,Object? isPublic = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_NotificationItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationData?,isPublic: freezed == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of NotificationItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $NotificationDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$NotificationData {

@JsonKey(name: 'content_id') int? get contentId;@JsonKey(name: 'content_type') String? get contentType;@JsonKey(name: 'category_id') int? get categoryId; String? get priority; String? get author; int? get pages;
/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<NotificationData> get copyWith => _$NotificationDataCopyWithImpl<NotificationData>(this as NotificationData, _$identity);

  /// Serializes this NotificationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationData&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.author, author) || other.author == author)&&(identical(other.pages, pages) || other.pages == pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contentId,contentType,categoryId,priority,author,pages);

@override
String toString() {
  return 'NotificationData(contentId: $contentId, contentType: $contentType, categoryId: $categoryId, priority: $priority, author: $author, pages: $pages)';
}


}

/// @nodoc
abstract mixin class $NotificationDataCopyWith<$Res>  {
  factory $NotificationDataCopyWith(NotificationData value, $Res Function(NotificationData) _then) = _$NotificationDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'content_id') int? contentId,@JsonKey(name: 'content_type') String? contentType,@JsonKey(name: 'category_id') int? categoryId, String? priority, String? author, int? pages
});




}
/// @nodoc
class _$NotificationDataCopyWithImpl<$Res>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._self, this._then);

  final NotificationData _self;
  final $Res Function(NotificationData) _then;

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contentId = freezed,Object? contentType = freezed,Object? categoryId = freezed,Object? priority = freezed,Object? author = freezed,Object? pages = freezed,}) {
  return _then(_self.copyWith(
contentId: freezed == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as int?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,pages: freezed == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationData].
extension NotificationDataPatterns on NotificationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationData value)  $default,){
final _that = this;
switch (_that) {
case _NotificationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationData value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'content_id')  int? contentId, @JsonKey(name: 'content_type')  String? contentType, @JsonKey(name: 'category_id')  int? categoryId,  String? priority,  String? author,  int? pages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationData() when $default != null:
return $default(_that.contentId,_that.contentType,_that.categoryId,_that.priority,_that.author,_that.pages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'content_id')  int? contentId, @JsonKey(name: 'content_type')  String? contentType, @JsonKey(name: 'category_id')  int? categoryId,  String? priority,  String? author,  int? pages)  $default,) {final _that = this;
switch (_that) {
case _NotificationData():
return $default(_that.contentId,_that.contentType,_that.categoryId,_that.priority,_that.author,_that.pages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'content_id')  int? contentId, @JsonKey(name: 'content_type')  String? contentType, @JsonKey(name: 'category_id')  int? categoryId,  String? priority,  String? author,  int? pages)?  $default,) {final _that = this;
switch (_that) {
case _NotificationData() when $default != null:
return $default(_that.contentId,_that.contentType,_that.categoryId,_that.priority,_that.author,_that.pages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationData implements NotificationData {
  const _NotificationData({@JsonKey(name: 'content_id') this.contentId, @JsonKey(name: 'content_type') this.contentType, @JsonKey(name: 'category_id') this.categoryId, this.priority, this.author, this.pages});
  factory _NotificationData.fromJson(Map<String, dynamic> json) => _$NotificationDataFromJson(json);

@override@JsonKey(name: 'content_id') final  int? contentId;
@override@JsonKey(name: 'content_type') final  String? contentType;
@override@JsonKey(name: 'category_id') final  int? categoryId;
@override final  String? priority;
@override final  String? author;
@override final  int? pages;

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationDataCopyWith<_NotificationData> get copyWith => __$NotificationDataCopyWithImpl<_NotificationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationData&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.author, author) || other.author == author)&&(identical(other.pages, pages) || other.pages == pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contentId,contentType,categoryId,priority,author,pages);

@override
String toString() {
  return 'NotificationData(contentId: $contentId, contentType: $contentType, categoryId: $categoryId, priority: $priority, author: $author, pages: $pages)';
}


}

/// @nodoc
abstract mixin class _$NotificationDataCopyWith<$Res> implements $NotificationDataCopyWith<$Res> {
  factory _$NotificationDataCopyWith(_NotificationData value, $Res Function(_NotificationData) _then) = __$NotificationDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'content_id') int? contentId,@JsonKey(name: 'content_type') String? contentType,@JsonKey(name: 'category_id') int? categoryId, String? priority, String? author, int? pages
});




}
/// @nodoc
class __$NotificationDataCopyWithImpl<$Res>
    implements _$NotificationDataCopyWith<$Res> {
  __$NotificationDataCopyWithImpl(this._self, this._then);

  final _NotificationData _self;
  final $Res Function(_NotificationData) _then;

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contentId = freezed,Object? contentType = freezed,Object? categoryId = freezed,Object? priority = freezed,Object? author = freezed,Object? pages = freezed,}) {
  return _then(_NotificationData(
contentId: freezed == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as int?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,pages: freezed == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$NotificationMeta {

 NotificationPagination? get pagination;@JsonKey(name: 'total_count') int? get totalCount;@JsonKey(name: 'device_id') String? get deviceId;@JsonKey(name: 'response_info') NotificationResponseInfo? get responseInfo;
/// Create a copy of NotificationMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationMetaCopyWith<NotificationMeta> get copyWith => _$NotificationMetaCopyWithImpl<NotificationMeta>(this as NotificationMeta, _$identity);

  /// Serializes this NotificationMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationMeta&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.responseInfo, responseInfo) || other.responseInfo == responseInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pagination,totalCount,deviceId,responseInfo);

@override
String toString() {
  return 'NotificationMeta(pagination: $pagination, totalCount: $totalCount, deviceId: $deviceId, responseInfo: $responseInfo)';
}


}

/// @nodoc
abstract mixin class $NotificationMetaCopyWith<$Res>  {
  factory $NotificationMetaCopyWith(NotificationMeta value, $Res Function(NotificationMeta) _then) = _$NotificationMetaCopyWithImpl;
@useResult
$Res call({
 NotificationPagination? pagination,@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'response_info') NotificationResponseInfo? responseInfo
});


$NotificationPaginationCopyWith<$Res>? get pagination;$NotificationResponseInfoCopyWith<$Res>? get responseInfo;

}
/// @nodoc
class _$NotificationMetaCopyWithImpl<$Res>
    implements $NotificationMetaCopyWith<$Res> {
  _$NotificationMetaCopyWithImpl(this._self, this._then);

  final NotificationMeta _self;
  final $Res Function(NotificationMeta) _then;

/// Create a copy of NotificationMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagination = freezed,Object? totalCount = freezed,Object? deviceId = freezed,Object? responseInfo = freezed,}) {
  return _then(_self.copyWith(
pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as NotificationPagination?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as NotificationResponseInfo?,
  ));
}
/// Create a copy of NotificationMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $NotificationPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}/// Create a copy of NotificationMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationResponseInfoCopyWith<$Res>? get responseInfo {
    if (_self.responseInfo == null) {
    return null;
  }

  return $NotificationResponseInfoCopyWith<$Res>(_self.responseInfo!, (value) {
    return _then(_self.copyWith(responseInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationMeta].
extension NotificationMetaPatterns on NotificationMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationMeta value)  $default,){
final _that = this;
switch (_that) {
case _NotificationMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationMeta value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NotificationPagination? pagination, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'response_info')  NotificationResponseInfo? responseInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationMeta() when $default != null:
return $default(_that.pagination,_that.totalCount,_that.deviceId,_that.responseInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NotificationPagination? pagination, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'response_info')  NotificationResponseInfo? responseInfo)  $default,) {final _that = this;
switch (_that) {
case _NotificationMeta():
return $default(_that.pagination,_that.totalCount,_that.deviceId,_that.responseInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NotificationPagination? pagination, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'response_info')  NotificationResponseInfo? responseInfo)?  $default,) {final _that = this;
switch (_that) {
case _NotificationMeta() when $default != null:
return $default(_that.pagination,_that.totalCount,_that.deviceId,_that.responseInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationMeta implements NotificationMeta {
  const _NotificationMeta({this.pagination, @JsonKey(name: 'total_count') this.totalCount, @JsonKey(name: 'device_id') this.deviceId, @JsonKey(name: 'response_info') this.responseInfo});
  factory _NotificationMeta.fromJson(Map<String, dynamic> json) => _$NotificationMetaFromJson(json);

@override final  NotificationPagination? pagination;
@override@JsonKey(name: 'total_count') final  int? totalCount;
@override@JsonKey(name: 'device_id') final  String? deviceId;
@override@JsonKey(name: 'response_info') final  NotificationResponseInfo? responseInfo;

/// Create a copy of NotificationMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationMetaCopyWith<_NotificationMeta> get copyWith => __$NotificationMetaCopyWithImpl<_NotificationMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationMeta&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.responseInfo, responseInfo) || other.responseInfo == responseInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pagination,totalCount,deviceId,responseInfo);

@override
String toString() {
  return 'NotificationMeta(pagination: $pagination, totalCount: $totalCount, deviceId: $deviceId, responseInfo: $responseInfo)';
}


}

/// @nodoc
abstract mixin class _$NotificationMetaCopyWith<$Res> implements $NotificationMetaCopyWith<$Res> {
  factory _$NotificationMetaCopyWith(_NotificationMeta value, $Res Function(_NotificationMeta) _then) = __$NotificationMetaCopyWithImpl;
@override @useResult
$Res call({
 NotificationPagination? pagination,@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'response_info') NotificationResponseInfo? responseInfo
});


@override $NotificationPaginationCopyWith<$Res>? get pagination;@override $NotificationResponseInfoCopyWith<$Res>? get responseInfo;

}
/// @nodoc
class __$NotificationMetaCopyWithImpl<$Res>
    implements _$NotificationMetaCopyWith<$Res> {
  __$NotificationMetaCopyWithImpl(this._self, this._then);

  final _NotificationMeta _self;
  final $Res Function(_NotificationMeta) _then;

/// Create a copy of NotificationMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagination = freezed,Object? totalCount = freezed,Object? deviceId = freezed,Object? responseInfo = freezed,}) {
  return _then(_NotificationMeta(
pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as NotificationPagination?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as NotificationResponseInfo?,
  ));
}

/// Create a copy of NotificationMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $NotificationPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}/// Create a copy of NotificationMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationResponseInfoCopyWith<$Res>? get responseInfo {
    if (_self.responseInfo == null) {
    return null;
  }

  return $NotificationResponseInfoCopyWith<$Res>(_self.responseInfo!, (value) {
    return _then(_self.copyWith(responseInfo: value));
  });
}
}


/// @nodoc
mixin _$NotificationPagination {

 int? get total; int? get count;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'last_page') int? get lastPage; int? get from; int? get to;
/// Create a copy of NotificationPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPaginationCopyWith<NotificationPagination> get copyWith => _$NotificationPaginationCopyWithImpl<NotificationPagination>(this as NotificationPagination, _$identity);

  /// Serializes this NotificationPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'NotificationPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $NotificationPaginationCopyWith<$Res>  {
  factory $NotificationPaginationCopyWith(NotificationPagination value, $Res Function(NotificationPagination) _then) = _$NotificationPaginationCopyWithImpl;
@useResult
$Res call({
 int? total, int? count,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage, int? from, int? to
});




}
/// @nodoc
class _$NotificationPaginationCopyWithImpl<$Res>
    implements $NotificationPaginationCopyWith<$Res> {
  _$NotificationPaginationCopyWithImpl(this._self, this._then);

  final NotificationPagination _self;
  final $Res Function(NotificationPagination) _then;

/// Create a copy of NotificationPagination
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


/// Adds pattern-matching-related methods to [NotificationPagination].
extension NotificationPaginationPatterns on NotificationPagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPagination value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPagination value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPagination() when $default != null:
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
case _NotificationPagination() when $default != null:
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
case _NotificationPagination():
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
case _NotificationPagination() when $default != null:
return $default(_that.total,_that.count,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationPagination implements NotificationPagination {
  const _NotificationPagination({this.total, this.count, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'last_page') this.lastPage, this.from, this.to});
  factory _NotificationPagination.fromJson(Map<String, dynamic> json) => _$NotificationPaginationFromJson(json);

@override final  int? total;
@override final  int? count;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'last_page') final  int? lastPage;
@override final  int? from;
@override final  int? to;

/// Create a copy of NotificationPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPaginationCopyWith<_NotificationPagination> get copyWith => __$NotificationPaginationCopyWithImpl<_NotificationPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'NotificationPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$NotificationPaginationCopyWith<$Res> implements $NotificationPaginationCopyWith<$Res> {
  factory _$NotificationPaginationCopyWith(_NotificationPagination value, $Res Function(_NotificationPagination) _then) = __$NotificationPaginationCopyWithImpl;
@override @useResult
$Res call({
 int? total, int? count,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage, int? from, int? to
});




}
/// @nodoc
class __$NotificationPaginationCopyWithImpl<$Res>
    implements _$NotificationPaginationCopyWith<$Res> {
  __$NotificationPaginationCopyWithImpl(this._self, this._then);

  final _NotificationPagination _self;
  final $Res Function(_NotificationPagination) _then;

/// Create a copy of NotificationPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? count = freezed,Object? perPage = freezed,Object? currentPage = freezed,Object? lastPage = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_NotificationPagination(
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
mixin _$NotificationResponseInfo {

 String? get timestamp;@JsonKey(name: 'api_version') String? get apiVersion;@JsonKey(name: 'endpoint') String? get endpoint;@JsonKey(name: 'content_type') String? get contentType;
/// Create a copy of NotificationResponseInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationResponseInfoCopyWith<NotificationResponseInfo> get copyWith => _$NotificationResponseInfoCopyWithImpl<NotificationResponseInfo>(this as NotificationResponseInfo, _$identity);

  /// Serializes this NotificationResponseInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationResponseInfo&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,apiVersion,endpoint,contentType);

@override
String toString() {
  return 'NotificationResponseInfo(timestamp: $timestamp, apiVersion: $apiVersion, endpoint: $endpoint, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class $NotificationResponseInfoCopyWith<$Res>  {
  factory $NotificationResponseInfoCopyWith(NotificationResponseInfo value, $Res Function(NotificationResponseInfo) _then) = _$NotificationResponseInfoCopyWithImpl;
@useResult
$Res call({
 String? timestamp,@JsonKey(name: 'api_version') String? apiVersion,@JsonKey(name: 'endpoint') String? endpoint,@JsonKey(name: 'content_type') String? contentType
});




}
/// @nodoc
class _$NotificationResponseInfoCopyWithImpl<$Res>
    implements $NotificationResponseInfoCopyWith<$Res> {
  _$NotificationResponseInfoCopyWithImpl(this._self, this._then);

  final NotificationResponseInfo _self;
  final $Res Function(NotificationResponseInfo) _then;

/// Create a copy of NotificationResponseInfo
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


/// Adds pattern-matching-related methods to [NotificationResponseInfo].
extension NotificationResponseInfoPatterns on NotificationResponseInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationResponseInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationResponseInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationResponseInfo value)  $default,){
final _that = this;
switch (_that) {
case _NotificationResponseInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationResponseInfo value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationResponseInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? timestamp, @JsonKey(name: 'api_version')  String? apiVersion, @JsonKey(name: 'endpoint')  String? endpoint, @JsonKey(name: 'content_type')  String? contentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationResponseInfo() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? timestamp, @JsonKey(name: 'api_version')  String? apiVersion, @JsonKey(name: 'endpoint')  String? endpoint, @JsonKey(name: 'content_type')  String? contentType)  $default,) {final _that = this;
switch (_that) {
case _NotificationResponseInfo():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? timestamp, @JsonKey(name: 'api_version')  String? apiVersion, @JsonKey(name: 'endpoint')  String? endpoint, @JsonKey(name: 'content_type')  String? contentType)?  $default,) {final _that = this;
switch (_that) {
case _NotificationResponseInfo() when $default != null:
return $default(_that.timestamp,_that.apiVersion,_that.endpoint,_that.contentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationResponseInfo implements NotificationResponseInfo {
  const _NotificationResponseInfo({this.timestamp, @JsonKey(name: 'api_version') this.apiVersion, @JsonKey(name: 'endpoint') this.endpoint, @JsonKey(name: 'content_type') this.contentType});
  factory _NotificationResponseInfo.fromJson(Map<String, dynamic> json) => _$NotificationResponseInfoFromJson(json);

@override final  String? timestamp;
@override@JsonKey(name: 'api_version') final  String? apiVersion;
@override@JsonKey(name: 'endpoint') final  String? endpoint;
@override@JsonKey(name: 'content_type') final  String? contentType;

/// Create a copy of NotificationResponseInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationResponseInfoCopyWith<_NotificationResponseInfo> get copyWith => __$NotificationResponseInfoCopyWithImpl<_NotificationResponseInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationResponseInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationResponseInfo&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,apiVersion,endpoint,contentType);

@override
String toString() {
  return 'NotificationResponseInfo(timestamp: $timestamp, apiVersion: $apiVersion, endpoint: $endpoint, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class _$NotificationResponseInfoCopyWith<$Res> implements $NotificationResponseInfoCopyWith<$Res> {
  factory _$NotificationResponseInfoCopyWith(_NotificationResponseInfo value, $Res Function(_NotificationResponseInfo) _then) = __$NotificationResponseInfoCopyWithImpl;
@override @useResult
$Res call({
 String? timestamp,@JsonKey(name: 'api_version') String? apiVersion,@JsonKey(name: 'endpoint') String? endpoint,@JsonKey(name: 'content_type') String? contentType
});




}
/// @nodoc
class __$NotificationResponseInfoCopyWithImpl<$Res>
    implements _$NotificationResponseInfoCopyWith<$Res> {
  __$NotificationResponseInfoCopyWithImpl(this._self, this._then);

  final _NotificationResponseInfo _self;
  final $Res Function(_NotificationResponseInfo) _then;

/// Create a copy of NotificationResponseInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = freezed,Object? apiVersion = freezed,Object? endpoint = freezed,Object? contentType = freezed,}) {
  return _then(_NotificationResponseInfo(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,apiVersion: freezed == apiVersion ? _self.apiVersion : apiVersion // ignore: cast_nullable_to_non_nullable
as String?,endpoint: freezed == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
