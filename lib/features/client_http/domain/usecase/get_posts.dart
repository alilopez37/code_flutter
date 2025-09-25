import '../entities/posts.dart';
import '../repository/posts_repository.dart';

class GetPosts {
  final PostsRepository postsRepository;

  GetPosts(this.postsRepository);
  Future<List<Posts>> call() async {
    return await postsRepository.getPosts();
  }
}