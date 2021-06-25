import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seller_app/data/model/suggestion_model.dart';

part 'findloc_event.dart';
part 'findloc_state.dart';
part 'findloc_bloc.freezed.dart';

class FindlocBloc extends Bloc<FindlocEvent, FindlocState> {
  FindlocBloc() : super(_Initial());

  @override
  Stream<FindlocState> mapEventToState(
    FindlocEvent event,
  ) async* {
    yield* event.map(
      eLocFind: (e) async* {
        yield _IsLoading();
        yield _IsSuccess(e.suggestion);
      },
    );
  }
}
