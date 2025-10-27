import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotreload/core/router/app_router.dart';
import 'package:hotreload/core/router/app_routes.dart';
import 'package:hotreload/features/example/presentation/pages/example_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        colorScheme:  ColorScheme.fromSeed(
          seedColor: Colors.yellow,
          brightness: Brightness.light,
        ),
        textTheme: Typography.material2021().black.apply(
          fontFamily: 'malayalam',
          displayColor: Colors.black87,
          bodyColor: Colors.black54,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow,
          brightness: Brightness.dark,
        ),
        textTheme: Typography.material2021().black.apply(
          fontFamily: 'Poppins',
          displayColor: Colors.black87,
          bodyColor: Colors.black54,
        ),
      ),
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppRouter.onGenerateRoute,
    ));
  }
}
