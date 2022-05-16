import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class Majority extends StatelessWidget {
  const Majority({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const CustomText(size: true, text: 'مرحلتي الرشد والنضج'),
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
              text: 'مطالب النمو في مرحلتي الرشد والنضج:'
                  "\nتوسيع الخبرات المعرفية والاجتماعية"
                  "\nاختيار الزوجة أو الزوج"
                  "\nالحياة مع الزوجة أو الزوج"
                  "\nتكوين مستوى اجتماعي واقتصادي مناسب ومستقر"
                  "\nتربية الأطفال وتنشئتهم تنشئة اجتماعية سوية"
                  "\nإيجاد روابط اجتماعية تتفق مع الحياة الجديدة"
                  "\nتكوين فلسفة عملية للحياة"
                  "\nتحقيق التوازن الانفعالي"
                  "\nتحمل مسؤوليات الحياة والأسرة",
            ),
          ),
        ),
      ),
    );
  }
}
