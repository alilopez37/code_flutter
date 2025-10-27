
import 'package:flutter/cupertino.dart';
import 'package:hotreload/features/designresponsive/presentation/widgets/custom_card.dart';

class CustomWrap extends StatelessWidget {
  const CustomWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
        runSpacing: 10,
        spacing: 10,
        children: List.generate(10, (index) {
          return CustomCard(index: index);
    }));
  }
}