import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotreload/core/router/app_routes.dart';
import 'package:hotreload/features/designresponsive/presentation/pages/design_screen.dart';
import 'package:hotreload/features/example/presentation/pages/example_screen.dart';
import 'package:hotreload/features/test/presentation/pages/test_screen.dart';
import 'package:hotreload/features/themeSchema/presentation/pages/theme_screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name){
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const DesignScreen());
      case AppRoutes.test:
        return MaterialPageRoute(builder: (_) => const TestScreen());
      case AppRoutes.example:
        return MaterialPageRoute(builder: (_) => const ExampleScreen());
      case AppRoutes.theme:
        final msn = settings.arguments.toString() ?? 'No message';
        return MaterialPageRoute(builder: (_) => ThemeScreen(msn: msn));
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          )
        ));
    }
  }
}