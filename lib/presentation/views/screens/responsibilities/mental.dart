import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class Mental extends StatelessWidget {
  const Mental({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.secondary,
          title: const CustomText(size: true, text: 'مسؤولية التربية العقلية'),
        ),
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(
            "'من كتاب تربية الاولاد في الإسلام لعبد لله ناصح علوان'",
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
              text:
                  'المقصود بالتربية العقلية: تكوين فكر الولد بكل ماهو نافع من العلوم الشرعية، والثقافة العلمية والعصرية، والتوعية الفكرية والحضارية .. حتى ينضج الولد فكرياً ويتكوّن علمياً وثقافياً، \n إن مسؤولية المربون في التربية العقلية تتركز في الأمور التالية: \n 1 الواجب التعليمي \n لإن الإسلام حمّل الآباء والمربين مسؤولية كبرى في تعليم الأولاد وتنشئتهم على الاغتراف من معين الثقافة والعلم، وتركيز أذهانهم على الفهم المستوعب، والمعرفة المجردة، والمحاكمة المتّزنة، والإدراك الناضج الصحيح، ومن الواجب التعليمي الذي يجب أن يحرص عليه المربون والمعلمون والآباء هو التركيز في الدرجة الأولى على تعليم الأولاد -وهم في سن التمييز- تلاوة القرآن الكريم، والسيرة النبوية، وكل مايحتاجون إليه من العلوم الشرعية، وبعض القصائد الادبية، وأمثال العرب \n 2 التوعية الفكرية \n والمقصود بها ارتباط الولد بالإسلام دنياً ودولة .. وبالقرآن العظيم نظاماً وتشريعاً .. وبالتاريخ الإسلامي عزاً ومجداً .. وبالثقافة الإسلامية العامة روحاً وفكراً .. وبالارتباط الحركي للدعوة الإسلامية اندفاعاً وحماسة .. \n وذلك عن طريق التلقين الواعي، والقدوة الواعية، والمطالعة الواعية، والرفقة الواعية \n 3 الصحة العقلية \n إن المفاسد التي تؤثر على العقل والذاكرة هي : مفسدة تناول الخمور ومفسدة العادة السرية ومفسدة الإثارات الجنسية ',
            ),
          ),
        ),
      ),
    );
  }
}
