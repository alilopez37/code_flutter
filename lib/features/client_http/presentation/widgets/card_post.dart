
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/posts.dart';

class CardPost extends StatelessWidget {
  final Posts posts;

  const CardPost({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          posts.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(posts.body),
      ),
    );
  }
}