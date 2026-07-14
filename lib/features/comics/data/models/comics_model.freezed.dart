// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ComicModel {

 String get title; String get description; String get latestChapter; String get thumbnail; String get param; String get detailUrl;
/// Create a copy of ComicModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComicModelCopyWith<ComicModel> get copyWith => _$ComicModelCopyWithImpl<ComicModel>(this as ComicModel, _$identity);

  /// Serializes this ComicModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComicModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.latestChapter, latestChapter) || other.latestChapter == latestChapter)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.param, param) || other.param == param)&&(identical(other.detailUrl, detailUrl) || other.detailUrl == detailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,latestChapter,thumbnail,param,detailUrl);

@override
String toString() {
  return 'ComicModel(title: $title, description: $description, latestChapter: $latestChapter, thumbnail: $thumbnail, param: $param, detailUrl: $detailUrl)';
}


}

/// @nodoc
abstract mixin class $ComicModelCopyWith<$Res>  {
  factory $ComicModelCopyWith(ComicModel value, $Res Function(ComicModel) _then) = _$ComicModelCopyWithImpl;
@useResult
$Res call({
 String title, String description, String latestChapter, String thumbnail, String param, String detailUrl
});




}
/// @nodoc
class _$ComicModelCopyWithImpl<$Res>
    implements $ComicModelCopyWith<$Res> {
  _$ComicModelCopyWithImpl(this._self, this._then);

  final ComicModel _self;
  final $Res Function(ComicModel) _then;

/// Create a copy of ComicModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? latestChapter = null,Object? thumbnail = null,Object? param = null,Object? detailUrl = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,latestChapter: null == latestChapter ? _self.latestChapter : latestChapter // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,detailUrl: null == detailUrl ? _self.detailUrl : detailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ComicModel].
extension ComicModelPatterns on ComicModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComicModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComicModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComicModel value)  $default,){
final _that = this;
switch (_that) {
case _ComicModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComicModel value)?  $default,){
final _that = this;
switch (_that) {
case _ComicModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  String latestChapter,  String thumbnail,  String param,  String detailUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComicModel() when $default != null:
return $default(_that.title,_that.description,_that.latestChapter,_that.thumbnail,_that.param,_that.detailUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  String latestChapter,  String thumbnail,  String param,  String detailUrl)  $default,) {final _that = this;
switch (_that) {
case _ComicModel():
return $default(_that.title,_that.description,_that.latestChapter,_that.thumbnail,_that.param,_that.detailUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  String latestChapter,  String thumbnail,  String param,  String detailUrl)?  $default,) {final _that = this;
switch (_that) {
case _ComicModel() when $default != null:
return $default(_that.title,_that.description,_that.latestChapter,_that.thumbnail,_that.param,_that.detailUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComicModel extends ComicModel {
  const _ComicModel({required this.title, required this.description, required this.latestChapter, required this.thumbnail, required this.param, required this.detailUrl}): super._();
  factory _ComicModel.fromJson(Map<String, dynamic> json) => _$ComicModelFromJson(json);

@override final  String title;
@override final  String description;
@override final  String latestChapter;
@override final  String thumbnail;
@override final  String param;
@override final  String detailUrl;

/// Create a copy of ComicModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComicModelCopyWith<_ComicModel> get copyWith => __$ComicModelCopyWithImpl<_ComicModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComicModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComicModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.latestChapter, latestChapter) || other.latestChapter == latestChapter)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.param, param) || other.param == param)&&(identical(other.detailUrl, detailUrl) || other.detailUrl == detailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,latestChapter,thumbnail,param,detailUrl);

@override
String toString() {
  return 'ComicModel(title: $title, description: $description, latestChapter: $latestChapter, thumbnail: $thumbnail, param: $param, detailUrl: $detailUrl)';
}


}

/// @nodoc
abstract mixin class _$ComicModelCopyWith<$Res> implements $ComicModelCopyWith<$Res> {
  factory _$ComicModelCopyWith(_ComicModel value, $Res Function(_ComicModel) _then) = __$ComicModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, String latestChapter, String thumbnail, String param, String detailUrl
});




}
/// @nodoc
class __$ComicModelCopyWithImpl<$Res>
    implements _$ComicModelCopyWith<$Res> {
  __$ComicModelCopyWithImpl(this._self, this._then);

  final _ComicModel _self;
  final $Res Function(_ComicModel) _then;

/// Create a copy of ComicModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? latestChapter = null,Object? thumbnail = null,Object? param = null,Object? detailUrl = null,}) {
  return _then(_ComicModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,latestChapter: null == latestChapter ? _self.latestChapter : latestChapter // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,detailUrl: null == detailUrl ? _self.detailUrl : detailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
