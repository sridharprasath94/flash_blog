import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/features/auth/data/models/user_model.dart';
import 'package:flash_blog/features/auth/domain/usecases/user_signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part '../../../../../generated/features/auth/presentation/bloc/auth/auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSignup _userSignup;

  AuthBloc({required final UserSignup userSignup})
    : _userSignup = userSignup,
      super(const AuthState.initial()) {
    on<AuthEvent>((final AuthEvent event, final Emitter<AuthState> emit) {});
    on<_Signup>((final _Signup event, final Emitter<AuthState> emit) async {
      debugPrint('Auth Event: $event');
      emit(const AuthState.loading());
      await _userSignup(
            UserSignUpParams(
              username: event.username,
              email: event.email,
              password: event.password,
            ),
          )
          .match(
            (final Failure failure) {
              debugPrint('Auth Failure: ${failure.message}');
              emit(AuthState.failure(failure.message));
            },
            (final UserModel userModel) {
              debugPrint('Auth Success: $userModel');
              emit(AuthState.success(userModel));
            },
          )
          .run();
    });
  }
}
