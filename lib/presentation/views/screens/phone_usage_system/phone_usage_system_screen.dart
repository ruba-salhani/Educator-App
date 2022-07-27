import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:educator/data/datasourses/local/storage.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:educator/presentation/views/screens/phone_usage_system/widgets/timer.dart';
import 'package:flutter/material.dart';

class PhoneUsageSeystemScreen extends StatefulWidget {
  const PhoneUsageSeystemScreen({Key? key}) : super(key: key);

  @override
  State<PhoneUsageSeystemScreen> createState() =>
      _PhoneUsageSeystemScreenState();
}

class _PhoneUsageSeystemScreenState extends State<PhoneUsageSeystemScreen> {
  String chValue = '';

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    final age = await secureStorage.readSecureData('age') ?? '';
    final durationValue = await secureStorage.readSecureData('duration') ?? '';
    final timerValue = await secureStorage.readSecureData('timer') ?? '';
    //time = await json.decode(timerValue) ?? 0;
    //print(timerValue);

    setState(() {
      chValue = age;
      duration = durationValue;
      time = timerValue;
      //print(time);
      // t = int.parse(time);

      //time = timer;
      //print(timer);
    });
    t = await int.parse(time);
    print(t);
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
  String time = '';
  int t = 0;
  final SecureStorage secureStorage = SecureStorage();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(
          text: 'استخدام الأجهزة الذكية',
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
                  //value: chValue == null ? _chosenValue : chValue,
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
                  ),
                  onChanged: (String? value) async {
                    setState(() {
                      _chosenValue = value;

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
                    secureStorage.writeSecureData('age', _chosenValue!);
                    secureStorage.writeSecureData('duration', duration);
                    //final timerValue = json.encode(timer);
                    secureStorage.writeSecureData('timer', timer.toString());
                    //time = timer;
                    init();

                    //rint(t);
                  },
                ),
              ),
              CustomText(
                size: false,
                text: chValue,
              ),
              CustomText(
                size: false,
                text: 'الوقت المسموح به: ' + duration,
              ),
              Timer(timer: t),
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
