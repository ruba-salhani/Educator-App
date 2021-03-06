import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({Key? key}) : super(key: key);

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            title: const CustomText(
              size: true, text: 'التعليقات',
              //style:  TextStyle(color: AppColors.primary),
            ),
            backgroundColor: AppColors.secondary
            //backgroundColor: Colors.transparent,
            //elevation: 0.0,
            ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return CustomListTile(
                image: 'assets/images/1.jpg',
                name: 'الاسم',
                message: 'التعليق',
                ontap: () {},
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 20.0),
            itemCount: 15,
          ),
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
              hintText: 'اكتب تعليق',
            ),
            //autofocus: false,
          ),
        ),
      ),
    );
  }
}
