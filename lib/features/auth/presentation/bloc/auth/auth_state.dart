part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success(final UserModel userModel) = _Success;
  const factory AuthState.failure(final String message) = _Failure;
}
