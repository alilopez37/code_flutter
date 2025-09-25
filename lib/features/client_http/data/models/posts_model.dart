import '../../domain/entities/posts.dart';

class PostsModel extends Posts {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostsModel({required this.userId, required this.id, required this.title, required this.body}) : super(id: id, title: title, body: body);

  factory PostsModel.fromJson(Map<String, dynamic> json) {
    return PostsModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}