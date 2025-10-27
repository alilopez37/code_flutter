
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotreload/core/router/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Screen',
          style: Theme.of(context).textTheme.headlineLarge),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Center(
          child: Text("Login Screen",
              style: Theme.of(context).textTheme.displayLarge
          ),),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            context.go(AppRoutes.homePath);
          },
          child: Icon(Icons.add)
      ),
    );
  }
}