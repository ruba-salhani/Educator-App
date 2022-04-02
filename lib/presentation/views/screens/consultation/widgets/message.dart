import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({Key? key, this.image, this.name, this.message})
      : super(key: key);
  final String? image;
  final String? name;
  final String? message;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage(image!),
          ),
          title: Text(name!),
          subtitle: Text(message!),
        ),
      ),
      onTap: () {},
    );
  }
}
