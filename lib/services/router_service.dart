// import le package de route
import 'package:go_router/go_router.dart';
import 'package:store/screens/home_screen.dart';
import 'package:store/screens/product_details_screnn.dart';

class RouterService {
  // liste des routes
  // Il le passe en static
  static GoRouter getRouter() {
    return GoRouter(routes: [
      GoRoute(
        /*
          path : schema Web d'une route
          > la route / doit exister et est considérée comme la route d'accueil name : nom de la route 
          builder  permet de cibler un widget associé à la route

          */
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/product-detail',
        name: 'product-detail',
        builder: (context, state) => const ProductDetailsScrenn(),
      )
    ]);
  }
}
