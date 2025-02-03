import 'package:auto_route/auto_route.dart';
import 'package:products_ui/routes/app_routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
     AutoRoute(page: ProductsRoute.page,),
     AutoRoute(page: MenuRoute.page, initial: true),
  ];
}
