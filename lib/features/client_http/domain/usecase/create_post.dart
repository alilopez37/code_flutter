import '../entities/posts.dart';
import '../repository/posts_repository.dart';

class CreatePost {
  final PostsRepository repository;
  CreatePost(this.repository);

  Future<Posts> call(Posts post) async {
    return await repository.createPost(post);
  }
}