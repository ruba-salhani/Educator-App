import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class Childhood extends StatelessWidget {
  const Childhood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const CustomText(
              size: true, text: 'مرحلتي الطفولة الوسطى والمتأخرة'),
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
              text: 'مطالب النمو في مرحلتي الطفولة الوسطى والمتأخرة:'
                  '\nازدياد المعرفة عن العالم المادي والاجتماعي'
                  '\nتعلم الدور الجنسي المناسب'
                  '\nنمو الثقة وتقدير الذات'
                  '\nاكتساب المهارات الأكاديمية والتفكير والتمييز'
                  '\nتعلم المهارت الجسمية والاجتماعية',
            ),
          ),
        ),
      ),
    );
  }
}
