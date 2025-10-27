
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Register Screen'),
          foregroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Center(
          child: Text("Register Screen",
              style: Theme.of(context).textTheme.displayLarge
          ),)
    );
  }
}