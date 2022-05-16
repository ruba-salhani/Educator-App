import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class EarlyChildhood extends StatelessWidget {
  EarlyChildhood({Key? key}) : super(key: key);
  String text =
      'مطالب النمو في مرحلة الرضيع والطفولة المبكرة: \n تناول الأطعمة الصلبة \n تعلم المشي والكلام وضبط الإخراج \n نمو الثقة في الذات والآخرين \n استكشاف البيئة \n تعلم الارتباط اجتماعياً وعاطفياً بالآخرين \n تعلم التمييز بين الصواب والخطأ';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const CustomText(
              size: true, text: 'مرحلة الرضاعة والطفولة المبكرة'),
        ),
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "'من كتاب علم نفس  النمو لكامل محمد محمد عويضة'",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            //textAlign: TextAlign.right,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(
              (MediaQuery.of(context).size.width) * 0.025,
            ),
            child: CustomText(
              size: false,
              text: text,
            ),
          ),
        ),
      ),
    );
  }
}
