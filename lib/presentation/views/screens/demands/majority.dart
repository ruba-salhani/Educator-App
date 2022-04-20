import 'package:flutter/material.dart';

class Majority extends StatelessWidget {
  const Majority({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('majority and maturity'),
        ),
      ),
    );
  }
}
