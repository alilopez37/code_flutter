
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  const CustomText({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: color,
        child: Text(text));
  }
}