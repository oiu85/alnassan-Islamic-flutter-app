// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsState {

 double get fontSizeMultiplier; double get uiScaleMultiplier; bool get isDarkMode; String get selectedLanguage; String get downloadPath; bool get isLoading; bool get isSaving; String? get errorMessage;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);

  /// Serializes this SettingsState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&(identical(other.fontSizeMultiplier, fontSizeMultiplier) || other.fontSizeMultiplier == fontSizeMultiplier)&&(identical(other.uiScaleMultiplier, uiScaleMultiplier) || other.uiScaleMultiplier == uiScaleMultiplier)&&(identical(other.isDarkMode, isDarkMode) || other.isDarkMode == isDarkMode)&&(identical(other.selectedLanguage, selectedLanguage) || other.selectedLanguage == selectedLanguage)&&(identical(other.downloadPath, downloadPath) || other.downloadPath == downloadPath)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fontSizeMultiplier,uiScaleMultiplier,isDarkMode,selectedLanguage,downloadPath,isLoading,isSaving,errorMessage);

@override
String toString() {
  return 'SettingsState(fontSizeMultiplier: $fontSizeMultiplier, uiScaleMultiplier: $uiScaleMultiplier, isDarkMode: $isDarkMode, selectedLanguage: $selectedLanguage, downloadPath: $downloadPath, isLoading: $isLoading, isSaving: $isSaving, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 double fontSizeMultiplier, double uiScaleMultiplier, bool isDarkMode, String selectedLanguage, String downloadPath, bool isLoading, bool isSaving, String? errorMessage
});




}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fontSizeMultiplier = null,Object? uiScaleMultiplier = null,Object? isDarkMode = null,Object? selectedLanguage = null,Object? downloadPath = null,Object? isLoading = null,Object? isSaving = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
fontSizeMultiplier: null == fontSizeMultiplier ? _self.fontSizeMultiplier : fontSizeMultiplier // ignore: cast_nullable_to_non_nullable
as double,uiScaleMultiplier: null == uiScaleMultiplier ? _self.uiScaleMultiplier : uiScaleMultiplier // ignore: cast_nullable_to_non_nullable
as double,isDarkMode: null == isDarkMode ? _self.isDarkMode : isDarkMode // ignore: cast_nullable_to_non_nullable
as bool,selectedLanguage: null == selectedLanguage ? _self.selectedLanguage : selectedLanguage // ignore: cast_nullable_to_non_nullable
as String,downloadPath: null == downloadPath ? _self.downloadPath : downloadPath // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsState value)  $default,){
final _that = this;
switch (_that) {
case _SettingsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsState value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double fontSizeMultiplier,  double uiScaleMultiplier,  bool isDarkMode,  String selectedLanguage,  String downloadPath,  bool isLoading,  bool isSaving,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.fontSizeMultiplier,_that.uiScaleMultiplier,_that.isDarkMode,_that.selectedLanguage,_that.downloadPath,_that.isLoading,_that.isSaving,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double fontSizeMultiplier,  double uiScaleMultiplier,  bool isDarkMode,  String selectedLanguage,  String downloadPath,  bool isLoading,  bool isSaving,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.fontSizeMultiplier,_that.uiScaleMultiplier,_that.isDarkMode,_that.selectedLanguage,_that.downloadPath,_that.isLoading,_that.isSaving,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double fontSizeMultiplier,  double uiScaleMultiplier,  bool isDarkMode,  String selectedLanguage,  String downloadPath,  bool isLoading,  bool isSaving,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.fontSizeMultiplier,_that.uiScaleMultiplier,_that.isDarkMode,_that.selectedLanguage,_that.downloadPath,_that.isLoading,_that.isSaving,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettingsState implements SettingsState {
  const _SettingsState({this.fontSizeMultiplier = 1.0, this.uiScaleMultiplier = 1.0, this.isDarkMode = false, this.selectedLanguage = 'ar', this.downloadPath = '/storage/emulated/0/Download', this.isLoading = false, this.isSaving = false, this.errorMessage});
  factory _SettingsState.fromJson(Map<String, dynamic> json) => _$SettingsStateFromJson(json);

@override@JsonKey() final  double fontSizeMultiplier;
@override@JsonKey() final  double uiScaleMultiplier;
@override@JsonKey() final  bool isDarkMode;
@override@JsonKey() final  String selectedLanguage;
@override@JsonKey() final  String downloadPath;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSaving;
@override final  String? errorMessage;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<_SettingsState> get copyWith => __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&(identical(other.fontSizeMultiplier, fontSizeMultiplier) || other.fontSizeMultiplier == fontSizeMultiplier)&&(identical(other.uiScaleMultiplier, uiScaleMultiplier) || other.uiScaleMultiplier == uiScaleMultiplier)&&(identical(other.isDarkMode, isDarkMode) || other.isDarkMode == isDarkMode)&&(identical(other.selectedLanguage, selectedLanguage) || other.selectedLanguage == selectedLanguage)&&(identical(other.downloadPath, downloadPath) || other.downloadPath == downloadPath)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fontSizeMultiplier,uiScaleMultiplier,isDarkMode,selectedLanguage,downloadPath,isLoading,isSaving,errorMessage);

@override
String toString() {
  return 'SettingsState(fontSizeMultiplier: $fontSizeMultiplier, uiScaleMultiplier: $uiScaleMultiplier, isDarkMode: $isDarkMode, selectedLanguage: $selectedLanguage, downloadPath: $downloadPath, isLoading: $isLoading, isSaving: $isSaving, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 double fontSizeMultiplier, double uiScaleMultiplier, bool isDarkMode, String selectedLanguage, String downloadPath, bool isLoading, bool isSaving, String? errorMessage
});




}
/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fontSizeMultiplier = null,Object? uiScaleMultiplier = null,Object? isDarkMode = null,Object? selectedLanguage = null,Object? downloadPath = null,Object? isLoading = null,Object? isSaving = null,Object? errorMessage = freezed,}) {
  return _then(_SettingsState(
fontSizeMultiplier: null == fontSizeMultiplier ? _self.fontSizeMultiplier : fontSizeMultiplier // ignore: cast_nullable_to_non_nullable
as double,uiScaleMultiplier: null == uiScaleMultiplier ? _self.uiScaleMultiplier : uiScaleMultiplier // ignore: cast_nullable_to_non_nullable
as double,isDarkMode: null == isDarkMode ? _self.isDarkMode : isDarkMode // ignore: cast_nullable_to_non_nullable
as bool,selectedLanguage: null == selectedLanguage ? _self.selectedLanguage : selectedLanguage // ignore: cast_nullable_to_non_nullable
as String,downloadPath: null == downloadPath ? _self.downloadPath : downloadPath // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
