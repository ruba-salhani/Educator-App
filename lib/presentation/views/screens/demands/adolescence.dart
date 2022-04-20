import 'package:flutter/material.dart';

class Adolescence extends StatelessWidget {
  const Adolescence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Adolescence'),
        ),
      ),
    );
  }
}
