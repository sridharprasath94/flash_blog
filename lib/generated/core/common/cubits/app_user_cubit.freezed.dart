// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../core/common/cubits/app_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppUserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppUserState()';
}


}

/// @nodoc
class $AppUserStateCopyWith<$Res>  {
$AppUserStateCopyWith(AppUserState _, $Res Function(AppUserState) __);
}


/// @nodoc


class Initial implements AppUserState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppUserState.initial()';
}


}




/// @nodoc


class LoggedIn implements AppUserState {
  const LoggedIn(this.user);
  

 final  User user;

/// Create a copy of AppUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoggedInCopyWith<LoggedIn> get copyWith => _$LoggedInCopyWithImpl<LoggedIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoggedIn&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AppUserState.loggedIn(user: $user)';
}


}

/// @nodoc
abstract mixin class $LoggedInCopyWith<$Res> implements $AppUserStateCopyWith<$Res> {
  factory $LoggedInCopyWith(LoggedIn value, $Res Function(LoggedIn) _then) = _$LoggedInCopyWithImpl;
@useResult
$Res call({
 User user
});




}
/// @nodoc
class _$LoggedInCopyWithImpl<$Res>
    implements $LoggedInCopyWith<$Res> {
  _$LoggedInCopyWithImpl(this._self, this._then);

  final LoggedIn _self;
  final $Res Function(LoggedIn) _then;

/// Create a copy of AppUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(LoggedIn(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

// dart format on
