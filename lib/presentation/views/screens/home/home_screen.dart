import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Home'),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.question_mark_outlined,
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(),
      //bottomNavigationBar: CustomCurvedNavigationBar(),
    );
  }
}
