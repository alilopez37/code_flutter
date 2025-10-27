
import 'package:go_router/go_router.dart';
import 'package:hotreload/core/router/routes.dart';
import 'package:hotreload/features/home/presentation/pages/home_screen.dart';
import 'package:hotreload/features/login/presentation/pages/login_screen.dart';
import 'package:hotreload/features/profile/presentation/pages/profile_screen.dart';
import 'package:hotreload/features/register/presentation/pages/register_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.loginPath,
  routes: [
    GoRoute(
        path: AppRoutes.loginPath,
        name: AppRoutes.login,
        builder: (context, state) => const LoginScreen()
    ),
    GoRoute(
        path: AppRoutes.registerPath,
        name: AppRoutes.register,
        builder: (context, state) => const RegisterScreen()
    ),
    GoRoute(
        path: AppRoutes.homePath,
        name: AppRoutes.home,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
              path: AppRoutes.profilePath,
              name: AppRoutes.profile,
              builder: (context, state) {
                final id = state.pathParameters['id']!;
                return ProfileScreen(userId:id);
              }
          ),
        ]
    ),
  ],
);