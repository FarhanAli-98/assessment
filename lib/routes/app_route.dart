import 'package:auto_route/auto_route.dart';
import 'package:nomixe/features/Products/presentation/screens/products_screen.dart';
part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ProductsRoute.page, initial: true),
      ];
}
