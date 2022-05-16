import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:educator/presentation/views/screens/posts/widgets/post.dart';
import 'package:flutter/material.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar:
            AppBar(title: const CustomText(size: true, text: 'مواضيع للنقاش')),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Post(
                image: 'assets/images/1.jpg',
                name: 'اسم المستشار',
                time: "1 س",
                post:
                    "post..............................\n....................",
                likesNumber: 5,
                commentsNumber: 10,
                likeOnpressed: () {},
                commentOnpressed: () {
                  context.pushRoute(const CommentsScreen());
                },
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 20.0),
            itemCount: 2,
          ),
        ),
      ),
    );
  }
}
