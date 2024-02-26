import 'package:flutter/material.dart';

// Define the BlogPost class outside of the BlogPostScreen class
class BlogPost {
  final String title;
  final String content;

  BlogPost({required this.title, required this.content});
}

class BlogPostScreen extends StatelessWidget {
  final Function(BlogPost) onSubmit; // Callback function to handle submission

  const BlogPostScreen({required this.onSubmit}); // Constructor to receive the callback function

  @override
  Widget build(BuildContext context) {
    String title = '';
    String content = '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Create Blog Post'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Create New Blog Post',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              onChanged: (value) {
                title = value;
              },
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              onChanged: (value) {
                content = value;
              },
              decoration: InputDecoration(
                labelText: 'Content',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Call the onSubmit callback with the submitted blog post
                onSubmit(BlogPost(title: title, content: content));
                Navigator.pop(context); // Close the BlogPostScreen
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
