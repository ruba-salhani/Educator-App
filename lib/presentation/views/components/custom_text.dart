import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.text, required this.size})
      : super(key: key);
  final String text;
  final bool size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        //color: AppColors.secondary,
        //fontWeight: FontWeight.bold,
        fontSize: size
            ? (MediaQuery.of(context).size.width) * 0.05
            : (MediaQuery.of(context).size.width) * 0.045,
      ),
    );
  }
}
