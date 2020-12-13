import 'package:flutter/material.dart';
import 'package:fluttertutorial/models/post.dart';

class PostList extends StatefulWidget {
  final List<Post> listItems;

  PostList(this.listItems);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final post = this.widget.listItems[index];

        return Card(
          child: Row(
            children: [
              Expanded(
                  child: ListTile(
                title: Text(post.body),
                subtitle: Text(post.author),
              )),
              Row(
                children: [
                  Container(
                    child: Text(
                      "${post.likes}",
                      style: TextStyle(fontSize: 20),
                    ),
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  ),
                  IconButton(
                    icon: Icon(Icons.thumb_up),
                    onPressed: () => this.setState(() => post.likePost()),
                    color: post.userLiked ? Colors.green : Colors.black,
                  )
                ],
              )
            ],
          ),
        );
      },
      itemCount: this.widget.listItems.length,
    );
  }
}
