
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotreload/core/router/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Home Screen',
        style: Theme.of(context).textTheme.headlineLarge),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Home Screen",
            style: Theme.of(context).textTheme.displayLarge
            ),
            ElevatedButton(
                onPressed: (){
                  context.goNamed(AppRoutes.profile, pathParameters: {'id': '123'});
                },
                child: Text("Registro"))
          ],
        ),)
    );
  }
}