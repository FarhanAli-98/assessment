import 'package:nomixe/common/domain/models/either.dart';
import 'package:nomixe/common/domain/models/paginated_response.dart';
import 'package:nomixe/common/exceptions/http_exception.dart';
import 'package:nomixe/features/Products/data/datasource/products_remote_datasource.dart';
import 'package:nomixe/features/Products/domain/repositories/products_repository.dart';

class ProductsRepositoryImpl extends ProductsRepository {
  final ProductsDatasource productsDatasource;
  ProductsRepositoryImpl(this.productsDatasource);

  @override
  Future<Either<AppException, PaginatedResponse>> fetchProducts({required int skip}) {
    return productsDatasource.fetchPaginatedProducts(skip: skip);
  }

  @override
  Future<Either<AppException, PaginatedResponse>> searchProducts({required int skip, required String query}) {
    return productsDatasource.searchPaginatedProducts(skip: skip, query: query);
  }
}
