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
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Home',
        icon: Icons.question_answer_outlined,
        onpreased: () {
          context.pushRoute(const ConsultationScreen());
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
                    context.pushRoute(EvaluatedOfYourSelfScreen());
                  },
                  child: const Text('Evaluate of yourself'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(EvaluateYourChildScreen());
                  },
                  child: const Text('Evaluate your child'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(TipsScreen());
                  },
                  child: const Text('Tips for you'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(ResponsibilitiesScreen());
                  },
                  child: const Text('Responsibilities of education'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    context.pushRoute(DemandsScreen());
                  },
                  child: const Text('Demands of growth'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
