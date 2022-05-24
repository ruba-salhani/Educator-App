import 'package:auto_route/auto_route.dart';
import 'package:educator/domain/entities/child.dart';
import 'package:educator/presentation/cubit/behavior_cubit/behavior_cubit.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:educator/presentation/views/screens/behaviors/widgets/behavior.dart';
import 'package:educator/presentation/views/screens/behaviors/widgets/behavior_dialog.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BehaviorsScreen extends StatelessWidget {
  BehaviorsScreen({
    Key? key,
    required this.child,
    required this.childName,
  }) : super(key: key);
  final String childName;
  final Child child;
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
                    return BehaviorDialog(
                      child: child,
                    );
                  });
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<BehaviorCubit, BehaviorState>(
                    builder: (BuildContext context, state) {
                  if (state is GetBehaviorsState) {
                    return ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: state.behviors.length,
                      itemBuilder: (context, i) {
                        if (child.id == state.behviors[i].foreignKey) {
                          return Behavior(behavior: state.behviors[i]);
                        } else {
                          return const SizedBox(width: 0.0, height: 0.0);
                        }
                      },
                    );
                  } else {
                    return const NoElementsWidget();
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
