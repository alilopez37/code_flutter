import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show StatelessWidget, BuildContext, Widget, Text, AppBar, Scaffold, ElevatedButton, CircularProgressIndicator, ListTile;
import 'package:hotreload/features/client_http/presentation/providers/posts_provider.dart';
import 'package:provider/provider.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PostsProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => provider.fetchPosts(),
            child: const Text('Fetch Posts'),
          ),
          Expanded(
            child: provider.isLoading
                ? const Center(child: CircularProgressIndicator())
                : provider.error != null
                ? Center(child: Text(provider.error!))
                : ListView.builder(
                    itemCount: provider.posts.length,
                    itemBuilder: (_, index) {
                      final post = provider.posts[index];
                      return ListTile(
                        title: Text(post.title),
                        subtitle: Text(post.body),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
