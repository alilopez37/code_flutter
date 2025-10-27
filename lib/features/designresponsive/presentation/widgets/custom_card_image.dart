
import 'package:flutter/cupertino.dart';
import 'package:hotreload/features/designresponsive/presentation/widgets/custom_card.dart';

class CustomCardImage extends StatelessWidget {
  const CustomCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.asset('assets/1.jpeg'),
            )),
        Expanded(flex: 1, child: Text("Data"))
      ],
    );
  }
}