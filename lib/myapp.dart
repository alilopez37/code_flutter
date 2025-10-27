import 'package:device_preview/device_preview.dart' show DevicePreview;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotreload/core/router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green,
            brightness: Brightness.light),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green,
            brightness: Brightness.dark),
      ),
      themeMode: ThemeMode.system,
    );
  }
}
