import 'package:flutter/material.dart';

class Psychological extends StatelessWidget {
  const Psychological({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Responsibilities of education'),
        ),
      ),
    );
  }
}
