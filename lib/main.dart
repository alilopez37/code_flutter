import 'package:flutter/material.dart';
import 'package:hotreload/myapp.dart';
import 'package:provider/provider.dart';

import 'features/client_http/data/datasource/service_posts.dart';
import 'features/client_http/data/repository/posts_repository_impl.dart';
import 'features/client_http/domain/usecase/get_posts.dart';

void main() {
  final servicePosts = ServicePostsImpl();
  final repository = PostRepositoryImpl(servicePosts: servicePosts);
  final getPostsUseCase = GetPosts(repository);
  runApp(MyApp(getPostsUseCase: getPostsUseCase));
}