import 'package:nomixe/common/data/remote/network_service.dart';
import 'package:nomixe/common/domain/providers/dio_network_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nomixe/features/Products/data/datasource/products_remote_datasource.dart';
import 'package:nomixe/features/Products/data/repositories/products_repository.dart';
import 'package:nomixe/features/Products/domain/repositories/products_repository.dart';

final productsDatasourceProvider = Provider.family<ProductsDatasource, NetworkService>(
  (_, networkService) => ProductsRemoteDatasource(networkService),
);

final productsRepositoryProvider = Provider<ProductsRepository>((ref) {
  final networkService = ref.watch(networkServiceProvider);
  final datasource = ref.watch(productsDatasourceProvider(networkService));
  final repository = ProductsRepositoryImpl(datasource);

  return repository;
});
