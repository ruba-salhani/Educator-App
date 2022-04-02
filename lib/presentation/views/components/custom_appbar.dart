import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.text,
    required this.icon,
    required this.onpreased,
  })  : preferredSize = const Size.fromHeight(60),
        super(key: key);
  final String text;
  final IconData icon;
  final void Function() onpreased;
  @override
  final Size preferredSize; // default is 56.0

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          IconButton(
            onPressed: onpreased,
            icon: Icon(icon),
          )
        ],
      ),
    );
  }
}
