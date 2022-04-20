import 'package:flutter/material.dart';

class Childhood extends StatelessWidget {
  const Childhood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Childhood'),
        ),
      ),
    );
  }
}
