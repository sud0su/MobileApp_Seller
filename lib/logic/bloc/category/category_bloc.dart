import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seller_app/data/model/category_model.dart';
import 'package:seller_app/data/repository/category_repository.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository _catRepository = CategoryRepository();
  StreamSubscription? _subscription;

  CategoryBloc() : super(_Initial());

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      addCategory: (e) async* {
        _catRepository.createCategoryCollection({
          'data': {'category': e.categoryname},
          'id': e.uid
        });
      },
      upCategory: (e) async* {
        _catRepository.updateCategory(
            {'id': e.id, 'catid': e.catid, 'category': e.category});
      },
      delCategory: (e) async* {
        _catRepository.deleteCategory({'id': e.id, 'catid': e.catid});
      },
      isOpenBottomSheet: (e) async* {
        yield _IsOpenSheet();
        _subscription?.cancel();
        _subscription = _catRepository
            .getCategoryList(id: e.id)
            .listen((categories) => add(_EIsLoaded(categories)));
      },
      isLoaded: (e) async* {
        yield _IsSuccess(e.categoryModel);
      },
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
