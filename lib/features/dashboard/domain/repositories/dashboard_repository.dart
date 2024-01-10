import 'package:nomixe/common/domain/models/either.dart';
import 'package:nomixe/common/domain/models/paginated_response.dart';
import 'package:nomixe/common/exceptions/http_exception.dart';

abstract class DashboardRepository {
  ResultFuture fetchProducts({required int skip});
  ResultFuture searchProducts({required int skip, required String query});
}

typedef ResultFuture = Future<Either<AppException, PaginatedResponse>>;
