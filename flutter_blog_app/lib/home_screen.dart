import 'package:flutter/material.dart';
import 'package:flutter_blog_app/blog_post.dart';
import 'package:flutter_blog_app/ViewPost.dart'; // Import the view posts screen
import 'package:flutter_blog_app/firebase_auth.dart'; // Import the FirebaseAuth service

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog App Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Welcome to Blog App!',
                style: TextStyle(fontSize: 24),
              ),
            ),
           ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BlogPostScreen(
        onSubmit: (blogPost) {
          // Handle the submitted blog post
          // This is where you would typically add the blog post to your list of posts
          print('Submitted blog post: $blogPost');
        },
      )),
    );
  },
  child: Text('Create New Post'),
),

            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewPostsScreen()), // Navigate to the view posts screen
                );
              },
              child: Text('View Posts'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _logout(context);
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }

  void _logout(BuildContext context) {
    FirebaseAuthService.signOut(); // Call the signOut method from the FirebaseAuth service
    Navigator.popUntil(context, ModalRoute.withName('/')); // Navigate back to the login screen
  }
}
