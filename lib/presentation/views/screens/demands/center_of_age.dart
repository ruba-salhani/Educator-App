import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class CenterOfAge extends StatelessWidget {
  const CenterOfAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const CustomText(size: true, text: 'مرحلة وسط العمر'),
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
              text: "مطالب النمو في مرحلة وسط العمر:"
                  "\nتحقيق مستوى النجاح في المستويات الاجتماعية والأسرية والمدنية للراشدين"
                  "\nتحقيق مستوى معيشي مناسب ويحافظ عليه"
                  "\nيعاون في تنشئة المراهقين والأطفال ليصبحوا راشدين سعداء مسؤولين"
                  "\nتنمية الهوايات والميول اللازمة للأنشطة وقت الفراغ عند الراشدين"
                  "\nأن يربط الفرد نفسه بجماعة ويعتبر عنصراً فعّالاً فيها"
                  "\nيتقبل تغييرات أواسط العمر الفسيولوجية ويتكيف معها"
                  "\nيتوافق مع سلوك الآباء من المسنين والكهول ممن يلزم أن يعايشهم",
            ),
          ),
        ),
      ),
    );
  }
}
