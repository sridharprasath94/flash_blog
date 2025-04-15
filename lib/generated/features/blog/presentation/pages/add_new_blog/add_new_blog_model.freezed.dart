// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../../features/blog/presentation/pages/add_new_blog/add_new_blog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddNewBlogModel {

 bool get isLoading;
/// Create a copy of AddNewBlogModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNewBlogModelCopyWith<AddNewBlogModel> get copyWith => _$AddNewBlogModelCopyWithImpl<AddNewBlogModel>(this as AddNewBlogModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNewBlogModel&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading);

@override
String toString() {
  return 'AddNewBlogModel(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $AddNewBlogModelCopyWith<$Res>  {
  factory $AddNewBlogModelCopyWith(AddNewBlogModel value, $Res Function(AddNewBlogModel) _then) = _$AddNewBlogModelCopyWithImpl;
@useResult
$Res call({
 bool isLoading
});




}
/// @nodoc
class _$AddNewBlogModelCopyWithImpl<$Res>
    implements $AddNewBlogModelCopyWith<$Res> {
  _$AddNewBlogModelCopyWithImpl(this._self, this._then);

  final AddNewBlogModel _self;
  final $Res Function(AddNewBlogModel) _then;

/// Create a copy of AddNewBlogModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _AddNewBlogModel implements AddNewBlogModel {
  const _AddNewBlogModel({required this.isLoading});
  

@override final  bool isLoading;

/// Create a copy of AddNewBlogModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddNewBlogModelCopyWith<_AddNewBlogModel> get copyWith => __$AddNewBlogModelCopyWithImpl<_AddNewBlogModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddNewBlogModel&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading);

@override
String toString() {
  return 'AddNewBlogModel(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$AddNewBlogModelCopyWith<$Res> implements $AddNewBlogModelCopyWith<$Res> {
  factory _$AddNewBlogModelCopyWith(_AddNewBlogModel value, $Res Function(_AddNewBlogModel) _then) = __$AddNewBlogModelCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading
});




}
/// @nodoc
class __$AddNewBlogModelCopyWithImpl<$Res>
    implements _$AddNewBlogModelCopyWith<$Res> {
  __$AddNewBlogModelCopyWithImpl(this._self, this._then);

  final _AddNewBlogModel _self;
  final $Res Function(_AddNewBlogModel) _then;

/// Create a copy of AddNewBlogModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,}) {
  return _then(_AddNewBlogModel(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
