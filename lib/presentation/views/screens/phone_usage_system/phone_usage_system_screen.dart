import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class PhoneUsageSeystemScreen extends StatelessWidget {
  const PhoneUsageSeystemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Phone usage seystem',
        icon: Icons.priority_high_outlined,
        onpreased: () {},
      ),
    );
  }
}
