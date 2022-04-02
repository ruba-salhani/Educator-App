import 'package:flutter/material.dart';

class Counselor extends StatelessWidget {
  const Counselor({
    Key? key,
    this.counselorImage,
    this.counselorName,
  }) : super(key: key);
  final String? counselorImage;
  final String? counselorName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(
          children: [
            CircleAvatar(
              radius: 55.0,
              backgroundImage: AssetImage(counselorImage!),
            ),
            Text(counselorName!),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
