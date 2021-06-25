import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seller_app/data/model/product_model.dart';
import 'package:seller_app/data/repository/product_repository.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _productRepository = ProductRepository();
  StreamSubscription? _subscription;

  ProductBloc() : super(_Initial());

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    yield* event.map(
      eLoadProduct: (e) async* {
        yield _IsLoading();
        _subscription?.cancel();
        _subscription = _productRepository
            .getProductList(id: e.id, category: e.selectedList)
            .listen((product) => add(_EUpdateProduct(product)));
      },
      eAddProduct: (e) async* {
        _productRepository.createProduct(e.values);
      },
      eDelProduct: (e) async* {
        _productRepository.deleteProduct(e.id);
      },
      eUpdateProduct: (e) async* {
        yield _IsLoaded(e.productModel);
      },
      eIsSaving: (e) async* {
        yield _IsSaving();
      },
      eIsSaved: (e) async* {
        yield _IsSaved();
      },
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
