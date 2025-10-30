
import 'package:go_router/go_router.dart';
import 'package:hotreload/core/application/app_state.dart';
import 'package:hotreload/core/router/routes.dart';
import 'package:hotreload/features/home/presentation/pages/home_screen.dart';
import 'package:hotreload/features/profile/presentation/pages/profile_screen.dart';
import 'package:hotreload/features/register/presentation/pages/register_screen.dart';
import 'package:hotreload/features/auth/presentation/pages/splash_screen.dart';
import 'package:provider/provider.dart';

import '../../features/auth/presentation/pages/login_screen.dart';

class AppRouter {
  final AppState appState;

  AppRouter({required this.appState});


  late final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splashPath,
    refreshListenable: appState,
    routes: [
      GoRoute(
          path: AppRoutes.splashPath,
          name: AppRoutes.splash,
          builder: (context, state) => const SplashScreen()
      ),
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
                  return ProfileScreen(userId: id);
                }
            ),
          ]
      )
    ],
      redirect: (context, state) {
        //final appState = Provider.of<AppState>(context, listen: false);
        final authStatus = appState.authStatus;
        final loc = state.matchedLocation;

        print(authStatus);

        switch (authStatus) {
          case AuthStatus.unknown:
          // Solo redirige si no estamos ya en Splash
            return loc == AppRoutes.splashPath ? null : AppRoutes.splashPath;

          case AuthStatus.unauthenticated:
          // Bloquear rutas protegidas si no está autenticado
            if (loc == AppRoutes.homePath || loc == AppRoutes.profilePath) {
              return AppRoutes.loginPath;
            }

            return loc == AppRoutes.loginPath ? null : AppRoutes.loginPath;

          case AuthStatus.authenticated:
            return loc == AppRoutes.loginPath ? AppRoutes.homePath : null;
        }
      }
  );
}