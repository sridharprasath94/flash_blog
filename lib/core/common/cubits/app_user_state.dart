part of 'app_user_cubit.dart';

@freezed
class AppUserState with _$AppUserState {
  const factory AppUserState.initial() = Initial;

  const factory AppUserState.loggedIn(final User user) = LoggedIn;

  const factory AppUserState.loggedOut() = LoggedOut;
}
