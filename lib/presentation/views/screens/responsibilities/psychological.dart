import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class Psychological extends StatelessWidget {
  const Psychological({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.secondary,
          title: const CustomText(size: true, text: 'مسؤولية التربية النفسية'),
        ),
      ),
    );
  }
}
