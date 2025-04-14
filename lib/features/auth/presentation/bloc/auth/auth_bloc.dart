import 'dart:async';

import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/features/auth/domain/usecases/user_signup.dart';
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
      emit(const AuthState.loading());
      unawaited(
        _userSignup(
              UserSignUpParams(
                username: event.username,
                email: event.email,
                password: event.password,
              ),
            )
            .match(
              (final Failure failure) => emit(AuthState.failure(failure.message)),
              (final String user) => emit(AuthState.success(user)),
            )
            .run(),
      );
    });
  }
}
