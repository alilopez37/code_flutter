
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String userId;
  const ProfileScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile Screen'),
          foregroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Center(
          child: Text(userId,
              style: Theme.of(context).textTheme.displayLarge
          ),)
    );
  }
}