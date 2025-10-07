import 'package:flutter/cupertino.dart';

import '../../domain/entities/posts.dart';
import '../../domain/usecase/create_post.dart';
import '../../domain/usecase/get_posts.dart';

class PostsProvider with ChangeNotifier {
  final GetPosts getPostsUseCase;
  final CreatePost createPostUseCase;

  PostsProvider({
    required this.getPostsUseCase,
    required this.createPostUseCase
  });

  List<Posts> _posts = [];
  bool _isLoading = false;
  String? _error;

  List<Posts> get posts => _posts;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchPosts() async {
    _isLoading = true;
    _error = null;
    notifyListeners();
    
    try {
      _posts = await getPostsUseCase();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> addPost(String title, String body) async {
    final newPost = Posts(id: 0, title: title, body: body);
    final created = await createPostUseCase(newPost);
    _posts.insert(0, created);
    notifyListeners();
  }
}