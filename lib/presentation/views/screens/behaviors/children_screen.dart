import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:educator/presentation/views/screens/behaviors/widgets/child.dart';
import 'package:flutter/material.dart';

class ChildrenScreen extends StatelessWidget {
  ChildrenScreen({Key? key}) : super(key: key);
  String _childName = 'child name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          text: 'Children',
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
                Text('Add child')
              ],
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return FieldDialog(
                      label: 'Child',
                      hint: "Enter your child's name",
                      firstButtonOnpressd: () {},
                    );
                  });
            },
          ),
        ),
        //floatingActionButton:
        //  ElevatedButton(
        //   //backgroundColor: Theme.of(context).primaryColor,
        //   child: const Icon(Icons.person_add_alt_1_outlined),
        //   onPressed: () async => {
        //     // await Navigator.of(context)
        //     //     .push(MaterialPageRoute(builder: (context) => NewTask()))
        //     //     .then((value) => setState(() {
        //     //           getAllTasks();
        //     //         })),
        //   },
        // ),
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
                          Container(
                            // height: 150,
                            // width: 150,
                            child: const ProfileImage(),

                            // ImageAndName(
                            //   image: 'assets/images/1.jpg',
                            //   name: 'Counselor Name',
                            //   ontap: () {
                            //     context.pushRoute(
                            //         BehaviorsScreen(childName: 'child name'));
                            //   },
                            // ),
                          ),
                          SizedBox(height: 10),
                          Text(_childName),
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
        ));
  }
}
