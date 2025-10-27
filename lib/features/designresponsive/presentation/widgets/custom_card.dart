

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget{
  final int index;
  const CustomCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      color: Colors.yellow,
      child: Text('$index'),
    );
  }
}