import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

import '../../../router/app_router.gr.dart';

class ResponsibilitiesScreen extends StatelessWidget {
  const ResponsibilitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const CustomText(size: true, text: 'مسؤوليات التربية'),
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
                    context.pushRoute(const Faith());
                  },
                  child: const CustomText(size: true, text: 'الإيمانية'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(const Ethics());
                  },
                  child: const CustomText(size: true, text: 'الأخلاقية'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(const Physical());
                  },
                  child: const CustomText(size: true, text: 'الجسمية'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(const Mental());
                  },
                  child: const CustomText(size: true, text: 'العقلية'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(const Sexual());
                  },
                  child: const CustomText(size: true, text: 'الجنسية'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(const Psychological());
                  },
                  child: const CustomText(size: true, text: 'النفسية'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(const Social());
                  },
                  child: const CustomText(size: true, text: 'الاجتماعية'),
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
