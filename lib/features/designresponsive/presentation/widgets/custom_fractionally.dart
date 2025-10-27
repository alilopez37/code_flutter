

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFractionally extends StatelessWidget {
  const CustomFractionally({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.6,
      child: ElevatedButton(
          onPressed:() {},
          child: Text("Iniciar sesión")),
    );
  }
}