import 'package:hotreload/features/client_http/data/datasource/service_posts.dart';

import '../../domain/entities/posts.dart';
import '../../domain/repository/posts_repository.dart';

class PostRepositoryImpl extends PostsRepository {
  final ServicePosts servicePosts;

  PostRepositoryImpl({required this.servicePosts});
  @override
  Future<List<Posts>> getPosts() async {
    return await servicePosts.fetchPosts();
  }
}