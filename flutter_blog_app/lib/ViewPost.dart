import 'package:flutter/material.dart';
import 'package:flutter_blog_app/blog_post.dart';
import 'package:flutter_blog_app/blog_post.dart';

class ViewPostsScreen extends StatefulWidget {
  @override
  _ViewPostsScreenState createState() => _ViewPostsScreenState();
}

class _ViewPostsScreenState extends State<ViewPostsScreen> {
  List<BlogPost> posts = []; // List of blog posts

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Posts'),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(posts[index].title),
            subtitle: Text(posts[index].content),
            // Add additional information like author, date, etc. here if needed
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to BlogPostScreen and handle submission
          _navigateToBlogPostScreen(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _navigateToBlogPostScreen(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BlogPostScreen(onSubmit: _onSubmit)),
    );

    if (result != null && result is BlogPost) {
      setState(() {
        posts.add(result); // Add the submitted blog post to the list
      });
    }
  }

  void _onSubmit(BlogPost blogPost) {
    setState(() {
      posts.add(blogPost); // Add the submitted blog post to the list
    });
  }
}
