// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../features/blog/data/models/blog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlogModel {

 String get id; String get posterId; String get title; String get content; String get imageUrl; List<String> get topics; DateTime get updatedAt; String? get posterName;
/// Create a copy of BlogModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlogModelCopyWith<BlogModel> get copyWith => _$BlogModelCopyWithImpl<BlogModel>(this as BlogModel, _$identity);

  /// Serializes this BlogModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlogModel&&(identical(other.id, id) || other.id == id)&&(identical(other.posterId, posterId) || other.posterId == posterId)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.topics, topics)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.posterName, posterName) || other.posterName == posterName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,posterId,title,content,imageUrl,const DeepCollectionEquality().hash(topics),updatedAt,posterName);

@override
String toString() {
  return 'BlogModel(id: $id, posterId: $posterId, title: $title, content: $content, imageUrl: $imageUrl, topics: $topics, updatedAt: $updatedAt, posterName: $posterName)';
}


}

/// @nodoc
abstract mixin class $BlogModelCopyWith<$Res>  {
  factory $BlogModelCopyWith(BlogModel value, $Res Function(BlogModel) _then) = _$BlogModelCopyWithImpl;
@useResult
$Res call({
 String id, String posterId, String title, String content, String imageUrl, List<String> topics, DateTime updatedAt, String? posterName
});




}
/// @nodoc
class _$BlogModelCopyWithImpl<$Res>
    implements $BlogModelCopyWith<$Res> {
  _$BlogModelCopyWithImpl(this._self, this._then);

  final BlogModel _self;
  final $Res Function(BlogModel) _then;

/// Create a copy of BlogModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? posterId = null,Object? title = null,Object? content = null,Object? imageUrl = null,Object? topics = null,Object? updatedAt = null,Object? posterName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,posterId: null == posterId ? _self.posterId : posterId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,posterName: freezed == posterName ? _self.posterName : posterName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BlogModel implements BlogModel {
  const _BlogModel({required this.id, required this.posterId, required this.title, required this.content, required this.imageUrl, required final  List<String> topics, required this.updatedAt, this.posterName}): _topics = topics;
  factory _BlogModel.fromJson(Map<String, dynamic> json) => _$BlogModelFromJson(json);

@override final  String id;
@override final  String posterId;
@override final  String title;
@override final  String content;
@override final  String imageUrl;
 final  List<String> _topics;
@override List<String> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}

@override final  DateTime updatedAt;
@override final  String? posterName;

/// Create a copy of BlogModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlogModelCopyWith<_BlogModel> get copyWith => __$BlogModelCopyWithImpl<_BlogModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlogModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlogModel&&(identical(other.id, id) || other.id == id)&&(identical(other.posterId, posterId) || other.posterId == posterId)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._topics, _topics)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.posterName, posterName) || other.posterName == posterName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,posterId,title,content,imageUrl,const DeepCollectionEquality().hash(_topics),updatedAt,posterName);

@override
String toString() {
  return 'BlogModel(id: $id, posterId: $posterId, title: $title, content: $content, imageUrl: $imageUrl, topics: $topics, updatedAt: $updatedAt, posterName: $posterName)';
}


}

/// @nodoc
abstract mixin class _$BlogModelCopyWith<$Res> implements $BlogModelCopyWith<$Res> {
  factory _$BlogModelCopyWith(_BlogModel value, $Res Function(_BlogModel) _then) = __$BlogModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String posterId, String title, String content, String imageUrl, List<String> topics, DateTime updatedAt, String? posterName
});




}
/// @nodoc
class __$BlogModelCopyWithImpl<$Res>
    implements _$BlogModelCopyWith<$Res> {
  __$BlogModelCopyWithImpl(this._self, this._then);

  final _BlogModel _self;
  final $Res Function(_BlogModel) _then;

/// Create a copy of BlogModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? posterId = null,Object? title = null,Object? content = null,Object? imageUrl = null,Object? topics = null,Object? updatedAt = null,Object? posterName = freezed,}) {
  return _then(_BlogModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,posterId: null == posterId ? _self.posterId : posterId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,posterName: freezed == posterName ? _self.posterName : posterName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
