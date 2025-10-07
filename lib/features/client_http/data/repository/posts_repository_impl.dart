import 'package:hotreload/features/client_http/data/datasource/service_posts.dart';

import '../../domain/entities/posts.dart';
import '../../domain/repository/posts_repository.dart';
import '../models/posts_model.dart';

class PostRepositoryImpl extends PostsRepository {
  final ServicePosts servicePosts;

  PostRepositoryImpl({required this.servicePosts});
  @override
  Future<List<Posts>> getPosts() async {
    return await servicePosts.fetchPosts();
  }

  @override
  Future<Posts> createPost(Posts post) async {
    final postsModel = PostsModel(id: post.id, title: post.title, body: post.body);
    return await servicePosts.createPost(postsModel);
  }
}