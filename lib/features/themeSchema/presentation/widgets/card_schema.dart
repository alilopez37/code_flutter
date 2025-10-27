
import 'package:flutter/cupertino.dart';

class CardSchema extends StatelessWidget{
  final Color color;
  final String text;
  const CardSchema({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      color: color,
      child: Text(text),
    );
  }

}