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
  int percent = 0;
  late String _result;
  @override
  Widget build(BuildContext context) {
    result(noVal, sometimesVal, yesVal);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: CustomDialog(
        firstButtonChild: "حسنا",
        firstButtonOnpressd: () {
          Navigator.of(context).pop();
        },
        secondButtonChild: "اعد الاختبار",
        secondButtonOnpressd: () {
          Navigator.of(context).pop();
        },
        content: _result,
      ),
    );
  }

  result(noVal, sometimesVal, yesVal) async {
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
    percent = (count * 100 / 45).toInt();
    print(count);
    if (count < 20) {
      screen
          ? _result = "$percent" " % " "راجع نفسك !!!"
          : _result = "$percent" " % " "اتق الله ولا تضيع الأمانة";
    }
    if (count >= 20 && count <= 35) {
      screen
          ? _result = "$percent" " % " "جيد ولكن اهتم بنفسك أكثر"
          : _result = "$percent" " % " "ابنك يحتاج لاهتمام أكثر";
    }
    if (count > 35) {
      screen
          ? _result = "$percent" " % " "أنت مرب ممتاز فهنبئا لك"
          : _result = "$percent" " % " "بارك الله لك في ابنك";
    }
    count = 0;
    print(count);
    print(_result);
    return _result;
  }
}
