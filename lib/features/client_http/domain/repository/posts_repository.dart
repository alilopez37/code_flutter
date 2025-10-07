import '../entities/posts.dart';

abstract class PostsRepository {
  Future<List<Posts>> getPosts();
  Future<Posts> createPost(Posts post);
}