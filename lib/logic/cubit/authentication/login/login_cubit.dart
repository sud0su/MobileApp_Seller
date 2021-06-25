import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seller_app/data/repository/auth_repository.dart';
import 'package:seller_app/utils/exceptions.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository;

  LoginCubit(this._authRepository) : super(_Initial());

  Future<void> signInWithEmailAndPassword(
          String email, String password) async =>
      _signIn(_authRepository.signInWithEmailAndPassword(email, password));

  Future<void> _signIn(
      Future<Either<AuthResultStatus, Unit>> authStatus) async {
    emit(_IsLoading());
    final failureOrSuccess = await authStatus;
    failureOrSuccess.fold(
      (l) => emit(
          LoginState.isError(AuthExceptionHandler.generateExceptionMessage(l))),
      (r) => emit(_IsSuccess()),
    );
  }
}
