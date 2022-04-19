import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:educator/presentation/views/screens/evaluate/widget/elevate_dialog.dart';
import 'package:educator/presentation/views/screens/evaluate/widget/question.dart';
import 'package:flutter/material.dart';

class EvaluatedOfYourSelfScreen extends StatefulWidget {
  const EvaluatedOfYourSelfScreen({Key? key}) : super(key: key);

  @override
  State<EvaluatedOfYourSelfScreen> createState() =>
      _EvaluatedOfYourSelfScreenState();
}

class _EvaluatedOfYourSelfScreenState extends State<EvaluatedOfYourSelfScreen> {
  int noCount = 0;
  int sometimesCount = 0;
  int yesCount = 0;
  int count = 0;
  late String _result;
  bool screen = true;
  List<bool> noVal = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  List<bool> sometimesVal = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  List<bool> yesVal = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  List questions = [
    "هل أنت تحب الأطفال؟",
    "هل يحبك الأطفال؟",
    "هل ترى أن تربيتك كانت \n صحيحة؟",
    "هل تراعي الفروق الفردية بين \n الأطفال؟",
    "هل تفضل الأساليب الحديثة في \n التربية؟",
    "هل عندك القدرة على تنمية \n وتوظيف المواهب؟",
    "هل أنت قادر على الأثارة \n والتشويق أثناء الحديث؟",
    "هل عندك القدرة على احتواء \n الاّخرين؟",
    "هل تعرف خصائص المرحلة \n السنية لطفلك؟",
    "هل تستخدم أسلوب \n الثواب والعقاب؟",
    "هل تعرف مشكلات الطفل النفسية \n وطرق حلها؟",
    "هل لك هدف من التربية؟",
    "هل أنت لين في غير ضعف؛ \n شديد في غير عنف؟",
    "هل أنت قدوة في \n دراستك ومظهرك وعبادتك؟",
    "هل أنت قادر على التعامل \n مع المواقف المختلفة وتغيير \n ملامح وجهك حسبما يقتضي \n الموقف؟"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Evaluate of yourself'),
          backgroundColor: AppColors.secondary),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          //mainAxisSize: MainAxisSize.min,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index) {
                return Question(
                  question: questions[index],
                  nVal: noVal[index],
                  yVal: yesVal[index],
                  sVal: sometimesVal[index],
                  noOnchange: (value) {
                    setState(() {
                      noVal[index] = value!;
                    });
                    yesVal[index] = false;
                    sometimesVal[index] = false;
                  },
                  sometimesOnchange: (value) {
                    setState(() {
                      sometimesVal[index] = value!;
                    });
                    yesVal[index] = false;
                    noVal[index] = false;
                  },
                  yesOnchange: (value) {
                    setState(() {
                      yesVal[index] = value!;
                    });
                    noVal[index] = false;
                    sometimesVal[index] = false;
                  },
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  "'ملاحظة: هذا الاختبار من كتاب كيف تربي أبناءك لأحمد الطيار'",
                  style: TextStyle(
                    color: Colors.grey,
                    //fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right),
            ),
            ElevatedButton(
              child: Text("النتيجة"),
              style: ElevatedButton.styleFrom(
                primary: AppColors.secondary,
              ),
              onPressed: () {
                // result(noVal, sometimesVal, yesVal);
                // print(_result);

                // showDialog(
                //   context: result(noVal, sometimesVal, yesVal),
                //   builder: (BuildContext context) {
                //     return CustomDialog(
                //       content: _result,
                //       firstButtonChild: "العربية",
                //       firstButtonOnpressd: () {},
                //       secondButtonChild: "English",
                //       secondButtonOnpressd: () {},
                //     );
                //   },
                // );

                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ElevateDialog(
                        screen: true,
                        noVal: noVal,
                        sometimesVal: sometimesVal,
                        yesVal: yesVal,
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }

  // result(noVal, sometimesVal, yesVal) async {
  //   print(noVal);
  //   print(sometimesVal);
  //   print(yesVal);
  //   for (bool i in noVal) {
  //     if (i == true) {
  //       noCount++;
  //     }
  //   }
  //   for (bool i in sometimesVal) {
  //     if (i == true) {
  //       sometimesCount += 2;
  //     }
  //   }
  //   for (bool i in yesVal) {
  //     if (i == true) {
  //       yesCount += 3;
  //     }
  //   }
  //   count = noCount + sometimesCount + yesCount;
  //   print(count);
  //   if (count < 20) {
  //     screen ? _result = "راجع نفسك" : _result = "";

  //     //print("راجع نفسك");
  //   }
  //   if (count >= 20 && count <= 35) {
  //     screen ? _result = "اهتم بنفسك أكثر" : _result = "";
  //     //print("اهتم بنفسك أكثر");
  //   }
  //   if (count > 35) {
  //     screen ? _result = "أنت مرب ممتاز فهنبئا لك" : _result = "";
  //     //print("أنت مرب ممتاز فهنبئا لك");
  //   }
  //   count = 0;

  //   return _result;
  // }
}
