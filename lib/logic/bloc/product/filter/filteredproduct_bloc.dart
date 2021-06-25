import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seller_app/data/model/product_model.dart';

import '../product_bloc.dart';

part 'filteredproduct_event.dart';
part 'filteredproduct_state.dart';
part 'filteredproduct_bloc.freezed.dart';

class FilteredproductBloc
    extends Bloc<FilteredproductEvent, FilteredproductState> {
  final ProductBloc _productBloc;
  StreamSubscription? _productSubscription;

  FilteredproductBloc({required ProductBloc productBloc})
      : _productBloc = productBloc,
        super(
          productBloc.state.maybeWhen(
            orElse: () => _IsLoading(),
            isLoaded: (e) => _IsLoaded(e),
          ),
        ) {
    _productSubscription = productBloc.stream.listen((state) {
      state.maybeWhen(
        orElse: () => _IsLoading(),
        isLoaded: (e) => add(
          _EUpdateProduct(e),
        ),
      );
    });
  }

  @override
  Stream<FilteredproductState> mapEventToState(
    FilteredproductEvent event,
  ) async* {
    yield* event.map(
      eUpdateFilter: (e) async* {
        final currentData = _productBloc.state.maybeWhen(
          orElse: () {},
          isLoaded: (d) => d,
        );
        yield _IsLoaded(_mapProductUpdate(currentData ?? [], e.filter));
      },
      eUpdateProduct: (e) async* {
        final currentData = _productBloc.state.maybeWhen(
          orElse: () {},
          isLoaded: (d) => d,
        );
        yield _IsLoaded(currentData ?? []);
      },
    );
  }

  List<ProductModel> _mapProductUpdate(
      List<ProductModel> products, List categories) {
    if (categories.length > 0) {
      List<ProductModel> filteredProduct = products
          .where((p) => p.category!.any((e) => categories.contains(e)))
          .toList();

      return filteredProduct;
    } else {
      return products;
    }
  }

  @override
  Future<void> close() {
    _productSubscription?.cancel();
    return super.close();
  }
}
