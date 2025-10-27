import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hotreload/myapp.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(
      DevicePreview(
      enabled: kDebugMode,
      builder: (context) => const MyApp())
  );
}