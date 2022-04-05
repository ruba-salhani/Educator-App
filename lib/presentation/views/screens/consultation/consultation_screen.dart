import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:educator/presentation/views/screens/consultation/widgets/counselor.dart';

import 'package:flutter/material.dart';

class ConsultationScreen extends StatelessWidget {
  const ConsultationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('request consultation')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          //shrinkWrap: true,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Start contacting a counselor'),
            const SizedBox(height: 20.0),

            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: 150,
                  width: 150,
                  //margin: EdgeInsets.all(10),
                  child: Counselor(
                    counselorImage: 'assets/images/1.jpg',
                    counselorName: 'Counselor Name',
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
                    name: 'Counselor Name',
                    message: 'hello',
                    ontap: () {
                      context.pushRoute(
                          MessagingScreen(counselorName: 'Counselor Name'));
                    },
                  );
                },
              ),
            ),
            // ListView.separated(
            //   shrinkWrap: true,
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) {
            //     return Counselor(
            //       counselorImage: 'assets/images/1.jpg',
            //       counselorName: 'Counselor Name',
            //       ontap: () {
            //         context.pushRoute(
            //             MessagingScreen(counselorName: 'Counselor Name'));
            //       },
            //     );
            //   },
            //   separatorBuilder: (context, index) =>
            //       const SizedBox(height: 20.0),
            //   itemCount: 2,
            // ),
            // const SizedBox(height: 20.0),
            // ListView.separated(
            //   scrollDirection: Axis.vertical,
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) {
            //     return Message(
            //       image: 'assets/images/1.jpg',
            //       name: 'Counselor Name',
            //       message: 'hello',
            //       ontap: () {
            //         context.pushRoute(
            //             MessagingScreen(counselorName: 'Counselor Name'));
            //       },
            //     );
            //   },
            //   separatorBuilder: (context, index) =>
            //       const SizedBox(height: 20.0),
            //   itemCount: 3,
            // ),
            // Counselor(
            //   counselorImage: 'assets/images/1.jpg',
            //   counselorName: 'Counselor Name',
            //   ontap: () {
            //     context.pushRoute(
            //         MessagingScreen(counselorName: 'Counselor Name'));
            //   },
            // ),
            // Message(
            //   image: 'assets/images/1.jpg',
            //   name: 'Counselor Name',
            //   message: 'hello',
            //   ontap: () {
            //     context.pushRoute(
            //         MessagingScreen(counselorName: 'Counselor Name'));
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
