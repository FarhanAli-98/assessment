import 'package:nomixe/core/typedef.dart';

abstract class DashboardRepository {
  ResultFuture fetchProducts({required int skip});
  ResultFuture searchProducts({required int skip, required String query});
}
