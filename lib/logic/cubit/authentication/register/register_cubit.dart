import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seller_app/data/repository/auth_repository.dart';
import 'package:seller_app/utils/exceptions.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepository _authRepository;
  RegisterCubit(this._authRepository) : super(_Initial());

  Future<void> getMerchantFoto(File image) async {
    emit(_IsUpLoading());
    try {
      emit(_IsSelectedMerchant(image));
    } catch (err) {
      emit(_IsError(err.toString()));
    }
  }

  Future<void> signInWithPhoneNumber(
          String smscode, Map<String, dynamic> registerData) =>
      _signIn(_authRepository.signInWithSmsCode(smscode, registerData));

  Future<void> _signIn(
      Future<Either<AuthResultStatus, Unit>> authStatus) async {
    emit(_IsLoading());
    final failureOrSuccess = await authStatus;
    failureOrSuccess.fold(
      (l) => emit(RegisterState.isError(
          AuthExceptionHandler.generateExceptionMessage(l))),
      (r) => emit(_IsSuccess()),
    );
  }

  Future<void> sendSmsCodeEvent(String phonenumber) async {
    await _authRepository.verifyPhoneNumber(phonenumber);
    emit(_IsSmsCode());
  }

  Future<void> reSendSmsCodeEvent(String phonenumber) async {
    await _authRepository.verifyPhoneNumber(phonenumber);
    emit(_IsSmsCode());
  }
}
