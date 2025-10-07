import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hotreload/myapp.dart';
import 'package:provider/provider.dart';

import 'features/client_http/data/datasource/service_posts.dart';
import 'features/client_http/data/repository/posts_repository_impl.dart';
import 'features/client_http/domain/usecase/create_post.dart';
import 'features/client_http/domain/usecase/get_posts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  
  final servicePosts = ServicePostsImpl();
  final repository = PostRepositoryImpl(servicePosts: servicePosts);
  final getPostsUseCase = GetPosts(repository);
  final createPostUseCase = CreatePost(repository);
  runApp(MyApp(getPostsUseCase: getPostsUseCase, createPostUseCase: createPostUseCase));
}