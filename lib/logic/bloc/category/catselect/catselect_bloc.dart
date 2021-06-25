import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catselect_event.dart';
part 'catselect_state.dart';
part 'catselect_bloc.freezed.dart';

class CatselectBloc extends Bloc<CatselectEvent, CatselectState> {
  CatselectBloc() : super(_Initial());

  @override
  Stream<CatselectState> mapEventToState(
    CatselectEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      eCatSelected: (e) async* {
        yield _IsLoading();
        yield _IsSuccess(e.selectedCatName, e.selectedCatId);
      },
    );
  }
}
