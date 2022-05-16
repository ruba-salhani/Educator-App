import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:educator/presentation/views/screens/behaviors/widgets/behavior.dart';
import 'package:educator/presentation/views/screens/behaviors/widgets/behavior_dialog.dart';

import 'package:flutter/material.dart';

class BehaviorsScreen extends StatelessWidget {
  const BehaviorsScreen({
    Key? key,
    required this.childName,
  }) : super(key: key);
  final String childName;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(
          text: childName,
          icon: Icons.priority_high_outlined,
          onpreased: () {
            context.pushRoute(const BehaviorDescription());
          },
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            //backgroundColor: Theme.of(context).primaryColor,
            style: ElevatedButton.styleFrom(
              primary: AppColors.secondary,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.add),
                SizedBox(width: 10),
                CustomText(size: false, text: 'أضف سلوك')
              ],
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const BehaviorDialog();
                  });
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, i) {
                    return const Behavior();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
