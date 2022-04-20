import 'package:educator/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ReactionsScreen extends StatelessWidget {
  const ReactionsScreen({Key? key}) : super(key: key);
  final String image = 'assets/images/1.jpg';
  final String name = 'name';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              'People who reacted',
              //style:  TextStyle(color: AppColors.primary),
            ),
            backgroundColor: AppColors.secondary
            //backgroundColor: Colors.transparent,
            //elevation: 0.0,
            ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(image),
                ),
                title: Text(name),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 20.0),
            itemCount: 15,
          ),
        ),
      ),
    );
  }
}
