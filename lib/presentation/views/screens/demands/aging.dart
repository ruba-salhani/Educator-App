import 'package:flutter/material.dart';

class Aging extends StatelessWidget {
  const Aging({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Aging'),
        ),
      ),
    );
  }
}
