
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/router/app_routes.dart';

class TestScreen extends StatelessWidget{
  const TestScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
        backgroundColor: Theme.of(context).colorScheme.primary
      ),
      body: SafeArea(
          child: Container(
            //color: Colors.blueAccent,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, AppRoutes.theme, arguments: 'Hola desde /test');
            }, child: Text("Click")),
            alignment: Alignment.center,
            constraints: BoxConstraints(
              minWidth: 100,
              maxWidth: 200,
              minHeight: 100,
              maxHeight: 200,
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(
                width: 5,
              )
            ),
            foregroundDecoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 0, 0.5),
              shape: BoxShape.circle
            ),
            transform: Matrix4.rotationZ(0.5),
          )),
    );
  }
}
