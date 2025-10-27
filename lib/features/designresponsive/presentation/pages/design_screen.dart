
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotreload/features/designresponsive/presentation/widgets/custom_card_image.dart';
import 'package:hotreload/features/designresponsive/presentation/widgets/custom_fractionally.dart';
import 'package:hotreload/features/designresponsive/presentation/widgets/custom_text.dart';
import 'package:hotreload/features/designresponsive/presentation/widgets/custom_wrap.dart';

import '../../../../core/router/app_routes.dart';


class DesignScreen extends StatelessWidget {
  const DesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex:1, child: CustomCardImage()),
            Expanded(flex:1, child: CustomWrap()),
            Expanded(flex:1, child: CustomText(text: "mobile", color: Colors.green)),
            Expanded(flex:1,child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context,AppRoutes.example);
            }, child: Text("Click")))
          ],
        )
      ),
    );
  }
}