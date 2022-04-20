import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({
    Key? key,
    this.image,
    this.name,
    this.time,
    this.post,
    this.commentsNumber,
    this.likesNumber,
    this.likeOnpressed,
    this.commentOnpressed,
  }) : super(key: key);
  final String? image;
  final String? name;
  final String? time;
  final String? post;
  final int? likesNumber;
  final int? commentsNumber;
  final void Function()? likeOnpressed;
  final void Function()? commentOnpressed;
  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Card(
      //margin: const EdgeInsets.only(bottom: 200),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        CustomListTile(
          image: widget.image,
          name: widget.name,
          message: widget.time,
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(widget.post!),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Text('${widget.likesNumber!}' ' likes'),
                onTap: () {
                  context.pushRoute(const ReactionsScreen());
                  // do something
                },
              ),
              InkWell(
                child: Text('${widget.commentsNumber!}' ' comments'),
                onTap: () {
                  context.pushRoute(CommentsScreen());
                  // do something
                },
              ),
            ],
          ),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(children: [
              MaterialButton(
                child: Row(
                  children: const [
                    Icon(Icons.thumb_up_alt_outlined),
                    Text(' Like'),
                  ],
                ),
                onPressed: widget.likeOnpressed,
              )
            ]),
            Row(children: [
              MaterialButton(
                child: Row(
                  children: const [
                    Icon(Icons.mode_comment_outlined),
                    Text(' Comment'),
                  ],
                ),
                onPressed: widget.commentOnpressed,
              )
            ]),
          ],
        )
      ]),
    );
  }
}
