import 'package:educator/presentation/views/screens/consultation/widgets/counselor.dart';
import 'package:educator/presentation/views/screens/consultation/widgets/message.dart';
import 'package:flutter/material.dart';

class ConsultationScreen extends StatelessWidget {
  const ConsultationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('request consultation')),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Start contacting a counselor'),
              const SizedBox(height: 20.0),
              ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Counselor(
                    counselorImage: 'assets/images/1.jpg',
                    counselorName: 'Counselor Name',
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20.0),
                itemCount: 10,
              ),
              const SizedBox(height: 20.0),
              ListView.separated(
                itemBuilder: (context, index) {
                  return const Message(
                    image: 'assets/images/1.jpg',
                    name: 'Counselor Name',
                    message: 'hello',
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20.0),
                itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
