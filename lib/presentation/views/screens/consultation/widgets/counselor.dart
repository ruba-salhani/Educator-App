import 'package:flutter/material.dart';

class Counselor extends StatelessWidget {
  const Counselor(
      {Key? key, this.counselorImage, this.counselorName, this.ontap})
      : super(key: key);
  final String? counselorImage;
  final String? counselorName;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          CircleAvatar(
            radius: 55.0,
            backgroundImage: AssetImage(counselorImage!),
          ),
          Text(counselorName!),
        ],
      ),
      onTap: ontap,
    );
  }
}
