import 'package:nomixe/common/data/remote/remote.dart';
import 'package:nomixe/common/domain/models/either.dart';
import 'package:nomixe/common/domain/models/paginated_response.dart';
import 'package:nomixe/common/exceptions/http_exception.dart';

abstract class ProductsDatasource {
  Future<Either<AppException, PaginatedResponse>> fetchPaginatedProducts({required int skip});
  Future<Either<AppException, PaginatedResponse>> searchPaginatedProducts({required int skip, required String query});
}

class ProductsRemoteDatasource extends ProductsDatasource {
  final NetworkService networkService;
  ProductsRemoteDatasource(this.networkService);

  @override
  Future<Either<AppException, PaginatedResponse>> fetchPaginatedProducts({required int skip}) async {
    final response = await networkService.get(
      '/products',
      queryParameters: {
        'skip': skip,
        'limit': 20,
      },
    );

    return response.fold(
      (l) => Left(l),
      (r) {
        final jsonData = r.data;
        if (jsonData == null) {
          return Left(
            AppException(
              identifier: 'fetchPaginatedData',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }
        final paginatedResponse = PaginatedResponse.fromJson(jsonData, jsonData['products'] ?? []);
        return Right(paginatedResponse);
      },
    );
  }

  @override
  Future<Either<AppException, PaginatedResponse>> searchPaginatedProducts({required int skip, required String query}) async {
    final response = await networkService.get(
      '/products/search?q=$query',
      queryParameters: {
        'skip': skip,
        'limit': 20,
      },
    );

    return response.fold(
      (l) => Left(l),
      (r) {
        final jsonData = r.data;
        if (jsonData == null) {
          return Left(
            AppException(
              identifier: 'search PaginatedData',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }
        final paginatedResponse = PaginatedResponse.fromJson(jsonData, jsonData['products'] ?? []);
        return Right(paginatedResponse);
      },
    );
  }
}
