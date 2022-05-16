import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class Adolescence extends StatelessWidget {
  const Adolescence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const CustomText(size: true, text: 'مرحلة المراهقة'),
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
              text: 'مطالب النمو في مرحلة المراهقة (المبكرة-الوسطى-المتأخرة):'
                  '\nتكوين علاقات جديدة ناضجة مع رفاق السن'
                  '\nاكتساب الدور الاجتماعي الجنسي السليم'
                  '\nتحقيق الاستقلال الانفعالي عن الوالدين والأصدقاء'
                  '\nتقبل التغيرات الجسمية والتوافق معها'
                  "\nتحقيق الاستقلال الاقتصادي"
                  "\nاختبار مهنة معينة ومحاولة الاستعداد الجسمي والعقلي والاجتماعي والانفعالي لها"
                  "\nالاعداد والاستعداد للزواج والحياة الأسرية"
                  "\nتكوين المهارات والمفاهيم اللازمة للاشتراك في الحياة المدنية للمجتمع"
                  "\nمعرفة واكتساب السلوك الاجتماعي وتحمل المسؤولية الاجتماعية وممارستها"
                  "\nاكتساب القيم الدينية والاجتماعية معايير الأخلاق في المجتمع باعتبارها موجهات للسلوك السوي والمقبول اجتماعيا",
            ),
          ),
        ),
      ),
    );
  }
}
