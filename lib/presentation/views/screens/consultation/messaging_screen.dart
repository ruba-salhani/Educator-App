import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({
    Key? key,
    required this.counselorName,
  }) : super(key: key);
  final String counselorName;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            title: CustomText(
              size: true, text: counselorName,
              //style:  TextStyle(color: AppColors.primary),
            ),
            backgroundColor: AppColors.secondary
            //backgroundColor: Colors.transparent,
            //elevation: 0.0,
            ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(children: const <Widget>[
            CustomListTile(
              image: 'assets/images/1.jpg',
              name: 'اسم المستشار',
              message: 'مرحبا',
            ),
            CustomListTile(
              image: 'assets/images/1.jpg',
              name: 'اسم المربي',
              message: 'مرحبا',
            ),
          ]),
        ),
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              //labelText: 'Enter Name Here',
              hintText: 'مراسلة',
            ),
            //autofocus: false,
          ),
        ),
      ),
    );
  }
}
