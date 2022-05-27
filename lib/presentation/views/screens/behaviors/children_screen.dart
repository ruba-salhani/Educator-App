import 'package:auto_route/auto_route.dart';
import 'package:educator/domain/entities/child.dart';
import 'package:educator/presentation/cubit/child_cubit/child_cubit.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:educator/presentation/views/screens/behaviors/widgets/child_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:queen_validators/queen_validators.dart';

class ChildrenScreen extends StatefulWidget {
  ChildrenScreen({Key? key}) : super(key: key);

  @override
  State<ChildrenScreen> createState() => _ChildrenScreenState();
}

class _ChildrenScreenState extends State<ChildrenScreen> {
  final String _childName = 'اسم الطفل';

  final _formKey = GlobalKey<FormState>();

  String? _child;

  String? _colorName;

  Color? _color;

  //Child? child;
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
                    return ChildDialog();
                  });
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const ProfileImage(),
                              const SizedBox(height: 5),
                              CustomText(
                                  size: false,
                                  text: state.children[index].child!),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.create,
                                      color: AppColors.secondary,
                                    ),
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return ChildDialog(
                                              child: state.children[index],
                                            );
                                          });
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.arrow_circle_right_outlined,
                                      color: AppColors.secondary,
                                    ),
                                    onPressed: () {
                                      context.pushRoute(
                                        BehaviorsScreen(
                                            childName:
                                                state.children[index].child!,
                                            child: state.children[index]),
                                      );
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                      color: AppColors.secondary,
                                    ),
                                    onPressed: () {
                                      context.read<ChildCubit>().deleteChild(
                                          state.children[index].id!);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        context.pushRoute(
                          BehaviorsScreen(
                              childName: state.children[index].child!,
                              child: state.children[index]),
                        );
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
