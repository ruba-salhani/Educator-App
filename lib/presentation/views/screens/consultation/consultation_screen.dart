import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:educator/presentation/views/screens/consultation/widgets/counselor.dart';

import 'package:flutter/material.dart';

class ConsultationScreen extends StatelessWidget {
  const ConsultationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar:
            AppBar(title: const CustomText(size: false, text: 'اطلب استشارة')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            //shrinkWrap: true,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                  size: false, text: 'ابدأ بمراسلة أحد المستشارين'),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SizedBox(
                    height: 150,
                    width: 150,
                    //margin: EdgeInsets.all(10),
                    child: Counselor(
                      counselorImage: 'assets/images/1.jpg',
                      counselorName: 'اسم المستشار',
                      ontap: () {
                        context.pushRoute(
                            MessagingScreen(counselorName: 'Counselor Name'));
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, i) {
                    return CustomListTile(
                      image: 'assets/images/1.jpg',
                      name: 'اسم المستشار',
                      message: 'مرحبا',
                      ontap: () {
                        context.pushRoute(
                            MessagingScreen(counselorName: 'اسم المستشار'));
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
