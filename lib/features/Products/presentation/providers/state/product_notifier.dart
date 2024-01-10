import 'package:nomixe/common/domain/models/either.dart';
import 'package:nomixe/common/domain/models/paginated_response.dart';
import 'package:nomixe/common/domain/models/product/product_model.dart';
import 'package:nomixe/common/domain/models/product/selected_product_model.dart';
import 'package:nomixe/common/exceptions/http_exception.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nomixe/features/Products/domain/repositories/products_repository.dart';

import 'product_state.dart';

class ProductsNotifier extends StateNotifier<ProductsState> {
  final ProductsRepository productsRepository;

  ProductsNotifier(
    this.productsRepository,
  ) : super(const ProductsState.initial());

  bool get isFetching => state.state != ProductsConcreteState.loading && state.state != ProductsConcreteState.fetchingMore;

  Future<void> fetchProducts() async {
    if (isFetching && state.state != ProductsConcreteState.fetchedAllProducts) {
      state = state.copyWith(
        state: state.page > 0 ? ProductsConcreteState.fetchingMore : ProductsConcreteState.loading,
        isLoading: true,
      );

      final response = await productsRepository.fetchProducts(skip: state.page * 20);

      updateStateFromResponse(response);
    } else {
      state = state.copyWith(
        state: ProductsConcreteState.fetchedAllProducts,
        message: 'No more products available',
        isLoading: false,
      );
    }
  }

  void updateStateFromResponse(Either<AppException, PaginatedResponse<dynamic>> response) {
    response.fold((failure) {
      state = state.copyWith(
        state: ProductsConcreteState.failure,
        message: failure.message,
        isLoading: false,
      );
    }, (data) {
      final productList = data.data.map((e) => Product.fromJson(e)).toList();

      final totalProducts = [...state.productList, ...productList];

      state = state.copyWith(
        productList: totalProducts,
        state: totalProducts.length == data.total ? ProductsConcreteState.fetchedAllProducts : ProductsConcreteState.loaded,
        hasData: true,
        message: '',
        page: totalProducts.length ~/ 20,
        total: data.total,
        isLoading: false,
      );
    });
  }

  void resetState() {
    state = const ProductsState.initial();
  }
}
