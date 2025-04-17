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

 bool get isLoading; TextEditingController get titleController; TextEditingController get contentController; List<String> get selectedTopics; Option<File> get image;
/// Create a copy of AddNewBlogModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNewBlogModelCopyWith<AddNewBlogModel> get copyWith => _$AddNewBlogModelCopyWithImpl<AddNewBlogModel>(this as AddNewBlogModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNewBlogModel&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.titleController, titleController) || other.titleController == titleController)&&(identical(other.contentController, contentController) || other.contentController == contentController)&&const DeepCollectionEquality().equals(other.selectedTopics, selectedTopics)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,titleController,contentController,const DeepCollectionEquality().hash(selectedTopics),image);

@override
String toString() {
  return 'AddNewBlogModel(isLoading: $isLoading, titleController: $titleController, contentController: $contentController, selectedTopics: $selectedTopics, image: $image)';
}


}

/// @nodoc
abstract mixin class $AddNewBlogModelCopyWith<$Res>  {
  factory $AddNewBlogModelCopyWith(AddNewBlogModel value, $Res Function(AddNewBlogModel) _then) = _$AddNewBlogModelCopyWithImpl;
@useResult
$Res call({
 bool isLoading, TextEditingController titleController, TextEditingController contentController, List<String> selectedTopics, Option<File> image
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
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? titleController = null,Object? contentController = null,Object? selectedTopics = null,Object? image = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,titleController: null == titleController ? _self.titleController : titleController // ignore: cast_nullable_to_non_nullable
as TextEditingController,contentController: null == contentController ? _self.contentController : contentController // ignore: cast_nullable_to_non_nullable
as TextEditingController,selectedTopics: null == selectedTopics ? _self.selectedTopics : selectedTopics // ignore: cast_nullable_to_non_nullable
as List<String>,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Option<File>,
  ));
}

}


/// @nodoc


class _AddNewBlogModel implements AddNewBlogModel {
  const _AddNewBlogModel({required this.isLoading, required this.titleController, required this.contentController, required final  List<String> selectedTopics, required this.image}): _selectedTopics = selectedTopics;
  

@override final  bool isLoading;
@override final  TextEditingController titleController;
@override final  TextEditingController contentController;
 final  List<String> _selectedTopics;
@override List<String> get selectedTopics {
  if (_selectedTopics is EqualUnmodifiableListView) return _selectedTopics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedTopics);
}

@override final  Option<File> image;

/// Create a copy of AddNewBlogModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddNewBlogModelCopyWith<_AddNewBlogModel> get copyWith => __$AddNewBlogModelCopyWithImpl<_AddNewBlogModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddNewBlogModel&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.titleController, titleController) || other.titleController == titleController)&&(identical(other.contentController, contentController) || other.contentController == contentController)&&const DeepCollectionEquality().equals(other._selectedTopics, _selectedTopics)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,titleController,contentController,const DeepCollectionEquality().hash(_selectedTopics),image);

@override
String toString() {
  return 'AddNewBlogModel(isLoading: $isLoading, titleController: $titleController, contentController: $contentController, selectedTopics: $selectedTopics, image: $image)';
}


}

/// @nodoc
abstract mixin class _$AddNewBlogModelCopyWith<$Res> implements $AddNewBlogModelCopyWith<$Res> {
  factory _$AddNewBlogModelCopyWith(_AddNewBlogModel value, $Res Function(_AddNewBlogModel) _then) = __$AddNewBlogModelCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, TextEditingController titleController, TextEditingController contentController, List<String> selectedTopics, Option<File> image
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
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? titleController = null,Object? contentController = null,Object? selectedTopics = null,Object? image = null,}) {
  return _then(_AddNewBlogModel(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,titleController: null == titleController ? _self.titleController : titleController // ignore: cast_nullable_to_non_nullable
as TextEditingController,contentController: null == contentController ? _self.contentController : contentController // ignore: cast_nullable_to_non_nullable
as TextEditingController,selectedTopics: null == selectedTopics ? _self._selectedTopics : selectedTopics // ignore: cast_nullable_to_non_nullable
as List<String>,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Option<File>,
  ));
}


}

// dart format on
