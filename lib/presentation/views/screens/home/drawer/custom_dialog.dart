import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    Key? key,
    required this.title,
    required this.content,
    required this.firstButtonChild,
    required this.secondButtonChild,
    required this.firstButtonOnpressd,
    required this.secondButtonOnpressd,
  }) : super(key: key);
  final String title;
  final String content;
  final String firstButtonChild;
  final String secondButtonChild;
  final void Function() firstButtonOnpressd;
  final void Function() secondButtonOnpressd;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      //backgroundColor: Colors.black,
      elevation: 30,
      title: Text(
        title,
        //style: Theme.of(context).textTheme.headline6,
      ),
      actionsOverflowButtonSpacing: 20,
      actions: [
        ElevatedButton(
            onPressed: firstButtonOnpressd,
            child: Text(
              firstButtonChild,
            )),
        ElevatedButton(
            onPressed: secondButtonOnpressd,
            child: Text(
              secondButtonChild,
            )),
      ],
      content: Text(
        content,
        //style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
