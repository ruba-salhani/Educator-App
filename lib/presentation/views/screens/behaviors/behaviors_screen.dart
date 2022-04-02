import 'package:educator/presentation/views/components/components.dart';
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
    );
  }
}
