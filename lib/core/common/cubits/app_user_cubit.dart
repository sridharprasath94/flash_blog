import 'package:flash_blog/core/common/entities/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_state.dart';

part '../../../generated/core/common/cubits/app_user_cubit.freezed.dart';

class AppUserCubit extends Cubit<AppUserState> {
  AppUserCubit() : super(const AppUserState.initial());

  void updateUser(final User? user) {
    if (user == null) {
      emit(const AppUserState.initial());
    } else {
      emit(AppUserState.loggedIn(user));
    }
  }
}
