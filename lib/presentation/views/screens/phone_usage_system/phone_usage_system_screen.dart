import 'package:auto_route/auto_route.dart';
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
  List<String> ages = [
    '(0 -> 2) years',
    '(3 -> 5) years',
    '(6 -> 12) years',
    '(13 -> 18) years',
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
          text: 'Phone usage seystem',
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
              DropdownButton<String>(
                value: _chosenValue,
                items: ages.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                hint: const Text(
                  "Choose age",
                  // style: TextStyle(
                  //   color: AppColors.secondary,
                  //   //fontWeight: FontWeight.bold,
                  // ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _chosenValue = value;
                    if (_chosenValue == ages[0]) {
                      timer = 0;
                      duration = 'Not allowed !';
                    } else if (_chosenValue == ages[1]) {
                      timer = 3600;
                      duration = 'Hour a day (Watching TV only)';
                    } else if (_chosenValue == ages[2]) {
                      timer = 7200;
                      duration = 'Two hours per day (Watching TV only)';
                    } else if (_chosenValue == ages[3]) {
                      timer = 7200;
                      duration = 'Two hours per day (Watching TV or phone)';
                    }
                  });
                  print(timer);
                  print(duration);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'The time allowed is: ' + duration,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
