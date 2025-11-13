
import 'package:flutter/cupertino.dart';

enum AuthStatus {unknown, authenticated, unauthenticated}

class AppState extends ChangeNotifier {
  AuthStatus _authStatus = AuthStatus.unknown;

  AuthStatus get authStatus => _authStatus;

  void setAuthenticated() {
    _authStatus = AuthStatus.authenticated;
    notifyListeners();
  }

  void setUnauthenticated() {
    _authStatus = AuthStatus.unauthenticated;
    notifyListeners();
  }
}