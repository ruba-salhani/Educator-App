import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class Physical extends StatelessWidget {
  const Physical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.secondary,
          title: const CustomText(size: true, text: 'مسؤولية التربية الجسمية'),
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
                  'مسؤلية التربية الجسمية: إليكم المنهج العلمي الذي رسمه الإسلام في تربية الأولاد الجسمية، لتعلموا ضخامة الأمانة الملقاة على عاتقكم، \n ومعالم هذه المسؤولية التي أوجبها  الله عليكم: \n 1 وجوب النفقة على الأهل والولد: \n ومن النفقة على العيال تهيئة الأب لأهله وعياله الغذاء الصالح، والمسكن الصالح .. حتى لا تتعرض أجسامهم لأسقام، وتنهك أبدانهم الأوبئة والأمراض \n 2 اتباع القواعد الصحية في المأكل والمشرب والنوم: فمن هدي النبي عليه الصلاة والسلام في الطعام الحتماء من التخمة، والنهي عن الزيادة في الأكل والشرب على قدر الحاجة ومن هديه في الشراب: الشراب مثنى وثلاث، والنهي عن التنفس في الإناء، والنهي عن الشراب قائماً ومن هديه في النوم، النوم على الجانب الأيمن، لأن النوم على الجانب الأيسر يضر بالقلب، ويعيق التنفس \n 3 التحرز من الأمراض السارية المعدية: \n كان لزاماً على المربين -ولاسيما الأمهات- أذا أصيب أحد أولادهم بمرض معدٍ أن يعزلوه عن بقية الأولاد، حتى لاينتشر المرض، ويستفحل الوباء \n 4 معالجة المرض بالتداوي: \n 5 تطبيق مبدأ لا ضرر ولا ضرار: وبناء على هذه القاعدة وجب على المربين ولاسيما الأمهات أن يرشدوا أولادهم إلى التقيد بالتعاليم الصحية، والوسائل الوقائية في الحفاظ على صحة الولد، وتنمية قوته الجسدية .. وعليهم كذلك أن يستعينوا بالمختصين فيما يجب اتخاذه لوقاية الجسم من الآفات المرضية، والأمراض السارية (مثلاً على المربين أن يرشدوا الأولاد إلى أن يعتادوا أكل الفواكه الناضجة، وأكل الخضار والثمار بعد غسلها، وأن يعتادوا الطعام في أوقات مخصوصة، وغسل اليدين قبل الطعام وبعده) \n 6 تعويد الولد على ممارسة الرياضة وألعاب الفروسية: \n 7 تعويد الولد على التقشف وعدم الإغراق في التنعم:\n 8 تعويد الولد على حياة الجد والرجولة والابتعاد عن التراخي والميوعة والانحلال: \n كان لزاما على المربين ولاسميا الامهات ان يتعهدوا أولادهم منذ الصغر، وأن يغرسوا في نفوسهم أنبل معاني الرجولة والخشونة والإباء والشمم والخلق العظيم وعليهم كذلك أن يبعدوهم عن كل ما يحطم الرجولة والشخصية، ويقتل الفضيلة والأخلاق، ويوهن العقل والجسد .. فإن في ذلك -ولا شك- سلامة لتفكيرهم، وقوة لأبدانهم، وحفظاً لأخلاقهم، وسمواً لأرواحهم، وحافزاً قوياً لتحقيق آمالهم وأمانيهم \n \n وهناك ظواهر خطيرة نلمحها في محيط الصغار والكبار والمراهقين والشباب، وجب على المربين -ولاسيما الآباء- أن ينتبهوا لها ويدركوا أضرارها وأخطارها، ويكشفوا لمن لهم عليهم حق التربية عن شرورها وآفاتها .. حتى لا يقعوا في حبائلها، ويكتووا بنارها وهي: \n 1 ظاهرة التدخين \n وقد ثبت بشكل قاطع جازم لا يحتمل الشك أن الدخان-كما قرر أطباء الصحة- يورث السل، وسرطان الرئة، ويضعف الذاكرة، ويقلل الشهية، ويسبب اصفرار الوجه والأسنان، ويعيق التنفس، ويهيج الأعصاب، ويحدث انحطاطاً عاماً في الجسم، ويميّع الخلق، ويحلل الإرادة، ويعوّد على الكسل والاسترخاء أيضاً هناك ضرر مالي فمن المؤكد أن صاحب الدخل المحدود ينفق على الدخان يومياً ربع دخله أو يزيد، ولا يخفى مافي ذلك من إضاعة للمال، وخراب للبيوت، وشتات للأسر .. ذلك لأن المدمن يقتطع من قوت نفسه، وقوت عياله في سبيل شرائه وتحصيله، وربما انحرف عن الطريق السويّ كالرشوة والسرقة .. لجلب ثمنه، وتأمين وجوده \n 2 ظاهرة العادة السرية \n ثبت طبياً أن الذي يدكم على هذه العادة يقع في الأمراض التالية: إنهاك في القوى، نحول في الجسم، ارتعاش باأطراف، خفقان بالقلب، ضعف بالبصر والذاكرة، إخلال بالجهاز الهضمي، إصابة الرئتين بالالتهابات التي تؤدي إلى السل في أغلب الأحيان، وتؤثر على الدورة الدموية وتسبب فقر الدم .. ومن أضرارها أيضا تسبب مرض العنّة، وتسبب اشمئزاز كل جنس من الآخر وقرر العلماء النفسانيون أن المدمن على هذه العادة يصاب بأمراض نفسية وعقلية خطيرة وهي: الذهول، والنسيان، وضعف الإرادة، وضعف الذاكرة، الميل إلى العزلة والانكماش، الاتصاف بالاستحياء والخجل، الاستشعار بالخوف والكسل، والظهور بمظهر الكآبة والحزن، والتفكير بارتكاب الجرائم والانتحار \n أما العلاج الناجع في استئصال هذه الظاهرة فيكون في الوسائل التالية: 1 الزواج في سن مبكرة لكونه أنجع الوسائل في استئصال هذه العادة الفتاكة، بل هو السبيل الطبيعي الحيد لتصريف هذه الشحنة العارمة من الشهوة -2 صوم النفل فالإسلام أرشد الذين لا يجدون نكاحاً أن يصوموا صيام النفل لما للصيام من تخفيف لغلواء الشهوة، وكسر لحدة الغريزة، وتقوية لمعنى مراقبة الله، والخشية منه -3 الابتعاد عن المثيرات الجنسية -4 ملئ الفراغ بما ينفع -5 الرفقة الصالحة -6 الأخذ بالتعاليم الطبية -7 استشعار خوف الله تبارك وتعالى \n 3 ظاهرة المسكرات والمخدرات: فمن المجمع عليه لدى الأطباء وعلماء الصحة أن تعاطي المسكرات والمخدرات تسبب الجنون، وتضعف الذاكرة، وتورث أمراضاً عصبية ومعدية ومعوية، وتشل حدة الفكر والذهن، وتحدث آلاماً في الجهاز الهضمي، وتفقد الشهية إلى الطعام وتسبب سوء التغذية والهزال والخمول والضعف الجنسي، وتؤدي إلى تصلب الأنسجة والشرايين .. إلى غير ذلك من الأمراض الخطيرة، أيضاً لا يخفى مافي هذا من اتلاف للمال، وخراب للبيوت، وإيراث للفقر... عدا عن أن المدمن يسبب الضعف في الإنتاج، والخلل في الاقتصاد، والتخلف في ميادين الحضارة، والعلاج في استئصال هذه الظاهرة فيكون: بالتربية الصالحة وبمنع أسبابها وبمعاقبة مرتكبيها \n 4 ظاهرة الزنى واللواط  \n فهي أخطر الظواهر الاجتماعية عند الأطفال والمراهقين والشباب .. وكم سمعنا عن أطفال لم يبلغوا الحلم بعد سلكو طريق الفاحشة والفساد بغفلة عن مراقبة آبائهم وذويهم .. حتى هووا في مزالق الشذوذ والانحدار الخلقي، فقبعوا في حضيض الهلاك والضياع، أما عن الأضرار التي تنجم عن هذه الظاهرة فإنها بالغة الخطورة وهي: مرض الزهري ومرض السيلان أو التعقيبة وكذلك تسبب انتشار الأمراض المعدية، ويكفي هذه الظاهرة ضرراً وخطراً أنها تؤدي إلى اختلاط الأنساب وضياع النسل، وهتك الأعراض والحرمات، وقتل الشهامة والمروءة، وتفسخ المجتمع، وفصم أواصر الزوجية، وتفكك وحدة الأسرة، والانطلاق في حمأة الرذيلة والفساد، وفقد الرجولة والكرامة، أما العلاج في استئصال هذ الظاهرة فهو نفس العلاج الذي سبق ذكره في اسئصال العادة السرية',
            ),
          ),
        ),
      ),
    );
  }
}
