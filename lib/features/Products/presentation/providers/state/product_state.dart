// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:nomixe/common/domain/models/product/product_model.dart';
import 'package:nomixe/common/domain/models/product/selected_product_model.dart';

enum ProductsConcreteState { initial, loading, loaded, failure, fetchingMore, fetchedAllProducts }

class ProductsState extends Equatable {
  final List<Product> productList;

  final int total;
  final int page;
  final bool hasData;
  final bool isDeleted;
  final ProductsConcreteState state;
  final String message;
  final bool isLoading;
  const ProductsState({
    this.productList = const [],
    this.isLoading = false,
    this.hasData = false,
    this.isDeleted = false,
    this.state = ProductsConcreteState.initial,
    this.message = '',
    this.page = 0,
    this.total = 0,
  });

  const ProductsState.initial({
    this.productList = const [],
    this.total = 0,
    this.page = 0,
    this.isLoading = false,
    this.hasData = false,
    this.state = ProductsConcreteState.initial,
    this.message = '',
    this.isDeleted = false,
  });

  ProductsState copyWith({
    List<Product>? productList,
    List<SelectedProductModel>? selectedProductModel,
    int? total,
    int? page,
    bool? hasData,
    ProductsConcreteState? state,
    String? message,
    bool? isLoading,
    bool? isDeleted,
  }) {
    return ProductsState(
        isLoading: isLoading ?? this.isLoading,
        productList: productList ?? this.productList,
        total: total ?? this.total,
        page: page ?? this.page,
        hasData: hasData ?? this.hasData,
        state: state ?? this.state,
        message: message ?? this.message,
        isDeleted: isDeleted ?? this.isDeleted);
  }

  @override
  String toString() {
    return 'ProductsState(isLoading:$isLoading, productLength: ${productList.length},total:$total page: $page, hasData: $hasData, state: $state, message: $message)';
  }

  @override
  List<Object?> get props => [productList, page, hasData, state, message, isDeleted];
}
