//
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nomixe/features/Products/domain/providers/products_providers.dart';
import 'package:nomixe/features/Products/presentation/providers/state/product_notifier.dart';
import 'package:nomixe/features/Products/presentation/providers/state/product_state.dart';

final productsNotifierProvider = StateNotifierProvider<ProductsNotifier, ProductsState>((ref) {
  final repository = ref.watch(productsRepositoryProvider);
  return ProductsNotifier(repository)..fetchProducts();
});
