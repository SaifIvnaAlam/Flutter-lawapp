import 'package:go_router/go_router.dart';
import 'package:lawapp/auth/presentation/authentication_page.dart';
import 'package:lawapp/core/presentation/splash_page.dart';
import 'package:lawapp/features/home/presentation/home_page.dart';
import 'package:lawapp/features/profile/presentaion/user_profile.dart';
import 'package:lawapp/utils/routes/route_name.dart';
import 'package:lawapp/utils/widgets/nav_bar.dart';

// GoRouter configuration
final goRouter = GoRouter(
  initialLocation: AppRoutes.INITIAL_ROUTE,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: AppRoutes.INITIAL_ROUTE,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: AppRoutes.HOME_PAGE,
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: AppRoutes.AUTH_PAGE,
      builder: (context, state) => const AuthenticationPage(),
    ),
    GoRoute(
      path: AppRoutes.NAVBAR,
      builder: (context, state) => const NavBar(),
    ),
    GoRoute(
      path: AppRoutes.PROFILE_PAGE,
      builder: (context, state) => const ProfilePage(),
    ),
  ],
);
