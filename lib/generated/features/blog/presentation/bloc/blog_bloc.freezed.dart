// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../features/blog/presentation/bloc/blog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BlogEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlogEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BlogEvent()';
}


}

/// @nodoc
class $BlogEventCopyWith<$Res>  {
$BlogEventCopyWith(BlogEvent _, $Res Function(BlogEvent) __);
}


/// @nodoc


class _Started implements BlogEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BlogEvent.started()';
}


}




/// @nodoc


class _UploadBlog implements BlogEvent {
  const _UploadBlog({required this.posterId, required this.title, required this.content, required this.image, required final  List<String> topics}): _topics = topics;
  

 final  String posterId;
 final  String title;
 final  String content;
 final  File image;
 final  List<String> _topics;
 List<String> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}


/// Create a copy of BlogEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadBlogCopyWith<_UploadBlog> get copyWith => __$UploadBlogCopyWithImpl<_UploadBlog>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadBlog&&(identical(other.posterId, posterId) || other.posterId == posterId)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._topics, _topics));
}


@override
int get hashCode => Object.hash(runtimeType,posterId,title,content,image,const DeepCollectionEquality().hash(_topics));

@override
String toString() {
  return 'BlogEvent.uploadBlog(posterId: $posterId, title: $title, content: $content, image: $image, topics: $topics)';
}


}

/// @nodoc
abstract mixin class _$UploadBlogCopyWith<$Res> implements $BlogEventCopyWith<$Res> {
  factory _$UploadBlogCopyWith(_UploadBlog value, $Res Function(_UploadBlog) _then) = __$UploadBlogCopyWithImpl;
@useResult
$Res call({
 String posterId, String title, String content, File image, List<String> topics
});




}
/// @nodoc
class __$UploadBlogCopyWithImpl<$Res>
    implements _$UploadBlogCopyWith<$Res> {
  __$UploadBlogCopyWithImpl(this._self, this._then);

  final _UploadBlog _self;
  final $Res Function(_UploadBlog) _then;

/// Create a copy of BlogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? posterId = null,Object? title = null,Object? content = null,Object? image = null,Object? topics = null,}) {
  return _then(_UploadBlog(
posterId: null == posterId ? _self.posterId : posterId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _FetchAllBlogs implements BlogEvent {
  const _FetchAllBlogs();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchAllBlogs);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BlogEvent.fetchAllBlogs()';
}


}




/// @nodoc


class _DeleteBlog implements BlogEvent {
  const _DeleteBlog({required this.posterId});
  

 final  String posterId;

/// Create a copy of BlogEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteBlogCopyWith<_DeleteBlog> get copyWith => __$DeleteBlogCopyWithImpl<_DeleteBlog>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteBlog&&(identical(other.posterId, posterId) || other.posterId == posterId));
}


@override
int get hashCode => Object.hash(runtimeType,posterId);

@override
String toString() {
  return 'BlogEvent.deleteBlog(posterId: $posterId)';
}


}

/// @nodoc
abstract mixin class _$DeleteBlogCopyWith<$Res> implements $BlogEventCopyWith<$Res> {
  factory _$DeleteBlogCopyWith(_DeleteBlog value, $Res Function(_DeleteBlog) _then) = __$DeleteBlogCopyWithImpl;
@useResult
$Res call({
 String posterId
});




}
/// @nodoc
class __$DeleteBlogCopyWithImpl<$Res>
    implements _$DeleteBlogCopyWith<$Res> {
  __$DeleteBlogCopyWithImpl(this._self, this._then);

  final _DeleteBlog _self;
  final $Res Function(_DeleteBlog) _then;

/// Create a copy of BlogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? posterId = null,}) {
  return _then(_DeleteBlog(
posterId: null == posterId ? _self.posterId : posterId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$BlogState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlogState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BlogState()';
}


}

/// @nodoc
class $BlogStateCopyWith<$Res>  {
$BlogStateCopyWith(BlogState _, $Res Function(BlogState) __);
}


/// @nodoc


class Initial implements BlogState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BlogState.initial()';
}


}




/// @nodoc


class Loading implements BlogState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BlogState.loading()';
}


}




/// @nodoc


class UploadSuccess implements BlogState {
  const UploadSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BlogState.uploadSuccess()';
}


}




/// @nodoc


class Failure implements BlogState {
  const Failure(this.message);
  

 final  String message;

/// Create a copy of BlogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BlogState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $BlogStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of BlogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Failure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FetchSuccess implements BlogState {
  const FetchSuccess(final  List<Blog> blogs): _blogs = blogs;
  

 final  List<Blog> _blogs;
 List<Blog> get blogs {
  if (_blogs is EqualUnmodifiableListView) return _blogs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_blogs);
}


/// Create a copy of BlogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchSuccessCopyWith<FetchSuccess> get copyWith => _$FetchSuccessCopyWithImpl<FetchSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchSuccess&&const DeepCollectionEquality().equals(other._blogs, _blogs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_blogs));

@override
String toString() {
  return 'BlogState.fetchSuccess(blogs: $blogs)';
}


}

/// @nodoc
abstract mixin class $FetchSuccessCopyWith<$Res> implements $BlogStateCopyWith<$Res> {
  factory $FetchSuccessCopyWith(FetchSuccess value, $Res Function(FetchSuccess) _then) = _$FetchSuccessCopyWithImpl;
@useResult
$Res call({
 List<Blog> blogs
});




}
/// @nodoc
class _$FetchSuccessCopyWithImpl<$Res>
    implements $FetchSuccessCopyWith<$Res> {
  _$FetchSuccessCopyWithImpl(this._self, this._then);

  final FetchSuccess _self;
  final $Res Function(FetchSuccess) _then;

/// Create a copy of BlogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? blogs = null,}) {
  return _then(FetchSuccess(
null == blogs ? _self._blogs : blogs // ignore: cast_nullable_to_non_nullable
as List<Blog>,
  ));
}


}

/// @nodoc


class DeleteSuccess implements BlogState {
  const DeleteSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BlogState.deleteSuccess()';
}


}




// dart format on
