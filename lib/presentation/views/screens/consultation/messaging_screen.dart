import 'package:flutter/material.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({
    Key? key,
    required this.counselorName,
  }) : super(key: key);
  final String counselorName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(counselorName),
      ),
    );
  }
}
