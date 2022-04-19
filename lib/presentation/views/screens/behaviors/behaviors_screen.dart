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
    return Scaffold(
      appBar: CustomAppBar(
        text: childName,
        icon: Icons.priority_high_outlined,
        onpreased: () {},
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
              Text('Add behavior')
            ],
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return BehaviorDialog();
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
                itemCount: 10,
                itemBuilder: (context, i) {
                  return Behavior();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
