import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../router/routes.dart';


class DeepLinkService {
  final _appLinks = AppLinks();
  Stream<Uri>? _linkStream;

  void initDeepLinks(BuildContext context) {
    // 1️⃣ Maneja el link inicial (cuando se abre la app desde un enlace)
    _appLinks.getInitialLink().then((uri) {
      if (uri != null) {
        _handleLink(uri, context);
      }
    });

    // 2️⃣ Escucha los enlaces que llegan mientras la app ya está abierta
    _linkStream = _appLinks.uriLinkStream;
    _linkStream!.listen((uri) {
      if (uri != null) {
        _handleLink(uri, context);
      }
    });
  }

  void _handleLink(Uri uri, BuildContext context) {
    debugPrint('🔗 Deep link recibido: $uri');
    context.goNamed(AppRoutes.registerPath);
  }
}
