import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class ElevateDialog extends StatelessWidget {
  ElevateDialog({
    Key? key,
    required this.noVal,
    required this.sometimesVal,
    required this.yesVal,
    required this.screen,
  }) : super(key: key);
  List<bool> yesVal;
  List<bool> sometimesVal;
  List<bool> noVal;
  bool screen;
  int noCount = 0;
  int sometimesCount = 0;
  int yesCount = 0;
  int count = 0;
  late String _result;
  @override
  Widget build(BuildContext context) {
    result(noVal, sometimesVal, yesVal);
    return CustomDialog(
      firstButtonChild: "Ok",
      firstButtonOnpressd: () {
        Navigator.of(context).pop();
      },
      secondButtonChild: "Retest",
      secondButtonOnpressd: () {
        Navigator.of(context).pop();
      },
      content: _result,
    );
  }

  result(noVal, sometimesVal, yesVal) async {
    print(noVal);
    print(sometimesVal);
    print(yesVal);
    for (bool i in noVal) {
      if (i == true) {
        noCount++;
      }
    }
    for (bool i in sometimesVal) {
      if (i == true) {
        sometimesCount += 2;
      }
    }
    for (bool i in yesVal) {
      if (i == true) {
        yesCount += 3;
      }
    }
    count = noCount + sometimesCount + yesCount;
    print(count);
    if (count < 20) {
      screen ? _result = "راجع نفسك" : _result = "";

      //print("راجع نفسك");
    }
    if (count >= 20 && count <= 35) {
      screen ? _result = "اهتم بنفسك أكثر" : _result = "";
      //print("اهتم بنفسك أكثر");
    }
    if (count > 35) {
      screen ? _result = "أنت مرب ممتاز فهنبئا لك" : _result = "";
      //print("أنت مرب ممتاز فهنبئا لك");
    }
    count = 0;
    print(_result);
    return _result;
  }
}
