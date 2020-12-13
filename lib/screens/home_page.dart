import 'package:flutter/material.dart';
import 'package:fluttertutorial/models/post.dart';
import 'package:fluttertutorial/widgets/post_list.dart';
import 'package:fluttertutorial/widgets/text_input.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Post> posts = [];

  void newPost(String value) {
    this.setState(() {
      this.posts.add(new Post(value, "John"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Column(
        children: [
          Expanded(child: PostList(this.posts)),
          TextInputWidget(this.newPost)
        ],
      ),
    );
  }
}
