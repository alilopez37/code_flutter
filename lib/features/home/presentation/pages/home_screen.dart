
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Text("Home Screen",
        style: Theme.of(context).textTheme.displayLarge
        ),)
    );
  }
}