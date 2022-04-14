import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/views/screens/evaluate/widget/question.dart';
import 'package:flutter/material.dart';

class EvaluateYourChildScreen extends StatefulWidget {
  const EvaluateYourChildScreen({Key? key}) : super(key: key);

  @override
  State<EvaluateYourChildScreen> createState() =>
      _EvaluateYourChildScreenState();
}

class _EvaluateYourChildScreenState extends State<EvaluateYourChildScreen> {
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
    "سليم من الأمراض العضوية؟",
    "سليم من الأمراض؟",
    "ينفذ ما يتعلمه؟",
    "لا يوجد في بيته مشكلة \n فقر، يتم، طلاق، مشاجرات؟",
    "عنده القدرة على \n الإبتكار والتجديد؟",
    "ليست عنده لا مبالاة",
    "سريع البدية؟",
    "يفعل وحده ما يفعله أمامك؟",
    "صادق أمين؟",
    "إيجابي؟",
    "أكبر من سنه؟",
    "مقبل على الخير؟",
    "مقبل على العبادة؟",
    "لديه حرفة؟",
    "له هواية؟"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Evaluate your child'),
      ),
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
            const Text(
                "'ملاحظة: هذا الاختبار من كتاب كيف تربي أبناءك لأحمد الطيار'",
                textAlign: TextAlign.right),
            ElevatedButton(
              child: Text("النتيجة"),
              onPressed: () {
                print(noVal);
                print(sometimesVal);
                print(yesVal);
              },
            ),
          ],
        ),
      ),
    );
  }
}
