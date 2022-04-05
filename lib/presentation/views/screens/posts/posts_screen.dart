import 'package:educator/presentation/views/screens/posts/widgets/post.dart';
import 'package:flutter/material.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Discussion topics')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Post(
              image: 'assets/images/1.jpg',
              name: 'Counselor Name',
              time: "1h",
              post: "post..............................\n....................",
              likesNumber: 5,
              commentsNumber: 10,
              likeOnpressed: () {},
              commentOnpressed: () {},
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 20.0),
          itemCount: 2,
        ),
      ),
    );
  }
}
