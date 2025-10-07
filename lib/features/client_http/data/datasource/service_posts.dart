
import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hotreload/core/network/http_client.dart';
import 'package:http/http.dart' as http;

import '../../../../core/error/exception.dart';
import '../models/posts_model.dart';

abstract class ServicePosts {
  Future<List<PostsModel>> fetchPosts();
  Future<PostsModel> createPost(PostsModel post);
}

class ServicePostsImpl implements ServicePosts {
  final http.Client client;
  final apiURL = dotenv.env['API_URL'];
  ServicePostsImpl({http.Client? client}) : client = client ?? HttpClient().client;

  @override
  Future<List<PostsModel>> fetchPosts() async {
    final url = Uri.parse('$apiURL/posts');
    try {
      final response = await client.get(url,
        headers: {
          "Content-Type": "application/json",
        },);
      if (response.statusCode == 200) {
        final List<dynamic> decoded = json.decode(response.body);
        return decoded.map((e) => PostsModel.fromJson(e)).toList();
      } else {
        throw ServerException("Código: ${response.statusCode}");
      }
    } catch (e, stacktrace) {
      print("Error en fetchPosts: $e");
      print(stacktrace);
      throw NetworkException(e.toString());
    }
  }

  @override
  Future<PostsModel> createPost(PostsModel post) async {
    final url = Uri.parse('$apiURL/posts');
    try {
      final response = await client.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(post.toJson()),
      );
      if (response.statusCode == 201) {
        return PostsModel.fromJson(json.decode(response.body));
      } else {
        throw ServerException("Código: ${response.statusCode}");
      }
    } catch (e) {
      throw NetworkException(e.toString());
    }
  }

}