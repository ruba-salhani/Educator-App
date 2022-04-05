import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {Key? key, this.image, this.name, this.message, this.ontap})
      : super(key: key);
  final String? image;
  final String? name;
  final String? message;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage(image!),
        ),
        title: Text(name!),
        subtitle: Text(message!),
      ),
      onTap: ontap,
    );
  }
}
