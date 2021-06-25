import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_geocoder/geocoder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seller_app/data/model/user_model.dart';
import 'package:seller_app/data/repository/user_repository.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepository _userRepository;

  UserCubit(this._userRepository) : super(UserState.initial());
  StreamSubscription? _subscription;

  Future<void> getUserInfo({required String uid}) async {
    emit(_IsLoading());
    _subscription?.cancel();
    _subscription =
        _userRepository.getUserInfo(uid: uid).listen((userinfo) async {
      final getLoc =
          await getUserLocation(userinfo.latitude, userinfo.longitude);
      emit(_IsSuccess(userinfo, getLoc.featureName!, getLoc.addressLine!));
    });
  }

  Future<void> updateUserInfo(String uid, Map<String, dynamic> values,
      {String? currentFile}) async {
    _userRepository.updateUserInfo(uid, values, currentFile ?? '');
  }

  Future<Address> getUserLocation(double lat, double long) async {
    final _coordinate = new Coordinates(lat, long);
    final addresses =
        await Geocoder.local.findAddressesFromCoordinates(_coordinate);
    return addresses.first;
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
