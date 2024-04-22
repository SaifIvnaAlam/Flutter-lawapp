import 'package:go_router/go_router.dart';
import 'package:lawapp/auth/presentation/authentication_page.dart';
import 'package:lawapp/features/home/presentation/home_page.dart';
import 'package:lawapp/utils/routes/route_name.dart';

// GoRouter configuration
final goRouter = GoRouter(
  initialLocation: AppRoutes.INITIAL_ROUTE,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: AppRoutes.HOMEPAGE,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutes.INITIAL_ROUTE,
      builder: (context, state) => const AuthenticationPage(),
    ),
  ],
);
