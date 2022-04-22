import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';

import 'package:flutter/material.dart';

class ChildrenScreen extends StatelessWidget {
  const ChildrenScreen({Key? key}) : super(key: key);
  final String _childName = 'اسم الطفل';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: CustomAppBar(
            text: 'الأبناء',
            icon: Icons.priority_high_outlined,
            onpreased: () {},
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(40.0),
            child: ElevatedButton(
              //backgroundColor: Theme.of(context).primaryColor,
              style: ElevatedButton.styleFrom(
                primary: AppColors.secondary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.add_reaction_outlined),
                  SizedBox(width: 10),
                  CustomText(size: false, text: 'أضف ابن')
                ],
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return FieldDialog(
                        icon: Icons.add_reaction_outlined,
                        label: 'الابن',
                        hint: "ادخل اسم الابن",
                        firstButtonOnpressd: () {},
                      );
                    });
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              crossAxisCount: 2,
              //padding: EdgeInsets.all(8.0),
              children: List.generate(
                3,
                (index) {
                  //print('_buildGridView $index');
                  return GestureDetector(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            const ProfileImage(),
                            const SizedBox(height: 10),
                            Container(
                              child: CustomText(size: false, text: _childName),
                              //color: Colors.grey[200],
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      context.pushRoute(BehaviorsScreen(childName: _childName));
                    },
                  );
                },
              ),
            ),
          )),
    );
  }
}
