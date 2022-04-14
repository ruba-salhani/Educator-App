import 'package:flutter/material.dart';

class Child extends StatelessWidget {
  const Child({Key? key, this.childImage, this.childName, this.ontap})
      : super(key: key);
  final String? childImage;
  final String? childName;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(childImage!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Text(childName!),
          ],
        ),
      ),
      onTap: ontap,
    );
  }
}
