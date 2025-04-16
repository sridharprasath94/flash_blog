import 'dart:async';
import 'package:flash_blog/core/common/cubits/app_user_cubit.dart';
import 'package:flash_blog/core/common/entities/user.dart';
import 'package:flash_blog/core/error/failures.dart' as failures;
import 'package:flash_blog/core/usecase/usecase.dart';
import 'package:flash_blog/features/auth/domain/usecases/current_user.dart';
import 'package:flash_blog/features/auth/domain/usecases/user_login.dart';
import 'package:flash_blog/features/auth/domain/usecases/user_signout.dart';
import 'package:flash_blog/features/auth/domain/usecases/user_signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part '../../../../generated/features/auth/presentation/bloc/auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSignup _userSignup;
  final UserLogin _userLogin;
  final UserSignOut _userSignOut;
  final CurrentUser _currentUser;
  final AppUserCubit _appUserCubit;

  AuthBloc({
    required final UserSignup userSignup,
    required final UserLogin userLogin,
    required final UserSignOut userSignOut,
    required final CurrentUser currentUser,
    required final AppUserCubit appUserCubit,
  }) : _userLogin = userLogin,
       _userSignup = userSignup,
       _userSignOut = userSignOut,
       _currentUser = currentUser,
       _appUserCubit = appUserCubit,
       super(const AuthState.initial()) {
    on<_Signup>(_onSignUp);
    on<_Login>(_onLogin);
    on<_IsLoggedIn>(_isLoggedIn);
    on<_SignOut>(_onSignOut);
  }

  Future<void> _onLogin(
    final _Login event,
    final Emitter<AuthState> emit,
  ) async {
    debugPrint('Auth Event: $event');
    emit(const AuthState.loading());
    await _userLogin(
          UserLoginParams(email: event.email, password: event.password),
        )
        .match(
          (final failures.Failure failure) {
            _emitAuthFailure(failure.message, emit);
          },
          (final User user) {
            debugPrint('Auth Login Success: $user');
            _emitAuthSuccess(user, emit);
          },
        )
        .run();
  }

  Future<void> _onSignUp(
    final _Signup event,
    final Emitter<AuthState> emit,
  ) async {
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
            _emitAuthFailure(failure.message, emit);
          },
          (final User user) {
            debugPrint('Auth Signup Success: $user');
            _emitAuthSuccess(user, emit);
          },
        )
        .run();
  }

  Future<void> _isLoggedIn(
    final _IsLoggedIn event,
    final Emitter<AuthState> emit,
  ) async {
    debugPrint('Auth Event: $event');
    await _currentUser(NoParams())
        .match(
          (final failures.Failure failure) {
            debugPrint('Auth IsLogin Failure: ${failure.message}');
            _appUserCubit.updateUser(null);
          },
          (final User user) {
            debugPrint('Auth IsLogin Success: $user');
            _emitAuthSuccess(user, emit);
          },
        )
        .run();
  }

  Future<void> _onSignOut(
    final _SignOut event,
    final Emitter<AuthState> emit,
  ) async {
    debugPrint('Auth Event: $event');
    emit(const AuthState.loading());
    await _userSignOut(NoParams())
        .match(
          (final failures.Failure failure) {
            _emitAuthFailure(failure.message, emit);
          },
          (final bool success) {
            if (success) {
              _appUserCubit.updateUser(null);
              debugPrint('Auth SignOut Success');
              emit(const AuthState.loggedOut());
              return;
            }
            emit(const AuthState.failure('SignOut Failed'));
          },
        )
        .run();
  }

  void _emitAuthSuccess(final User user, final Emitter<AuthState> emit) {
    _appUserCubit.updateUser(user);
    emit(AuthState.loggedIn(user));
  }

  void _emitAuthFailure(final String message, final Emitter<AuthState> emit) {
    debugPrint('Auth Login Failure: $message');
    _appUserCubit.updateUser(null);
    emit(AuthState.failure(message));
  }
}
