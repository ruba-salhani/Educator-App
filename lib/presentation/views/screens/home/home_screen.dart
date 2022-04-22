import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:educator/presentation/views/screens/home/drawer/drawer_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(
          text: 'الرئيسية',
          icon: Icons.question_answer_outlined,
          onpreased: () {
            context.pushRoute(
              const ConsultationScreen(),
            );
          },
        ),
        drawer: const DrawerBuilder(),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.pushRoute(const EvaluatedOfYourSelfScreen());
                    },
                    child: const CustomText(size: true, text: 'قيّم نفسك'),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      context.pushRoute(const EvaluateYourChildScreen());
                    },
                    child: const CustomText(size: true, text: 'قيّم ابنك'),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      context.pushRoute(const TipsScreen());
                    },
                    child: const CustomText(size: true, text: 'نصائح لك'),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      context.pushRoute(const ResponsibilitiesScreen());
                    },
                    child:
                        const CustomText(size: true, text: 'مسؤوليات التربية'),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      context.pushRoute(const DemandsScreen());
                    },
                    child: const CustomText(size: true, text: 'مطالب النمو'),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.secondary,
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
