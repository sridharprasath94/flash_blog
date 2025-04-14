import 'package:flash_blog/core/error/failures.dart' as failures;
import 'package:flash_blog/features/auth/domain/entities/user.dart';
import 'package:flash_blog/features/auth/domain/usecases/user_login.dart';
import 'package:flash_blog/features/auth/domain/usecases/user_signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part '../../../../../generated/features/auth/presentation/bloc/auth/auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSignup _userSignup;
  final UserLogin _userLogin;

  AuthBloc({
    required final UserSignup userSignup,
    required final UserLogin userLogin,
  }) : _userLogin = userLogin,
       _userSignup = userSignup,
       super(const AuthState.initial()) {
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
            (final failures.Failure failure) {
              debugPrint('Auth Failure: ${failure.message}');
              emit(AuthState.failure(failure.message));
            },
            (final User user) {
              debugPrint('Auth Success: $user');
              emit(AuthState.success(user));
            },
          )
          .run();
    });

    on<_Login>((final _Login event, final Emitter<AuthState> emit) async {
      debugPrint('Auth Event: $event');
      emit(const AuthState.loading());
      await _userLogin(
        UserLoginParams(
          email: event.email,
          password: event.password,
        ),
      )
          .match(
            (final failures.Failure failure) {
          debugPrint('Auth Failure: ${failure.message}');
          emit(AuthState.failure(failure.message));
        },
            (final User user) {
          debugPrint('Auth Success: $user');
          emit(AuthState.success(user));
        },
      )
          .run();
    });
  }
}
