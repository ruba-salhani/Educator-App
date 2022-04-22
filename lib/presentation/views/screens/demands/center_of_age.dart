import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class CenterOfAge extends StatelessWidget {
  const CenterOfAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const CustomText(size: true, text: 'مرحلة وسط العمر'),
        ),
      ),
    );
  }
}
