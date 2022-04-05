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
    return Scaffold(
      appBar: AppBar(
        title: Text(counselorName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(children: const <Widget>[
          CustomListTile(
            image: 'assets/images/1.jpg',
            name: 'Counselor Name',
            message: 'hello',
          ),
          CustomListTile(
            image: 'assets/images/1.jpg',
            name: 'Educator Name',
            message: 'hello',
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
            hintText: 'Write a message',
          ),
          //autofocus: false,
        ),
      ),
    );
  }
}
