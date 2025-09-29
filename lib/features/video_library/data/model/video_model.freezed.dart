// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoResponse {

 String get status; List<VideoData> get data; VideoMeta? get meta;
/// Create a copy of VideoResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoResponseCopyWith<VideoResponse> get copyWith => _$VideoResponseCopyWithImpl<VideoResponse>(this as VideoResponse, _$identity);

  /// Serializes this VideoResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'VideoResponse(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $VideoResponseCopyWith<$Res>  {
  factory $VideoResponseCopyWith(VideoResponse value, $Res Function(VideoResponse) _then) = _$VideoResponseCopyWithImpl;
@useResult
$Res call({
 String status, List<VideoData> data, VideoMeta? meta
});


$VideoMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$VideoResponseCopyWithImpl<$Res>
    implements $VideoResponseCopyWith<$Res> {
  _$VideoResponseCopyWithImpl(this._self, this._then);

  final VideoResponse _self;
  final $Res Function(VideoResponse) _then;

/// Create a copy of VideoResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<VideoData>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as VideoMeta?,
  ));
}
/// Create a copy of VideoResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $VideoMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [VideoResponse].
extension VideoResponsePatterns on VideoResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoResponse value)  $default,){
final _that = this;
switch (_that) {
case _VideoResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoResponse value)?  $default,){
final _that = this;
switch (_that) {
case _VideoResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  List<VideoData> data,  VideoMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  List<VideoData> data,  VideoMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _VideoResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  List<VideoData> data,  VideoMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _VideoResponse() when $default != null:
return $default(_that.status,_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoResponse implements VideoResponse {
  const _VideoResponse({required this.status, required final  List<VideoData> data, this.meta}): _data = data;
  factory _VideoResponse.fromJson(Map<String, dynamic> json) => _$VideoResponseFromJson(json);

@override final  String status;
 final  List<VideoData> _data;
@override List<VideoData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  VideoMeta? meta;

/// Create a copy of VideoResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoResponseCopyWith<_VideoResponse> get copyWith => __$VideoResponseCopyWithImpl<_VideoResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'VideoResponse(status: $status, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$VideoResponseCopyWith<$Res> implements $VideoResponseCopyWith<$Res> {
  factory _$VideoResponseCopyWith(_VideoResponse value, $Res Function(_VideoResponse) _then) = __$VideoResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, List<VideoData> data, VideoMeta? meta
});


@override $VideoMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$VideoResponseCopyWithImpl<$Res>
    implements _$VideoResponseCopyWith<$Res> {
  __$VideoResponseCopyWithImpl(this._self, this._then);

  final _VideoResponse _self;
  final $Res Function(_VideoResponse) _then;

/// Create a copy of VideoResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,Object? meta = freezed,}) {
  return _then(_VideoResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<VideoData>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as VideoMeta?,
  ));
}

/// Create a copy of VideoResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $VideoMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$VideoData {

@JsonKey(name: 'video_id') int get videoId;@JsonKey(name: 'video_title') String get videoTitle;@JsonKey(name: 'video_summary') String get videoSummary;@JsonKey(name: 'video_des') String get videoDes;@JsonKey(name: 'video_cat_id')@IntStringConverter() String get videoCatId;@JsonKey(name: 'video_pic') String get videoPic;@JsonKey(name: 'video_visitor')@IntStringConverter() String get videoVisitor;@JsonKey(name: 'video_priority')@IntStringConverter() String get videoPriority;@JsonKey(name: 'video_date') String get videoDate;@JsonKey(name: 'video_active')@IntStringConverter() String get videoActive;@JsonKey(name: 'video_youtube_id') String get videoYoutubeId;@JsonKey(name: 'video_file')@IntStringConverter() String get videoFile;@JsonKey(name: 'video_source') String get videoSource;@JsonKey(name: 'video_source_url') String get videoSourceUrl;@JsonKey(name: 'video_type') String get videoType;@JsonKey(name: 'video_embed_url') String get videoEmbedUrl;
/// Create a copy of VideoData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoDataCopyWith<VideoData> get copyWith => _$VideoDataCopyWithImpl<VideoData>(this as VideoData, _$identity);

  /// Serializes this VideoData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoData&&(identical(other.videoId, videoId) || other.videoId == videoId)&&(identical(other.videoTitle, videoTitle) || other.videoTitle == videoTitle)&&(identical(other.videoSummary, videoSummary) || other.videoSummary == videoSummary)&&(identical(other.videoDes, videoDes) || other.videoDes == videoDes)&&(identical(other.videoCatId, videoCatId) || other.videoCatId == videoCatId)&&(identical(other.videoPic, videoPic) || other.videoPic == videoPic)&&(identical(other.videoVisitor, videoVisitor) || other.videoVisitor == videoVisitor)&&(identical(other.videoPriority, videoPriority) || other.videoPriority == videoPriority)&&(identical(other.videoDate, videoDate) || other.videoDate == videoDate)&&(identical(other.videoActive, videoActive) || other.videoActive == videoActive)&&(identical(other.videoYoutubeId, videoYoutubeId) || other.videoYoutubeId == videoYoutubeId)&&(identical(other.videoFile, videoFile) || other.videoFile == videoFile)&&(identical(other.videoSource, videoSource) || other.videoSource == videoSource)&&(identical(other.videoSourceUrl, videoSourceUrl) || other.videoSourceUrl == videoSourceUrl)&&(identical(other.videoType, videoType) || other.videoType == videoType)&&(identical(other.videoEmbedUrl, videoEmbedUrl) || other.videoEmbedUrl == videoEmbedUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,videoId,videoTitle,videoSummary,videoDes,videoCatId,videoPic,videoVisitor,videoPriority,videoDate,videoActive,videoYoutubeId,videoFile,videoSource,videoSourceUrl,videoType,videoEmbedUrl);

@override
String toString() {
  return 'VideoData(videoId: $videoId, videoTitle: $videoTitle, videoSummary: $videoSummary, videoDes: $videoDes, videoCatId: $videoCatId, videoPic: $videoPic, videoVisitor: $videoVisitor, videoPriority: $videoPriority, videoDate: $videoDate, videoActive: $videoActive, videoYoutubeId: $videoYoutubeId, videoFile: $videoFile, videoSource: $videoSource, videoSourceUrl: $videoSourceUrl, videoType: $videoType, videoEmbedUrl: $videoEmbedUrl)';
}


}

/// @nodoc
abstract mixin class $VideoDataCopyWith<$Res>  {
  factory $VideoDataCopyWith(VideoData value, $Res Function(VideoData) _then) = _$VideoDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'video_id') int videoId,@JsonKey(name: 'video_title') String videoTitle,@JsonKey(name: 'video_summary') String videoSummary,@JsonKey(name: 'video_des') String videoDes,@JsonKey(name: 'video_cat_id')@IntStringConverter() String videoCatId,@JsonKey(name: 'video_pic') String videoPic,@JsonKey(name: 'video_visitor')@IntStringConverter() String videoVisitor,@JsonKey(name: 'video_priority')@IntStringConverter() String videoPriority,@JsonKey(name: 'video_date') String videoDate,@JsonKey(name: 'video_active')@IntStringConverter() String videoActive,@JsonKey(name: 'video_youtube_id') String videoYoutubeId,@JsonKey(name: 'video_file')@IntStringConverter() String videoFile,@JsonKey(name: 'video_source') String videoSource,@JsonKey(name: 'video_source_url') String videoSourceUrl,@JsonKey(name: 'video_type') String videoType,@JsonKey(name: 'video_embed_url') String videoEmbedUrl
});




}
/// @nodoc
class _$VideoDataCopyWithImpl<$Res>
    implements $VideoDataCopyWith<$Res> {
  _$VideoDataCopyWithImpl(this._self, this._then);

  final VideoData _self;
  final $Res Function(VideoData) _then;

/// Create a copy of VideoData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? videoId = null,Object? videoTitle = null,Object? videoSummary = null,Object? videoDes = null,Object? videoCatId = null,Object? videoPic = null,Object? videoVisitor = null,Object? videoPriority = null,Object? videoDate = null,Object? videoActive = null,Object? videoYoutubeId = null,Object? videoFile = null,Object? videoSource = null,Object? videoSourceUrl = null,Object? videoType = null,Object? videoEmbedUrl = null,}) {
  return _then(_self.copyWith(
videoId: null == videoId ? _self.videoId : videoId // ignore: cast_nullable_to_non_nullable
as int,videoTitle: null == videoTitle ? _self.videoTitle : videoTitle // ignore: cast_nullable_to_non_nullable
as String,videoSummary: null == videoSummary ? _self.videoSummary : videoSummary // ignore: cast_nullable_to_non_nullable
as String,videoDes: null == videoDes ? _self.videoDes : videoDes // ignore: cast_nullable_to_non_nullable
as String,videoCatId: null == videoCatId ? _self.videoCatId : videoCatId // ignore: cast_nullable_to_non_nullable
as String,videoPic: null == videoPic ? _self.videoPic : videoPic // ignore: cast_nullable_to_non_nullable
as String,videoVisitor: null == videoVisitor ? _self.videoVisitor : videoVisitor // ignore: cast_nullable_to_non_nullable
as String,videoPriority: null == videoPriority ? _self.videoPriority : videoPriority // ignore: cast_nullable_to_non_nullable
as String,videoDate: null == videoDate ? _self.videoDate : videoDate // ignore: cast_nullable_to_non_nullable
as String,videoActive: null == videoActive ? _self.videoActive : videoActive // ignore: cast_nullable_to_non_nullable
as String,videoYoutubeId: null == videoYoutubeId ? _self.videoYoutubeId : videoYoutubeId // ignore: cast_nullable_to_non_nullable
as String,videoFile: null == videoFile ? _self.videoFile : videoFile // ignore: cast_nullable_to_non_nullable
as String,videoSource: null == videoSource ? _self.videoSource : videoSource // ignore: cast_nullable_to_non_nullable
as String,videoSourceUrl: null == videoSourceUrl ? _self.videoSourceUrl : videoSourceUrl // ignore: cast_nullable_to_non_nullable
as String,videoType: null == videoType ? _self.videoType : videoType // ignore: cast_nullable_to_non_nullable
as String,videoEmbedUrl: null == videoEmbedUrl ? _self.videoEmbedUrl : videoEmbedUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoData].
extension VideoDataPatterns on VideoData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoData value)  $default,){
final _that = this;
switch (_that) {
case _VideoData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoData value)?  $default,){
final _that = this;
switch (_that) {
case _VideoData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'video_id')  int videoId, @JsonKey(name: 'video_title')  String videoTitle, @JsonKey(name: 'video_summary')  String videoSummary, @JsonKey(name: 'video_des')  String videoDes, @JsonKey(name: 'video_cat_id')@IntStringConverter()  String videoCatId, @JsonKey(name: 'video_pic')  String videoPic, @JsonKey(name: 'video_visitor')@IntStringConverter()  String videoVisitor, @JsonKey(name: 'video_priority')@IntStringConverter()  String videoPriority, @JsonKey(name: 'video_date')  String videoDate, @JsonKey(name: 'video_active')@IntStringConverter()  String videoActive, @JsonKey(name: 'video_youtube_id')  String videoYoutubeId, @JsonKey(name: 'video_file')@IntStringConverter()  String videoFile, @JsonKey(name: 'video_source')  String videoSource, @JsonKey(name: 'video_source_url')  String videoSourceUrl, @JsonKey(name: 'video_type')  String videoType, @JsonKey(name: 'video_embed_url')  String videoEmbedUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoData() when $default != null:
return $default(_that.videoId,_that.videoTitle,_that.videoSummary,_that.videoDes,_that.videoCatId,_that.videoPic,_that.videoVisitor,_that.videoPriority,_that.videoDate,_that.videoActive,_that.videoYoutubeId,_that.videoFile,_that.videoSource,_that.videoSourceUrl,_that.videoType,_that.videoEmbedUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'video_id')  int videoId, @JsonKey(name: 'video_title')  String videoTitle, @JsonKey(name: 'video_summary')  String videoSummary, @JsonKey(name: 'video_des')  String videoDes, @JsonKey(name: 'video_cat_id')@IntStringConverter()  String videoCatId, @JsonKey(name: 'video_pic')  String videoPic, @JsonKey(name: 'video_visitor')@IntStringConverter()  String videoVisitor, @JsonKey(name: 'video_priority')@IntStringConverter()  String videoPriority, @JsonKey(name: 'video_date')  String videoDate, @JsonKey(name: 'video_active')@IntStringConverter()  String videoActive, @JsonKey(name: 'video_youtube_id')  String videoYoutubeId, @JsonKey(name: 'video_file')@IntStringConverter()  String videoFile, @JsonKey(name: 'video_source')  String videoSource, @JsonKey(name: 'video_source_url')  String videoSourceUrl, @JsonKey(name: 'video_type')  String videoType, @JsonKey(name: 'video_embed_url')  String videoEmbedUrl)  $default,) {final _that = this;
switch (_that) {
case _VideoData():
return $default(_that.videoId,_that.videoTitle,_that.videoSummary,_that.videoDes,_that.videoCatId,_that.videoPic,_that.videoVisitor,_that.videoPriority,_that.videoDate,_that.videoActive,_that.videoYoutubeId,_that.videoFile,_that.videoSource,_that.videoSourceUrl,_that.videoType,_that.videoEmbedUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'video_id')  int videoId, @JsonKey(name: 'video_title')  String videoTitle, @JsonKey(name: 'video_summary')  String videoSummary, @JsonKey(name: 'video_des')  String videoDes, @JsonKey(name: 'video_cat_id')@IntStringConverter()  String videoCatId, @JsonKey(name: 'video_pic')  String videoPic, @JsonKey(name: 'video_visitor')@IntStringConverter()  String videoVisitor, @JsonKey(name: 'video_priority')@IntStringConverter()  String videoPriority, @JsonKey(name: 'video_date')  String videoDate, @JsonKey(name: 'video_active')@IntStringConverter()  String videoActive, @JsonKey(name: 'video_youtube_id')  String videoYoutubeId, @JsonKey(name: 'video_file')@IntStringConverter()  String videoFile, @JsonKey(name: 'video_source')  String videoSource, @JsonKey(name: 'video_source_url')  String videoSourceUrl, @JsonKey(name: 'video_type')  String videoType, @JsonKey(name: 'video_embed_url')  String videoEmbedUrl)?  $default,) {final _that = this;
switch (_that) {
case _VideoData() when $default != null:
return $default(_that.videoId,_that.videoTitle,_that.videoSummary,_that.videoDes,_that.videoCatId,_that.videoPic,_that.videoVisitor,_that.videoPriority,_that.videoDate,_that.videoActive,_that.videoYoutubeId,_that.videoFile,_that.videoSource,_that.videoSourceUrl,_that.videoType,_that.videoEmbedUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoData implements VideoData {
  const _VideoData({@JsonKey(name: 'video_id') required this.videoId, @JsonKey(name: 'video_title') required this.videoTitle, @JsonKey(name: 'video_summary') required this.videoSummary, @JsonKey(name: 'video_des') required this.videoDes, @JsonKey(name: 'video_cat_id')@IntStringConverter() required this.videoCatId, @JsonKey(name: 'video_pic') required this.videoPic, @JsonKey(name: 'video_visitor')@IntStringConverter() required this.videoVisitor, @JsonKey(name: 'video_priority')@IntStringConverter() required this.videoPriority, @JsonKey(name: 'video_date') required this.videoDate, @JsonKey(name: 'video_active')@IntStringConverter() required this.videoActive, @JsonKey(name: 'video_youtube_id') required this.videoYoutubeId, @JsonKey(name: 'video_file')@IntStringConverter() required this.videoFile, @JsonKey(name: 'video_source') required this.videoSource, @JsonKey(name: 'video_source_url') required this.videoSourceUrl, @JsonKey(name: 'video_type') required this.videoType, @JsonKey(name: 'video_embed_url') required this.videoEmbedUrl});
  factory _VideoData.fromJson(Map<String, dynamic> json) => _$VideoDataFromJson(json);

@override@JsonKey(name: 'video_id') final  int videoId;
@override@JsonKey(name: 'video_title') final  String videoTitle;
@override@JsonKey(name: 'video_summary') final  String videoSummary;
@override@JsonKey(name: 'video_des') final  String videoDes;
@override@JsonKey(name: 'video_cat_id')@IntStringConverter() final  String videoCatId;
@override@JsonKey(name: 'video_pic') final  String videoPic;
@override@JsonKey(name: 'video_visitor')@IntStringConverter() final  String videoVisitor;
@override@JsonKey(name: 'video_priority')@IntStringConverter() final  String videoPriority;
@override@JsonKey(name: 'video_date') final  String videoDate;
@override@JsonKey(name: 'video_active')@IntStringConverter() final  String videoActive;
@override@JsonKey(name: 'video_youtube_id') final  String videoYoutubeId;
@override@JsonKey(name: 'video_file')@IntStringConverter() final  String videoFile;
@override@JsonKey(name: 'video_source') final  String videoSource;
@override@JsonKey(name: 'video_source_url') final  String videoSourceUrl;
@override@JsonKey(name: 'video_type') final  String videoType;
@override@JsonKey(name: 'video_embed_url') final  String videoEmbedUrl;

/// Create a copy of VideoData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoDataCopyWith<_VideoData> get copyWith => __$VideoDataCopyWithImpl<_VideoData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoData&&(identical(other.videoId, videoId) || other.videoId == videoId)&&(identical(other.videoTitle, videoTitle) || other.videoTitle == videoTitle)&&(identical(other.videoSummary, videoSummary) || other.videoSummary == videoSummary)&&(identical(other.videoDes, videoDes) || other.videoDes == videoDes)&&(identical(other.videoCatId, videoCatId) || other.videoCatId == videoCatId)&&(identical(other.videoPic, videoPic) || other.videoPic == videoPic)&&(identical(other.videoVisitor, videoVisitor) || other.videoVisitor == videoVisitor)&&(identical(other.videoPriority, videoPriority) || other.videoPriority == videoPriority)&&(identical(other.videoDate, videoDate) || other.videoDate == videoDate)&&(identical(other.videoActive, videoActive) || other.videoActive == videoActive)&&(identical(other.videoYoutubeId, videoYoutubeId) || other.videoYoutubeId == videoYoutubeId)&&(identical(other.videoFile, videoFile) || other.videoFile == videoFile)&&(identical(other.videoSource, videoSource) || other.videoSource == videoSource)&&(identical(other.videoSourceUrl, videoSourceUrl) || other.videoSourceUrl == videoSourceUrl)&&(identical(other.videoType, videoType) || other.videoType == videoType)&&(identical(other.videoEmbedUrl, videoEmbedUrl) || other.videoEmbedUrl == videoEmbedUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,videoId,videoTitle,videoSummary,videoDes,videoCatId,videoPic,videoVisitor,videoPriority,videoDate,videoActive,videoYoutubeId,videoFile,videoSource,videoSourceUrl,videoType,videoEmbedUrl);

@override
String toString() {
  return 'VideoData(videoId: $videoId, videoTitle: $videoTitle, videoSummary: $videoSummary, videoDes: $videoDes, videoCatId: $videoCatId, videoPic: $videoPic, videoVisitor: $videoVisitor, videoPriority: $videoPriority, videoDate: $videoDate, videoActive: $videoActive, videoYoutubeId: $videoYoutubeId, videoFile: $videoFile, videoSource: $videoSource, videoSourceUrl: $videoSourceUrl, videoType: $videoType, videoEmbedUrl: $videoEmbedUrl)';
}


}

/// @nodoc
abstract mixin class _$VideoDataCopyWith<$Res> implements $VideoDataCopyWith<$Res> {
  factory _$VideoDataCopyWith(_VideoData value, $Res Function(_VideoData) _then) = __$VideoDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'video_id') int videoId,@JsonKey(name: 'video_title') String videoTitle,@JsonKey(name: 'video_summary') String videoSummary,@JsonKey(name: 'video_des') String videoDes,@JsonKey(name: 'video_cat_id')@IntStringConverter() String videoCatId,@JsonKey(name: 'video_pic') String videoPic,@JsonKey(name: 'video_visitor')@IntStringConverter() String videoVisitor,@JsonKey(name: 'video_priority')@IntStringConverter() String videoPriority,@JsonKey(name: 'video_date') String videoDate,@JsonKey(name: 'video_active')@IntStringConverter() String videoActive,@JsonKey(name: 'video_youtube_id') String videoYoutubeId,@JsonKey(name: 'video_file')@IntStringConverter() String videoFile,@JsonKey(name: 'video_source') String videoSource,@JsonKey(name: 'video_source_url') String videoSourceUrl,@JsonKey(name: 'video_type') String videoType,@JsonKey(name: 'video_embed_url') String videoEmbedUrl
});




}
/// @nodoc
class __$VideoDataCopyWithImpl<$Res>
    implements _$VideoDataCopyWith<$Res> {
  __$VideoDataCopyWithImpl(this._self, this._then);

  final _VideoData _self;
  final $Res Function(_VideoData) _then;

/// Create a copy of VideoData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? videoId = null,Object? videoTitle = null,Object? videoSummary = null,Object? videoDes = null,Object? videoCatId = null,Object? videoPic = null,Object? videoVisitor = null,Object? videoPriority = null,Object? videoDate = null,Object? videoActive = null,Object? videoYoutubeId = null,Object? videoFile = null,Object? videoSource = null,Object? videoSourceUrl = null,Object? videoType = null,Object? videoEmbedUrl = null,}) {
  return _then(_VideoData(
videoId: null == videoId ? _self.videoId : videoId // ignore: cast_nullable_to_non_nullable
as int,videoTitle: null == videoTitle ? _self.videoTitle : videoTitle // ignore: cast_nullable_to_non_nullable
as String,videoSummary: null == videoSummary ? _self.videoSummary : videoSummary // ignore: cast_nullable_to_non_nullable
as String,videoDes: null == videoDes ? _self.videoDes : videoDes // ignore: cast_nullable_to_non_nullable
as String,videoCatId: null == videoCatId ? _self.videoCatId : videoCatId // ignore: cast_nullable_to_non_nullable
as String,videoPic: null == videoPic ? _self.videoPic : videoPic // ignore: cast_nullable_to_non_nullable
as String,videoVisitor: null == videoVisitor ? _self.videoVisitor : videoVisitor // ignore: cast_nullable_to_non_nullable
as String,videoPriority: null == videoPriority ? _self.videoPriority : videoPriority // ignore: cast_nullable_to_non_nullable
as String,videoDate: null == videoDate ? _self.videoDate : videoDate // ignore: cast_nullable_to_non_nullable
as String,videoActive: null == videoActive ? _self.videoActive : videoActive // ignore: cast_nullable_to_non_nullable
as String,videoYoutubeId: null == videoYoutubeId ? _self.videoYoutubeId : videoYoutubeId // ignore: cast_nullable_to_non_nullable
as String,videoFile: null == videoFile ? _self.videoFile : videoFile // ignore: cast_nullable_to_non_nullable
as String,videoSource: null == videoSource ? _self.videoSource : videoSource // ignore: cast_nullable_to_non_nullable
as String,videoSourceUrl: null == videoSourceUrl ? _self.videoSourceUrl : videoSourceUrl // ignore: cast_nullable_to_non_nullable
as String,videoType: null == videoType ? _self.videoType : videoType // ignore: cast_nullable_to_non_nullable
as String,videoEmbedUrl: null == videoEmbedUrl ? _self.videoEmbedUrl : videoEmbedUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$VideoMeta {

 VideoPagination? get pagination; VideoFilters? get filters;
/// Create a copy of VideoMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoMetaCopyWith<VideoMeta> get copyWith => _$VideoMetaCopyWithImpl<VideoMeta>(this as VideoMeta, _$identity);

  /// Serializes this VideoMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoMeta&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.filters, filters) || other.filters == filters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pagination,filters);

@override
String toString() {
  return 'VideoMeta(pagination: $pagination, filters: $filters)';
}


}

/// @nodoc
abstract mixin class $VideoMetaCopyWith<$Res>  {
  factory $VideoMetaCopyWith(VideoMeta value, $Res Function(VideoMeta) _then) = _$VideoMetaCopyWithImpl;
@useResult
$Res call({
 VideoPagination? pagination, VideoFilters? filters
});


$VideoPaginationCopyWith<$Res>? get pagination;$VideoFiltersCopyWith<$Res>? get filters;

}
/// @nodoc
class _$VideoMetaCopyWithImpl<$Res>
    implements $VideoMetaCopyWith<$Res> {
  _$VideoMetaCopyWithImpl(this._self, this._then);

  final VideoMeta _self;
  final $Res Function(VideoMeta) _then;

/// Create a copy of VideoMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagination = freezed,Object? filters = freezed,}) {
  return _then(_self.copyWith(
pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as VideoPagination?,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as VideoFilters?,
  ));
}
/// Create a copy of VideoMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $VideoPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}/// Create a copy of VideoMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoFiltersCopyWith<$Res>? get filters {
    if (_self.filters == null) {
    return null;
  }

  return $VideoFiltersCopyWith<$Res>(_self.filters!, (value) {
    return _then(_self.copyWith(filters: value));
  });
}
}


/// Adds pattern-matching-related methods to [VideoMeta].
extension VideoMetaPatterns on VideoMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoMeta value)  $default,){
final _that = this;
switch (_that) {
case _VideoMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoMeta value)?  $default,){
final _that = this;
switch (_that) {
case _VideoMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( VideoPagination? pagination,  VideoFilters? filters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoMeta() when $default != null:
return $default(_that.pagination,_that.filters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( VideoPagination? pagination,  VideoFilters? filters)  $default,) {final _that = this;
switch (_that) {
case _VideoMeta():
return $default(_that.pagination,_that.filters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( VideoPagination? pagination,  VideoFilters? filters)?  $default,) {final _that = this;
switch (_that) {
case _VideoMeta() when $default != null:
return $default(_that.pagination,_that.filters);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoMeta implements VideoMeta {
  const _VideoMeta({this.pagination, this.filters});
  factory _VideoMeta.fromJson(Map<String, dynamic> json) => _$VideoMetaFromJson(json);

@override final  VideoPagination? pagination;
@override final  VideoFilters? filters;

/// Create a copy of VideoMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoMetaCopyWith<_VideoMeta> get copyWith => __$VideoMetaCopyWithImpl<_VideoMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoMeta&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.filters, filters) || other.filters == filters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pagination,filters);

@override
String toString() {
  return 'VideoMeta(pagination: $pagination, filters: $filters)';
}


}

/// @nodoc
abstract mixin class _$VideoMetaCopyWith<$Res> implements $VideoMetaCopyWith<$Res> {
  factory _$VideoMetaCopyWith(_VideoMeta value, $Res Function(_VideoMeta) _then) = __$VideoMetaCopyWithImpl;
@override @useResult
$Res call({
 VideoPagination? pagination, VideoFilters? filters
});


@override $VideoPaginationCopyWith<$Res>? get pagination;@override $VideoFiltersCopyWith<$Res>? get filters;

}
/// @nodoc
class __$VideoMetaCopyWithImpl<$Res>
    implements _$VideoMetaCopyWith<$Res> {
  __$VideoMetaCopyWithImpl(this._self, this._then);

  final _VideoMeta _self;
  final $Res Function(_VideoMeta) _then;

/// Create a copy of VideoMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagination = freezed,Object? filters = freezed,}) {
  return _then(_VideoMeta(
pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as VideoPagination?,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as VideoFilters?,
  ));
}

/// Create a copy of VideoMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $VideoPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}/// Create a copy of VideoMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoFiltersCopyWith<$Res>? get filters {
    if (_self.filters == null) {
    return null;
  }

  return $VideoFiltersCopyWith<$Res>(_self.filters!, (value) {
    return _then(_self.copyWith(filters: value));
  });
}
}


/// @nodoc
mixin _$VideoPagination {

 int get total; int get count;@JsonKey(name: 'per_page') int get perPage;@JsonKey(name: 'current_page') int get currentPage;@JsonKey(name: 'last_page') int get lastPage; int get from; int get to;
/// Create a copy of VideoPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoPaginationCopyWith<VideoPagination> get copyWith => _$VideoPaginationCopyWithImpl<VideoPagination>(this as VideoPagination, _$identity);

  /// Serializes this VideoPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'VideoPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $VideoPaginationCopyWith<$Res>  {
  factory $VideoPaginationCopyWith(VideoPagination value, $Res Function(VideoPagination) _then) = _$VideoPaginationCopyWithImpl;
@useResult
$Res call({
 int total, int count,@JsonKey(name: 'per_page') int perPage,@JsonKey(name: 'current_page') int currentPage,@JsonKey(name: 'last_page') int lastPage, int from, int to
});




}
/// @nodoc
class _$VideoPaginationCopyWithImpl<$Res>
    implements $VideoPaginationCopyWith<$Res> {
  _$VideoPaginationCopyWithImpl(this._self, this._then);

  final VideoPagination _self;
  final $Res Function(VideoPagination) _then;

/// Create a copy of VideoPagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? count = null,Object? perPage = null,Object? currentPage = null,Object? lastPage = null,Object? from = null,Object? to = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoPagination].
extension VideoPaginationPatterns on VideoPagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoPagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoPagination value)  $default,){
final _that = this;
switch (_that) {
case _VideoPagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoPagination value)?  $default,){
final _that = this;
switch (_that) {
case _VideoPagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int count, @JsonKey(name: 'per_page')  int perPage, @JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'last_page')  int lastPage,  int from,  int to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoPagination() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int count, @JsonKey(name: 'per_page')  int perPage, @JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'last_page')  int lastPage,  int from,  int to)  $default,) {final _that = this;
switch (_that) {
case _VideoPagination():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int count, @JsonKey(name: 'per_page')  int perPage, @JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'last_page')  int lastPage,  int from,  int to)?  $default,) {final _that = this;
switch (_that) {
case _VideoPagination() when $default != null:
return $default(_that.total,_that.count,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoPagination implements VideoPagination {
  const _VideoPagination({required this.total, required this.count, @JsonKey(name: 'per_page') required this.perPage, @JsonKey(name: 'current_page') required this.currentPage, @JsonKey(name: 'last_page') required this.lastPage, required this.from, required this.to});
  factory _VideoPagination.fromJson(Map<String, dynamic> json) => _$VideoPaginationFromJson(json);

@override final  int total;
@override final  int count;
@override@JsonKey(name: 'per_page') final  int perPage;
@override@JsonKey(name: 'current_page') final  int currentPage;
@override@JsonKey(name: 'last_page') final  int lastPage;
@override final  int from;
@override final  int to;

/// Create a copy of VideoPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoPaginationCopyWith<_VideoPagination> get copyWith => __$VideoPaginationCopyWithImpl<_VideoPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,count,perPage,currentPage,lastPage,from,to);

@override
String toString() {
  return 'VideoPagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$VideoPaginationCopyWith<$Res> implements $VideoPaginationCopyWith<$Res> {
  factory _$VideoPaginationCopyWith(_VideoPagination value, $Res Function(_VideoPagination) _then) = __$VideoPaginationCopyWithImpl;
@override @useResult
$Res call({
 int total, int count,@JsonKey(name: 'per_page') int perPage,@JsonKey(name: 'current_page') int currentPage,@JsonKey(name: 'last_page') int lastPage, int from, int to
});




}
/// @nodoc
class __$VideoPaginationCopyWithImpl<$Res>
    implements _$VideoPaginationCopyWith<$Res> {
  __$VideoPaginationCopyWithImpl(this._self, this._then);

  final _VideoPagination _self;
  final $Res Function(_VideoPagination) _then;

/// Create a copy of VideoPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? count = null,Object? perPage = null,Object? currentPage = null,Object? lastPage = null,Object? from = null,Object? to = null,}) {
  return _then(_VideoPagination(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$VideoFilters {

@JsonKey(name: 'applied_filters') VideoAppliedFilters? get appliedFilters;@JsonKey(name: 'available_sorts') List<String> get availableSorts;
/// Create a copy of VideoFilters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoFiltersCopyWith<VideoFilters> get copyWith => _$VideoFiltersCopyWithImpl<VideoFilters>(this as VideoFilters, _$identity);

  /// Serializes this VideoFilters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoFilters&&(identical(other.appliedFilters, appliedFilters) || other.appliedFilters == appliedFilters)&&const DeepCollectionEquality().equals(other.availableSorts, availableSorts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appliedFilters,const DeepCollectionEquality().hash(availableSorts));

@override
String toString() {
  return 'VideoFilters(appliedFilters: $appliedFilters, availableSorts: $availableSorts)';
}


}

/// @nodoc
abstract mixin class $VideoFiltersCopyWith<$Res>  {
  factory $VideoFiltersCopyWith(VideoFilters value, $Res Function(VideoFilters) _then) = _$VideoFiltersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'applied_filters') VideoAppliedFilters? appliedFilters,@JsonKey(name: 'available_sorts') List<String> availableSorts
});


$VideoAppliedFiltersCopyWith<$Res>? get appliedFilters;

}
/// @nodoc
class _$VideoFiltersCopyWithImpl<$Res>
    implements $VideoFiltersCopyWith<$Res> {
  _$VideoFiltersCopyWithImpl(this._self, this._then);

  final VideoFilters _self;
  final $Res Function(VideoFilters) _then;

/// Create a copy of VideoFilters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appliedFilters = freezed,Object? availableSorts = null,}) {
  return _then(_self.copyWith(
appliedFilters: freezed == appliedFilters ? _self.appliedFilters : appliedFilters // ignore: cast_nullable_to_non_nullable
as VideoAppliedFilters?,availableSorts: null == availableSorts ? _self.availableSorts : availableSorts // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of VideoFilters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoAppliedFiltersCopyWith<$Res>? get appliedFilters {
    if (_self.appliedFilters == null) {
    return null;
  }

  return $VideoAppliedFiltersCopyWith<$Res>(_self.appliedFilters!, (value) {
    return _then(_self.copyWith(appliedFilters: value));
  });
}
}


/// Adds pattern-matching-related methods to [VideoFilters].
extension VideoFiltersPatterns on VideoFilters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoFilters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoFilters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoFilters value)  $default,){
final _that = this;
switch (_that) {
case _VideoFilters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoFilters value)?  $default,){
final _that = this;
switch (_that) {
case _VideoFilters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'applied_filters')  VideoAppliedFilters? appliedFilters, @JsonKey(name: 'available_sorts')  List<String> availableSorts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoFilters() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'applied_filters')  VideoAppliedFilters? appliedFilters, @JsonKey(name: 'available_sorts')  List<String> availableSorts)  $default,) {final _that = this;
switch (_that) {
case _VideoFilters():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'applied_filters')  VideoAppliedFilters? appliedFilters, @JsonKey(name: 'available_sorts')  List<String> availableSorts)?  $default,) {final _that = this;
switch (_that) {
case _VideoFilters() when $default != null:
return $default(_that.appliedFilters,_that.availableSorts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoFilters implements VideoFilters {
  const _VideoFilters({@JsonKey(name: 'applied_filters') this.appliedFilters, @JsonKey(name: 'available_sorts') final  List<String> availableSorts = const []}): _availableSorts = availableSorts;
  factory _VideoFilters.fromJson(Map<String, dynamic> json) => _$VideoFiltersFromJson(json);

@override@JsonKey(name: 'applied_filters') final  VideoAppliedFilters? appliedFilters;
 final  List<String> _availableSorts;
@override@JsonKey(name: 'available_sorts') List<String> get availableSorts {
  if (_availableSorts is EqualUnmodifiableListView) return _availableSorts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableSorts);
}


/// Create a copy of VideoFilters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoFiltersCopyWith<_VideoFilters> get copyWith => __$VideoFiltersCopyWithImpl<_VideoFilters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoFiltersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoFilters&&(identical(other.appliedFilters, appliedFilters) || other.appliedFilters == appliedFilters)&&const DeepCollectionEquality().equals(other._availableSorts, _availableSorts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appliedFilters,const DeepCollectionEquality().hash(_availableSorts));

@override
String toString() {
  return 'VideoFilters(appliedFilters: $appliedFilters, availableSorts: $availableSorts)';
}


}

/// @nodoc
abstract mixin class _$VideoFiltersCopyWith<$Res> implements $VideoFiltersCopyWith<$Res> {
  factory _$VideoFiltersCopyWith(_VideoFilters value, $Res Function(_VideoFilters) _then) = __$VideoFiltersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'applied_filters') VideoAppliedFilters? appliedFilters,@JsonKey(name: 'available_sorts') List<String> availableSorts
});


@override $VideoAppliedFiltersCopyWith<$Res>? get appliedFilters;

}
/// @nodoc
class __$VideoFiltersCopyWithImpl<$Res>
    implements _$VideoFiltersCopyWith<$Res> {
  __$VideoFiltersCopyWithImpl(this._self, this._then);

  final _VideoFilters _self;
  final $Res Function(_VideoFilters) _then;

/// Create a copy of VideoFilters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appliedFilters = freezed,Object? availableSorts = null,}) {
  return _then(_VideoFilters(
appliedFilters: freezed == appliedFilters ? _self.appliedFilters : appliedFilters // ignore: cast_nullable_to_non_nullable
as VideoAppliedFilters?,availableSorts: null == availableSorts ? _self._availableSorts : availableSorts // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of VideoFilters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoAppliedFiltersCopyWith<$Res>? get appliedFilters {
    if (_self.appliedFilters == null) {
    return null;
  }

  return $VideoAppliedFiltersCopyWith<$Res>(_self.appliedFilters!, (value) {
    return _then(_self.copyWith(appliedFilters: value));
  });
}
}


/// @nodoc
mixin _$VideoAppliedFilters {

 String get sort; String get perpage;
/// Create a copy of VideoAppliedFilters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoAppliedFiltersCopyWith<VideoAppliedFilters> get copyWith => _$VideoAppliedFiltersCopyWithImpl<VideoAppliedFilters>(this as VideoAppliedFilters, _$identity);

  /// Serializes this VideoAppliedFilters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoAppliedFilters&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.perpage, perpage) || other.perpage == perpage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sort,perpage);

@override
String toString() {
  return 'VideoAppliedFilters(sort: $sort, perpage: $perpage)';
}


}

/// @nodoc
abstract mixin class $VideoAppliedFiltersCopyWith<$Res>  {
  factory $VideoAppliedFiltersCopyWith(VideoAppliedFilters value, $Res Function(VideoAppliedFilters) _then) = _$VideoAppliedFiltersCopyWithImpl;
@useResult
$Res call({
 String sort, String perpage
});




}
/// @nodoc
class _$VideoAppliedFiltersCopyWithImpl<$Res>
    implements $VideoAppliedFiltersCopyWith<$Res> {
  _$VideoAppliedFiltersCopyWithImpl(this._self, this._then);

  final VideoAppliedFilters _self;
  final $Res Function(VideoAppliedFilters) _then;

/// Create a copy of VideoAppliedFilters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sort = null,Object? perpage = null,}) {
  return _then(_self.copyWith(
sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String,perpage: null == perpage ? _self.perpage : perpage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoAppliedFilters].
extension VideoAppliedFiltersPatterns on VideoAppliedFilters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoAppliedFilters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoAppliedFilters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoAppliedFilters value)  $default,){
final _that = this;
switch (_that) {
case _VideoAppliedFilters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoAppliedFilters value)?  $default,){
final _that = this;
switch (_that) {
case _VideoAppliedFilters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sort,  String perpage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoAppliedFilters() when $default != null:
return $default(_that.sort,_that.perpage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sort,  String perpage)  $default,) {final _that = this;
switch (_that) {
case _VideoAppliedFilters():
return $default(_that.sort,_that.perpage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sort,  String perpage)?  $default,) {final _that = this;
switch (_that) {
case _VideoAppliedFilters() when $default != null:
return $default(_that.sort,_that.perpage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoAppliedFilters implements VideoAppliedFilters {
  const _VideoAppliedFilters({required this.sort, required this.perpage});
  factory _VideoAppliedFilters.fromJson(Map<String, dynamic> json) => _$VideoAppliedFiltersFromJson(json);

@override final  String sort;
@override final  String perpage;

/// Create a copy of VideoAppliedFilters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoAppliedFiltersCopyWith<_VideoAppliedFilters> get copyWith => __$VideoAppliedFiltersCopyWithImpl<_VideoAppliedFilters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoAppliedFiltersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoAppliedFilters&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.perpage, perpage) || other.perpage == perpage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sort,perpage);

@override
String toString() {
  return 'VideoAppliedFilters(sort: $sort, perpage: $perpage)';
}


}

/// @nodoc
abstract mixin class _$VideoAppliedFiltersCopyWith<$Res> implements $VideoAppliedFiltersCopyWith<$Res> {
  factory _$VideoAppliedFiltersCopyWith(_VideoAppliedFilters value, $Res Function(_VideoAppliedFilters) _then) = __$VideoAppliedFiltersCopyWithImpl;
@override @useResult
$Res call({
 String sort, String perpage
});




}
/// @nodoc
class __$VideoAppliedFiltersCopyWithImpl<$Res>
    implements _$VideoAppliedFiltersCopyWith<$Res> {
  __$VideoAppliedFiltersCopyWithImpl(this._self, this._then);

  final _VideoAppliedFilters _self;
  final $Res Function(_VideoAppliedFilters) _then;

/// Create a copy of VideoAppliedFilters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sort = null,Object? perpage = null,}) {
  return _then(_VideoAppliedFilters(
sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String,perpage: null == perpage ? _self.perpage : perpage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
