import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/cubit/child_cubit/child_cubit.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:queen_validators/queen_validators.dart';

class ChildrenScreen extends StatelessWidget {
  ChildrenScreen({Key? key}) : super(key: key);
  final String _childName = 'اسم الطفل';
  final _formKey = GlobalKey<FormState>();
  String? _child;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(
          text: 'الأبناء',
          icon: Icons.priority_high_outlined,
          onpreased: () {
            context.pushRoute(const BehaviorDescription());
          },
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
                    return Form(
                      key: _formKey,
                      child: FieldDialog(
                        icon: Icons.add_reaction_outlined,
                        label: 'الابن',
                        hint: "ادخل اسم الابن",
                        vald: qValidator([
                          const IsRequired('مطلوب'),
                        ]),
                        onsaved: (val) {
                          _child = val;
                          //print(_note);
                        },
                        firstButtonOnpressd: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            // if (note == null) {
                            context.read<ChildCubit>().saveChild(_child!);
                            // } else {
                            //   context.read<NoteCubit>().updateNote(note!.id!, _note!);
                            // }
                            context.popRoute();
                          }
                        },
                      ),
                    );
                  });
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<ChildCubit, ChildState>(
              builder: (BuildContext context, state) {
            if (state is GetChildrenState) {
              return GridView.count(
                crossAxisCount: 2,
                //padding: EdgeInsets.all(8.0),
                children: List.generate(
                  state.children.length,
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
                                child: CustomText(
                                    size: false,
                                    text: state.children[index].child!),
                                //color: Colors.grey[200],
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        context
                            .pushRoute(BehaviorsScreen(childName: _childName));
                      },
                    );
                  },
                ),
              );
            } else {
              return const NoElementsWidget();
            }
          }),
        ),
      ),
    );
  }
}
