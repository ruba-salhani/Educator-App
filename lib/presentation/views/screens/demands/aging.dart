import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class Aging extends StatelessWidget {
  const Aging({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const CustomText(size: true, text: 'مرحلة الشيخوخة'),
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
            child: const CustomText(
              size: false,
              text: "مطالب النمو في مرحلة الشيخوخة:"
                  "\nتقبل الضعف الجسمي والمتاعب الصحية"
                  "\nالتوافق بالنسبة لحالة التقاعد أو ترك العمل"
                  "\nتقبّل نقص الدخل والاعتماد قليلا من الناحية المالية على الآخرين وتقدير ذلك"
                  "\nالتوافق لموت الزوج أو الزوجة"
                  "\nتحقيق التوافق مع رفاق السن"
                  "\nالتوافق مع تطلعات الجيل التالي"
                  "\nتقبّل الحياة بواقعها الاجتماعي الحالي لا الماضي"
                  "\nاكتساب أنماط السلوك التفاؤلي للحياة"
                  "\nالمساهمة في الواجبات الاجتماعية في حدود الامكانيات الصحية والاجتماعية والنفسية"
                  "\nتقبّل حركة التغيير الاجتماعي في المجتمع والتوافق معها",
            ),
          ),
        ),
      ),
    );
  }
}
