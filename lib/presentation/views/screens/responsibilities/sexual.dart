import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class Sexual extends StatelessWidget {
  const Sexual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.secondary,
          title: const CustomText(size: true, text: 'مسؤولية التربية الجنسية'),
        ),
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.all(10.0),
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
                  'المقصود بالتربية الجنسية: تعليم الولد وتوعيته ومصارحته منذ أن يعقل القضايا التي تتعلق بالجنس، وترتبط بالغريزة، وتتصل بالزواج .. حتى إذا شب الولد وترعرع وتفهّم أمور الحياة عرف مايحل وعرف مايحرم، وأصبح السلوك الإسلامي المتميز خلقاً له وعادة، فلا يجري وراء شهوة، ولا يتخبط في طريق تحلل .. \n وإن هذه التربية الجنسية التي يجب أن يهتم المربون لها ويركزوا عليها تقوم على المراحل التالية: \n في سن ما بين 7 - 10 سنوات الذي يسمى بسن التمييز يُلقن الولد فيه آداب الاستئذان، وآداب النظر. \n وفي سن مابين 10 - 14 سنة الذي يسمى بسن المراهقة ويجنّب الولد فيه كل الاستثارات الجنسية. \n وفي سن مابين 14 - 16 سنة الذي يسمى بسن البلوغ يعلم الولد فيه آداب الاتصال الجنسي إذا كان مهيئاً للزواج. \n وفي سن مابعد البلوغ الذي يسمى بسن الشباب يعلم فيه آداب الاستعفاف إذا كان لا يقدر على الزواج. \n \n آداب النظر: \n 1 أدب النظر إلى المحارم: كل امرأة تحرم على الرجل حرمة مؤبدة فهي من ذوات محارمه، وكل رجل حرم على المرأة الزواج منه حرمة مؤبدة فهو من ذوي محارمها. \n وعلى هذا يدخل في المحارم: \n المحرمات بسبب النسب: الأم والبنت والأخت والعمّة والخالة وبنت الأخ وبنت الأخت \n المحرمات بسبب الرضاع: ما حرُم عن طريق النسب حرم نظيره عن طريق الرضاع كالام من الرضاع والبنت من الرضاع وهلّم جر.... \n المحرمات بسبب المصاهرة: زوجة الاب وزوجة الابن وأم الزوجة وبنت الزوجة \n فالمحرَم الذكر -كما جاء في الكتاب والسنة- يجوز له أن ينظر من ذوات محارمه إلى مايظهر منهن غالباً كالرقبة والرأس والكفين والقدمين ونحو ذلك وليس له النظر إلى مايستتر غالباً كالصدر والظهر والبطن .. ونحو ذلك.\n 2 أدب النظر إلى المخطوبة (قبل إجراء العقد): لا يجوز أن ينظر الخاطب إلا إلى الوجه والكفين بعد أن يعزم على الزواج منها، يجوز تكرار النظر إذا دعت الحاجة حتى تنطبع الصورة الحسية في الذهن، يجوز أن تحدثه ويجوز ان يحدثها في جلسة الخطوبة والنظر، لا يجوز مصافحة المخطوبة، لا يجوز أن يجتمعا إلا بوجود أحد محارم المخطوبة. 3 أدب النظر إلى الزوجة: يجوز للزوج ان يرى من زوجته كل شيء بشهوة أو بغير شهوة وإن كان الأفضل ألّا ينظر أحدهما إلى عورة صاحبه. \n 4 أدب النظر إلى المرأة الأجنبية: \n الرجل الأجنبي هو من يحل للمرأة الزواج منه كابن عمها وابن عمتها وابن خالها وابن خالتها وزوج أختها وزوج خالتها ... \n المرأة الأجنبية هي من يحل للرجل الزواج منها كابنة عمه وابنة عمته وابنة خاله وابنة خالته وزوجة أخيه وزوجة عمه وزوجة خاله وأخت زوجته وعمتها وخالتها ... \n فلا يجوز للرجل البالغ ان ينظر إلى امرأة أجنبية ولو كانت غير مشتهاة، ويلحق بالرجل الصبي إن كان مراهقاً أو مميزاً يفرّق بين الشوهاء والحسناء. \n أدب نظر الرجل غلى الرجل: لا يجوز أن ينظر الرجل إلى الرجل فيما بين سرته إلى ركبته، أما ماعدا ذلك كالبطن والظهر والصدر .. فإنه يجوز إذا أمن الناظر الشهوة، سواء أكان الرجل المنظور إليه قريباً أم بعيداً وسواء أكان مسلم أو كافر، بناء عللى ذلك لا يجوز للرجل ان يكشف جزءاً من سرته إلى ركبته لا في رياضة ولا في سباحة ولا في تدريب ولا في حمام وإن أمن الشهوة. \n 4 أدب نظر المرأة إلى المرأة: \n لايجوز أن تنظر المرأة إلى المرأة مابين سرتها إلى ركبتها سواء أكانت المرأة المنظورة إليها قريبة أم بعيدة وسواء أكانت مسلمة أم كافرة. \n 5 أدب نظر المرأة الكافرة إلى المرأة المسلمة: \n يحرم على المرأة المسلمة أن تكشف شيئاً من مفاتنها أمام امرأة كافرة إلا مايبدو عند المهنة كاليدين والوجه والرجلين. \n 6 أدب النظر إلى الأمرد: \n الأمرد هو الشاب الذي لم تنبت لحيته بعد وهو الذي يتراوح عمره مابين 10 إلى 15 سنة. \n والنظر إليه جائزاً إذا كان لضرورة كالبيع والشراء والأخذ والعطاء والتطبيب والتعليم  ونحوها من مواضع الحاجة، أما إذا كان النظر من أجل الالتذاذ بالجمال فهو حرام لكونه يجر إلى الشهوة ويؤدي إلى الفتنة. \n 7 أدب نظر المرأة إلى الأجنبي: \n يجوز للمرأة المسلمة أن تنظر للمرأة المسلمة أن تنظر إلى الرجال وهم يمشون في الطرقات أو هم يلعبون ألعاباً غير محرمة أو هم يتعاطون البيع والشراء أو غير ذلك، ولكن شرطان الأول: أن لا يترتب على النظر مما يخشى منه الفتنة، والثاني: أن لا يكون التحديق في مجلس واحد مواجهة ومقابلة. \n 8 أدب النظر إلى عورة الصغير: \ الصغير سواء أكان ذكراً أو أنثى لا عورة له إذا كان ابن أربع سنين فما دونهما، ثم إذا زاد على الأربع فعورته القبل والدبر وماهولهما .. حتى إذا بلغ حدّ الشهوة صارت عورته كعورة البالغ على التفصيل الذي سبق ذكره وكلما عودناه الستر وهو صغيركانأفضل. \n \n تجنيب الولد الإثارات الجنسية: \n من المسؤوليات الكبرى التي أوجبها الإسلام على المربي أن يجنب ولده كل مايثيره جنسياً، ويفسده خلقياً .. ذلك حينما يبلغ الولد سن المراهقة وهو السن الذي يتراوح مابين العاشرة إلى البلوغ، ومسؤولية المربي في تجنيب الولد الإثارات الجنسية تتحقق في جانبين: \n الأول: مسؤولية الرقابة الداخلية \n فيجب أن يتبع المربي قواعد الإسلام في منع كل مايهيج الولد غريزياً ويثيره جنسياً، مثل منع الولد دخوله على أهله وهو في سن التمييز في أوقات الراحة والنوم، وكذلك دخوله على النساء الأجنبيات وهنّ في أجمل زينة، وكذلك منع نومه مع إخوته البنين أو البنات في مضجع واحد وهو في سن العاشرة ومابعدها، ومنعه أن يقتني ما شاء من الصور العارية والمجلات الماجنة والقصص الغرامية المهيجة والتسجيلات الغنائية المثيرة، و يجب على المربي أن لايفسح المجال لولده ولا لابنته في توثيق العلاقة بين الذكور والإناث. \ الثاني: مسؤولية الرقابة الخارجية \n فهي لا تقل عناية واهتماماً عن الرقابة الداخلية ذلك لأن وسائل إفساد الولد خلقياً أكثر من أن تحصى، ومن أخطر هذه الوسائل التي تثير الولد جنسياً: \n 1 مقسدة السينما أو المسرح أو ماشابه من أماكن يعرض فيها مفاتن الجنس ومظاهر الفساد والإباجية. \n 2 مفسدة أزياء النساء الفاضحة، إن المرأة المسلمة مطالبة أن تحيا في حدود أخلاقها ومبادئها وأصالتها الإسلامية وأن تحافظ على استقامة المجتمع وطمأنينته وأن ترحم المراهقين والعزّاب بما تظهر به من مظهر الحشمة والكمال .. وبما ترتديه من زي الجلاليب والحجاب .. وإلا فإنها تعتبر شرعاً حائدة عن مبادىء الإسلام ومسترسلة في متاهات الفسوق والعصيان خاضعة للهوى منقادة للضلال. \n 3 مفسدة المواخير السرية والعلنية، لما تحتويه من رجال فقدوا في رؤوسهم معاني النخوة والشرف والغيرة .. ونساء فقدن في نفوسهن رباط الكرامة والحياء والعفاف .. يجتمعون معاً في هذه الأوكار الآثمة لينطلقوا في حلبة الإباحية كالخنازير في الخسة والدناءة وكالبهائم في السّفاد وهياج الغريزة. \n 4 مفسدة المظاهر الخليعة في المجتمع. \n 5 مفسدة الصحبة السيئة. \n 6 مفسدة الاختلاط بين الجنسين. \n هناك ثلاث وسائل إيجابية إذا انتهجها المربون انصلح الولد خلقياً وانضبط غريزياً وهي: \n 1 وسيلة التوعية، إذا لقن الولد منذ نعومة أظفاره أن هذا الفساد الاجتماعي والانحلال الأخلاقي الذي عم المجتمعات الإسلامية في كل مكان هو من مخططات اليهودية والشيوعية والصليبية والاستعمارية فإن الولد إذا ماكبر يصبح عنده من النضج والفهم والوعي مايردعه عن الاسترسال في الشهوات ومايرده عن كثير من المفاتن والمفاسد. \n 2 وسيلة التحذير، هذه الوسيلة تصور للولد حقيقة الأخطار التي تنجم عن الاسترسال في الشهوات والانزلاق في متاهات التحلل والإباحية من أخطار صحية ونفسية وخلقية واجتماعية واقتصادية \n 3 وسيلة الربط، فما على المربي إلا أن يربط الولد باالعقيدة وأن يربطه بالعبادة و أن يربطه بالمرشد وأن يربطه بالصحبة الصالحة وأن يربطه بالدعوة والداعية وأن يربطه بالمسجد والذكر والمراقبة والقرآن الكريم وأن يربطه بالتاريخ والأمجاد وسيرة الأنبياء والصالحين ...\n \n تعليم الولد أحكام المراهقة والبلوغ: \n يجب تعليم الولد منذ أن يميز الأحكام الشرعية التي ترتبط بميله الغريزي ونضجه الجنسي .. والذكر والأنثى في هذا التعليم سواء لكونهما  مكلفين شرعاً ومسؤولين عن عملهما أمام الله عز وجل وأمام المربين وأمام المجتمع .. لذا وجب على المربي أن يصارح الصبي إذا بلغ سن المراهقة وهو السن الذي يتراوح مابين 12 إلى 15 سنة أن يصارحه أنه إذا نزل منه منيّ ذو دفق وذو شهوة .. أصبح بالغاً ومكلفاً شرعاً يجب عليه مايجب على الرجال الكبار من مسؤوليات وتكاليف .. \n ووجب على المربي أيضاً أن يصارح البنت إذا بلغت سن التاسعة فما فوق ورأت دم الحيض أصبحت بالغة ومكلفة شرعاً يجب عليها مايجب على النساء الكبار من مسؤوليات وتكاليف، وكذلك ودب على المربي أن يصارح البنت إذا بلغت سن التاسعة فما فوق وتذكرت احتلاماً ورأت الماء الرقيق الأصفر على ثوبها بعد الاستيقاظ أصبحت بالغة ومكلفة شرعاً يجب عليها مايجب على  النساء الكبار من مسؤوليات وتكاليف. \n أهم الأحكام الشرعية التي تتصل بالبلوغ: \n 1 الولد إذا كان ذكرا أو أنثى إذا ذكر احتلاماً ولم يجد على ثوبه بعد استيقاظه بللاً لا يجب عليه الغسل \n 2 أما إذا رأى على ثوبه بعد استيقاظه بللاً ولم يذكر احتلاماً وجب عليه الغسل \n 3 نزول المني من الرجل أو المرأة على سبيل الدفق والشهوة بالعادة السرية أو غيرها يوجب الغسل 4 غيبة رأس الذكر (وهو مافوق موضع الختان ويسمى الحشفة) في قبل أو دبر على الفاعل والمفعول به يوجب الغسل سواء أنزل أم لم ينزل 5 انقطاع مدة الحيض والنفاس يوجب الغسل على المرأة \n كيفية الغسل: \n فرائض الغسل: غسل الفم والأنف وجميع البدن، بناء على هذا يجب غسل كل جزء من أجزاء البدن بما لا حرج في غسله كالسرة وفرج المرأة الظاهري وتحت مافي الخاتم الضيق وظاهر الأذنين وماتحت الإبطين .. \n أما السنن والكيفية: فيبدأ بغسل يديه وفرجه ويزيل النجاسة ثم يتوضأ وضوءه للصلاة إلا رجليه فإنه يؤخؤهما إلى آخر الغسل ثم يفيض الماء على بدنه ثلاثاً ثم يغسل الرجلين في مكان لا يجتمع فيه الماء .. \n من سنن الغسل: البداءة بالنية والتسمية والسواك وتخليل اللحية والأصابع ودلك ماأمكن دلكه من الجسم. \n المحظورات التي حظرها الإسلام على الجنب وذوات الأعذار من النساء: \n 1 يحرم على الحائض والنفساء الصوم والصلاة بإجماع المسلمين، وبالنسبة للصلاة فإنها تقضي الصوت ولا تقضي الصلاة \n 2 ويحرم عليهما دخول المسجد \n 3 ويحرم عليهما الطواف بالكعبة \n 4 ويحرم على الأزواج الاستمتاع من الحائض والنفساء ماتحت الإزار فيما بين السرة والركبة \n 5 يحرم على غير المتوضىء والحائض والنفساء من مس المصحف. \n \n الزواج والاتصال الجنسي: \n الله سبحانه وتعالى خلق الإنسان وأودع فيه عدة ميول وغرائز كلها ضرورية لحفظ جنسه وبقاء نوعه .. وأنزل من التشريعات والأحكام مايلبي حاجات هذه الميول والغرائز ومايكفل لها الاستمرار والنماء والبقاء .. \n الحكمة من مشروعية الزواج: المحافظة على الأنساب، سلامة المجتمع من الانحلال الخلقي، تعاون الزوجين على مسؤولية الأسرة، سلامة المجتمع من الأمراض والآفات، السكن الروحي والنفسي، إنجاب ذرية الإسلام الصالحة. \n المراحل التي يجب أن يسير عليها المتزوج ليلة الزفاف: \n 1 يستحب أن يضع ال يد على رأس العروس ويسمي بالله ويدعوا لها بالبركة وليقل ( اللهم إني أسألك من خيرها وخير ماجبلتها عليه وأعوذ بك من شرها وشر ماجبلتها عليه) \n 2 يستحب للعروسين أن يصليا ركعتين ويدعوا الله سبحانه بعد الصلاة \n 3 يستحب للزوج أن يلاطف عروسه ويقدم لها شيئاً تشربه أو تأكله \n 4 من آداب المباشرة أن ينخلعا من ثيابهما، والأفضل أن يكون التعري الكامل تحت اللحاف \n 5 من آداب المباشرة الملاعبة والعناق والقبلة قبل أن يأتيها \n 6 من آداب الجماع أن يدعو الزوج يهذا الدعاء (بسم الله اللهم جنبنا الشيطان وجنّب الشبطان مارزقتنا) \n 7 يجوز أن يأتي أهله في أية كيفية شاء مادام الإتيان في الفرج \n 8 وإذا أراد العود في الجماع فيستحب له الوضوء لكونه أنشط، والغُسل أفضل '
                  ' \n 9 الأفضل في حقهما المسارعة في الاغتسال وإذا تكاسلا فيستحب أن يتوضئا قبل النوم \n 10 ويجوز للزوجين أن يغتسلا معاً في مكان واحد \n 11 يحرم على الزوجين التحدث إلى الناس بما مارسا من عملية الوقاع إشارة أو كلاما \n 12 يحرم على الزوج أن يأتي أهله في الدبر \n 13 يحرم على الزوج أن يأتي أهله أيام الحيض والنفاس \n 14 مما ينصح به أن يكون معتدلاً في قضاء الشهوة وإشباع الوطر .. وحدود الاعتدال مرتان في كل أسبوع وله أن يزيد أو ينقص بحسب حاجته وحاجتها \n 15 أن يتحين الزوج الوقت المناسب للوقاع لأن مزاج المرأة حساس \n 16 على الزوجة أن تراعي مزاج زوجها فيما يرغب من تزين وملاطفة ووقاع في أوقات مخصوصة فلا يحل لها أن تقف دون رغبته أو أن تصوم نفلاً بدون إذنه \n 17 الجماع جائز في كل الشهور والأوقات والأيام وفي كل ساعة من ليل أو نهار إلا ماحرمته الشريعة كأن يكونا صائمين صيام الفرض مثلا أو كانت الزوجة في حالة الحيض أو النفاس .. ',
            ),
          ),
        ),
      ),
    );
  }
}
