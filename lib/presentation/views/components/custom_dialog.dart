import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    Key? key,
    required this.content,
    required this.firstButtonChild,
    required this.secondButtonChild,
    required this.firstButtonOnpressd,
    required this.secondButtonOnpressd,
  }) : super(key: key);

  final String content;
  final String firstButtonChild;
  final String secondButtonChild;
  final void Function() firstButtonOnpressd;
  final void Function() secondButtonOnpressd;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        //backgroundColor: Colors.black,
        elevation: 30,

        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: firstButtonOnpressd,
                  child: CustomText(
                      size: false,
                      text:
                    firstButtonChild,
                  )),
              ElevatedButton(
                  onPressed: secondButtonOnpressd,
                  child: CustomText(
                    size: false,
                    text: secondButtonChild,
                  )),
            ],
          ),
        ],
        content: CustomText(
          size: false,
          text: content,
          //style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
