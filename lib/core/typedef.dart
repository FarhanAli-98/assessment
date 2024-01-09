import 'package:nomixe/data/domain/models/either.dart';
import 'package:nomixe/data/domain/models/paginated_response.dart';
import 'package:nomixe/data/exceptions/http_exception.dart';

typedef ResultFuture = Future<Either<AppException, PaginatedResponse>>;
