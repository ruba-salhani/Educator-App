import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class DemandsScreen extends StatelessWidget {
  const DemandsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const CustomText(size: true, text: 'مطالب النمو'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(const EarlyChildhood());
                  },
                  child: const CustomText(
                      size: false, text: 'من أسبوعين إلى 5 سنوات'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(const Childhood());
                  },
                  child: const CustomText(size: false, text: 'من 5 ال 12 سنة'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(const Adolescence());
                  },
                  child:
                      const CustomText(size: false, text: 'من 13 إلى 21 سنة'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(const Majority());
                  },
                  child:
                      const CustomText(size: false, text: 'من 22 إلى 40 سنة'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(const CenterOfAge());
                  },
                  child:
                      const CustomText(size: false, text: 'من 41 إلى 60 سنة'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(const Aging());
                  },
                  child:
                      const CustomText(size: false, text: 'من 60 إلى الممات'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
