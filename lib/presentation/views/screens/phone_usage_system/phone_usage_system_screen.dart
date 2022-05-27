import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:educator/presentation/views/screens/phone_usage_system/widgets/timer.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PhoneUsageSeystemScreen extends StatefulWidget {
  const PhoneUsageSeystemScreen({Key? key}) : super(key: key);

  @override
  State<PhoneUsageSeystemScreen> createState() =>
      _PhoneUsageSeystemScreenState();
}

class _PhoneUsageSeystemScreenState extends State<PhoneUsageSeystemScreen> {
  SharedPreferences? sharedPreferences;
  saveValue(String chosenValue) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences!.setString('key', chosenValue);
  }

  List<String> ages = [
    'أقل من سنتين',
    'من 3 إلى 5 سنوات',
    'من 6 إلى 12 سنة',
    'من 13 إلى 18 سنة',
  ];
  String? _chosenValue;
  int timer = 0;
  String duration = '';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(
          text: 'نظام استخدام الأجهزة الذكية',
          icon: Icons.priority_high_outlined,
          onpreased: () {
            context.pushRoute(const RecommendationsScreen());
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: DropdownButton<String>(
                  style: const TextStyle(
                    color: AppColors.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                  underline: const SizedBox.shrink(),
                  borderRadius: BorderRadius.circular(30),
                  value: _chosenValue,
                  items: ages.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      alignment: AlignmentDirectional.bottomCenter,
                      child: CustomText(
                        size: false,
                        text: value,
                      ),
                    );
                  }).toList(),
                  hint: const CustomText(
                    size: false,
                    text: "اختر العمر",
                    // style: TextStyle(
                    //   color: AppColors.secondary,
                    //   //fontWeight: FontWeight.bold,
                    // ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _chosenValue = value;
                      saveValue(_chosenValue!);
                      if (_chosenValue == ages[0]) {
                        timer = 0;
                        duration = 'غير مسموح !';
                      } else if (_chosenValue == ages[1]) {
                        timer = 3600;
                        duration = 'ساعة باليوم (تلفاز فقط)';
                      } else if (_chosenValue == ages[2]) {
                        timer = 7200;
                        duration = 'ساعتان باليوم (تلفاز فقط)';
                      } else if (_chosenValue == ages[3]) {
                        timer = 7200;
                        duration = 'ساعتان باليوم (تلفاز أو هاتف)';
                      }
                    });
                    print(timer);
                    print(duration);
                  },
                ),
              ),
              CustomText(
                size: false,
                text: 'الوقت المسموح به: ' + duration,
                //textAlign: TextAlign.center,
                // style: TextStyle(
                //   color: AppColors.secondary,
                //   fontWeight: FontWeight.bold,
                //   fontSize: (MediaQuery.of(context).size.width) * 0.04,
                // ),
              ),
              Timer(timer: timer),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
