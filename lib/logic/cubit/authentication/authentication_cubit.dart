import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seller_app/data/model/auth_model.dart';
import 'package:seller_app/data/repository/auth_repository.dart';
import 'package:seller_app/logic/cubit/user/user_cubit.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  final UserCubit _userCubit;
  final AuthRepository _authRepository;

  AuthenticationCubit(this._authRepository, this._userCubit)
      : super(_Initial());

  Future<void> appStarted() async {
    final _userOption = await _authRepository.getSignedInUser();
    _userOption.fold(
      () => emit(_IsLoggedOut()),
      (a) {
        emit(_IsLoggedIn(a));
        _userCubit.getUserInfo(uid: a.uid);
      },
    );
  }

  Future<void> signOut() async {
    emit(_IsLoading());
    await _authRepository.signOut();
    emit(_IsLoggedOut());
  }
}
