part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.loading() = Loading;
  const factory AuthState.loggedOut() = LoggedOut;
  const factory AuthState.loggedIn(final User user) = LoggedIn;
  const factory AuthState.failure(final String message) = Failure;
}
