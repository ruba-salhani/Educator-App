import 'package:flutter/material.dart';

class Physical extends StatelessWidget {
  const Physical({Key? key}) : super(key: key);

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
