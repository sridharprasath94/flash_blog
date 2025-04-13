// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../../features/auth/presentation/pages/signup/signup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupModel {

 bool get isLoading; TextEditingController get emailController; TextEditingController get usernameController; TextEditingController get passwordController;
/// Create a copy of SignupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupModelCopyWith<SignupModel> get copyWith => _$SignupModelCopyWithImpl<SignupModel>(this as SignupModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupModel&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.emailController, emailController) || other.emailController == emailController)&&(identical(other.usernameController, usernameController) || other.usernameController == usernameController)&&(identical(other.passwordController, passwordController) || other.passwordController == passwordController));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,emailController,usernameController,passwordController);

@override
String toString() {
  return 'SignupModel(isLoading: $isLoading, emailController: $emailController, usernameController: $usernameController, passwordController: $passwordController)';
}


}

/// @nodoc
abstract mixin class $SignupModelCopyWith<$Res>  {
  factory $SignupModelCopyWith(SignupModel value, $Res Function(SignupModel) _then) = _$SignupModelCopyWithImpl;
@useResult
$Res call({
 bool isLoading, TextEditingController emailController, TextEditingController usernameController, TextEditingController passwordController
});




}
/// @nodoc
class _$SignupModelCopyWithImpl<$Res>
    implements $SignupModelCopyWith<$Res> {
  _$SignupModelCopyWithImpl(this._self, this._then);

  final SignupModel _self;
  final $Res Function(SignupModel) _then;

/// Create a copy of SignupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? emailController = null,Object? usernameController = null,Object? passwordController = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,emailController: null == emailController ? _self.emailController : emailController // ignore: cast_nullable_to_non_nullable
as TextEditingController,usernameController: null == usernameController ? _self.usernameController : usernameController // ignore: cast_nullable_to_non_nullable
as TextEditingController,passwordController: null == passwordController ? _self.passwordController : passwordController // ignore: cast_nullable_to_non_nullable
as TextEditingController,
  ));
}

}


/// @nodoc


class _SignupModel implements SignupModel {
  const _SignupModel({required this.isLoading, required this.emailController, required this.usernameController, required this.passwordController});
  

@override final  bool isLoading;
@override final  TextEditingController emailController;
@override final  TextEditingController usernameController;
@override final  TextEditingController passwordController;

/// Create a copy of SignupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupModelCopyWith<_SignupModel> get copyWith => __$SignupModelCopyWithImpl<_SignupModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupModel&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.emailController, emailController) || other.emailController == emailController)&&(identical(other.usernameController, usernameController) || other.usernameController == usernameController)&&(identical(other.passwordController, passwordController) || other.passwordController == passwordController));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,emailController,usernameController,passwordController);

@override
String toString() {
  return 'SignupModel(isLoading: $isLoading, emailController: $emailController, usernameController: $usernameController, passwordController: $passwordController)';
}


}

/// @nodoc
abstract mixin class _$SignupModelCopyWith<$Res> implements $SignupModelCopyWith<$Res> {
  factory _$SignupModelCopyWith(_SignupModel value, $Res Function(_SignupModel) _then) = __$SignupModelCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, TextEditingController emailController, TextEditingController usernameController, TextEditingController passwordController
});




}
/// @nodoc
class __$SignupModelCopyWithImpl<$Res>
    implements _$SignupModelCopyWith<$Res> {
  __$SignupModelCopyWithImpl(this._self, this._then);

  final _SignupModel _self;
  final $Res Function(_SignupModel) _then;

/// Create a copy of SignupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? emailController = null,Object? usernameController = null,Object? passwordController = null,}) {
  return _then(_SignupModel(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,emailController: null == emailController ? _self.emailController : emailController // ignore: cast_nullable_to_non_nullable
as TextEditingController,usernameController: null == usernameController ? _self.usernameController : usernameController // ignore: cast_nullable_to_non_nullable
as TextEditingController,passwordController: null == passwordController ? _self.passwordController : passwordController // ignore: cast_nullable_to_non_nullable
as TextEditingController,
  ));
}


}

// dart format on
