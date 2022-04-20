import 'package:flutter/material.dart';

class EarlyChildhood extends StatelessWidget {
  const EarlyChildhood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Infancy and early childhood'),
        ),
      ),
    );
  }
}
