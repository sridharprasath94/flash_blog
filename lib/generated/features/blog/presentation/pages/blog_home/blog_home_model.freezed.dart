// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../../features/blog/presentation/pages/blog_home/blog_home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BlogHomeModel {

 bool get isLoading;
/// Create a copy of BlogHomeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlogHomeModelCopyWith<BlogHomeModel> get copyWith => _$BlogHomeModelCopyWithImpl<BlogHomeModel>(this as BlogHomeModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlogHomeModel&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading);

@override
String toString() {
  return 'BlogHomeModel(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $BlogHomeModelCopyWith<$Res>  {
  factory $BlogHomeModelCopyWith(BlogHomeModel value, $Res Function(BlogHomeModel) _then) = _$BlogHomeModelCopyWithImpl;
@useResult
$Res call({
 bool isLoading
});




}
/// @nodoc
class _$BlogHomeModelCopyWithImpl<$Res>
    implements $BlogHomeModelCopyWith<$Res> {
  _$BlogHomeModelCopyWithImpl(this._self, this._then);

  final BlogHomeModel _self;
  final $Res Function(BlogHomeModel) _then;

/// Create a copy of BlogHomeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _BlogHomeModel implements BlogHomeModel {
  const _BlogHomeModel({required this.isLoading});
  

@override final  bool isLoading;

/// Create a copy of BlogHomeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlogHomeModelCopyWith<_BlogHomeModel> get copyWith => __$BlogHomeModelCopyWithImpl<_BlogHomeModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlogHomeModel&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading);

@override
String toString() {
  return 'BlogHomeModel(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$BlogHomeModelCopyWith<$Res> implements $BlogHomeModelCopyWith<$Res> {
  factory _$BlogHomeModelCopyWith(_BlogHomeModel value, $Res Function(_BlogHomeModel) _then) = __$BlogHomeModelCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading
});




}
/// @nodoc
class __$BlogHomeModelCopyWithImpl<$Res>
    implements _$BlogHomeModelCopyWith<$Res> {
  __$BlogHomeModelCopyWithImpl(this._self, this._then);

  final _BlogHomeModel _self;
  final $Res Function(_BlogHomeModel) _then;

/// Create a copy of BlogHomeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,}) {
  return _then(_BlogHomeModel(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
