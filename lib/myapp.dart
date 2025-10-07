

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotreload/features/client_http/presentation/pages/posts_screen.dart';
import 'package:hotreload/features/client_http/presentation/providers/posts_provider.dart';
import 'package:provider/provider.dart';

import 'features/client_http/domain/usecase/create_post.dart';
import 'features/client_http/domain/usecase/get_posts.dart';

class MyApp extends StatelessWidget {
  final GetPosts getPostsUseCase;
  final CreatePost createPostUseCase;
  const MyApp({super.key, required this.getPostsUseCase, required this.createPostUseCase});

  @override
  Widget build(BuildContext context) {
    return (
        MultiProvider(
          providers: [
          ChangeNotifierProvider(
            create: (_) => PostsProvider(
                getPostsUseCase: getPostsUseCase, createPostUseCase: createPostUseCase)),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: PostsScreen(),
          )
    ));
  }
}