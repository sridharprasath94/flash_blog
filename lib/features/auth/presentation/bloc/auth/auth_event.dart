part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.login({
    required final String email,
    required final String password,
  }) = _Login;
  const factory AuthEvent.signup({
    required final String email,
    required final String username,
    required final String password,
  }) = _Signup;
  const factory AuthEvent.isLoggedIn() = _IsLoggedIn;
}
