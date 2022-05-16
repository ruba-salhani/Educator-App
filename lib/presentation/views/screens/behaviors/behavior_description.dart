import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BehaviorDescription extends StatelessWidget {
  const BehaviorDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.secondary,
            title: const CustomText(size: true, text: 'متابعة السلوك'),
          ),
          body: Padding(
            padding: EdgeInsets.all(
              (MediaQuery.of(context).size.width) * 0.025,
            ),
            child: ListView(
              children: [
                Center(
                  child: Container(
                    height: Get.height * 0.17,
                    //width: Get.width * 0.5,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/behaviors.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                const CustomText(
                    size: false,
                    text:
                        ' ومن أهم الأمور أن تقوّم أبنائك كل فترة وتنظر إلى تغيّر سلوكهم وتصرفاتهم هل هي إلى الأحسن أم إلى الأسوأ فتعلم حينها مدى جدوى تربيتك وقوانينك وتعاملك، وإني أضع بين يديك هذا الجدول الذي يساعدك على ذلك وقد وضعته لأولادي وجرّبته فرأيت له أثراً كبير. \n وأطلع أبناءك على هذا الجدول وأخبرهم بأنك ستقوّمهم من خلاله فمن جاءت نتائجه ممتازة وجيدة فإن هذا علامة على أنه ولد متميّز ومحبوب وأنه سينال المحبة والثقة من والديه وستكون له الأولوية في الهدايا والمكافئات  وسيحظى بالذهاب معه في نزهاته وزياراته واجعل هذا الجدول يستمر على مدار شهرين أو ثلاثة، \n وأثناء هذه الاشهر أخبرهم بالطريقة التالية: إذا تجاوز الابن خمس علامات (ضعيف) فإنه مثلا سيحرم من الذهاب معك عندما تخرج في نزهة أو زيارة \n وعندما يتجاوز الابن الخمس علامات فنفذ مااتفقتم عليه من الحرمان وسيحس بعدها بعاقبة إهماله واستهتاره وستلحظ فيه تغيّرا كبيرا في سلوكه وأدبه \n ولا تجعل أقصى حد مسموح به لعلامات الضعيف مرّتين او ثلاثا حيث سيكون هذا من باب التعجيز له فييأس ويتذمر وسيحس بأن هذا الجدول قيداً يمنعه من ممارسة حياته وطفولته فالطفل لابدّ أن يقع في الأخطاء فلا تجعل الخطأ الواحد أو الاثنين سبباً في حرمانه وعقابه \n ومن مميزات هذا الجدول أنه يخفف كثيراً من معاناة الآباء والأمهات في اللوم والصراخ والحنق عندما يفعل أبناؤهم خطأ ما  فوضع علامة على ضعيف أشدّ عليهم من هذا الصراخ واللوم وهو الذي سيمنعهم من تكرار فعلهم وليس اللوم والعتاب'),
                const Text(
                  "' من كتاب كيف تربي أبناءك لأحمد الطيار'",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ));
  }
}
