import 'package:educator/presentation/views/components/components.dart';
import 'package:educator/presentation/views/screens/behaviors/widgets/behavior.dart';

import 'package:flutter/material.dart';

class BehaviorsScreen extends StatelessWidget {
  const BehaviorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Behaviors of your children',
        icon: Icons.priority_high_outlined,
        onpreased: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Behavior(),
      ),
    );
  }
}
