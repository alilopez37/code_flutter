import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/router/app_routes.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(
          "My APP Semántica",
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimaryContainer),
        ),
      ),
      body: SafeArea(
          child: Column(
            children: [
              Text("Display Large", style: Theme.of(context).textTheme.displayLarge,),
              Text("Display Medium", style: Theme.of(context).textTheme.displayMedium,),
              Text("Display Small", style: Theme.of(context).textTheme.displaySmall,),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, AppRoutes.test);
              }, child: Icon(Icons.abc))
            ],
          )),
    );
  }
}
