import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    Key? key,
    this.onpressed,
    this.color,
    this.txtColor,
    this.borderColor,
    this.assetName,
    this.text,
  }) : super(key: key);
  final Color? color;
  final Color? txtColor;
  final VoidCallback? onpressed;
  final Color? borderColor;
  final String? assetName;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: MaterialButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: (MediaQuery.of(context).size.height) * 0.06,
              width: (MediaQuery.of(context).size.width) * 0.06,
              child: Image.asset(assetName!),
            ),
            Text(
              text!,
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontSize: (MediaQuery.of(context).size.width) * 0.042,
              ),
            ),
            // Opacity(
            //   opacity: 0.0,
            //   child: SizedBox(
            //     height: (MediaQuery.of(context).size.height) * 0.06,
            //     width: (MediaQuery.of(context).size.width) * 0.06,
            //     child: Image.asset(assetName!),
            //   ),
            // ),
          ],
        ),
        color: color,
        textColor: txtColor,
        onPressed: onpressed,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor!),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
