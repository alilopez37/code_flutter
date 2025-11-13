import 'package:device_preview/device_preview.dart' show DevicePreview;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotreload/core/router/app_router.dart';
import 'package:provider/provider.dart';

import 'core/application/app_state.dart';
import 'core/application/deep_link_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context, listen: false);
    final deepLinkService = DeepLinkService();
    deepLinkService.initDeepLinks(context);

    final appRouter = AppRouter(appState: appState);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.router,
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
