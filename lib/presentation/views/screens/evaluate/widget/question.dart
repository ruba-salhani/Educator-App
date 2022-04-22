import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  Question({
    Key? key,
    this.noOnchange,
    this.sometimesOnchange,
    this.yesOnchange,
    this.nVal,
    this.sVal,
    this.yVal,
    this.question,
  }) : super(key: key);

  void Function(bool?)? noOnchange;
  void Function(bool?)? sometimesOnchange;
  void Function(bool?)? yesOnchange;
  bool? nVal;
  bool? sVal;
  bool? yVal;
  String? question;
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                widget.question!,
                textAlign: TextAlign.right,
              ),
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("لا"),
                    Checkbox(value: widget.nVal, onChanged: widget.noOnchange),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("أحيانا"),
                    Checkbox(
                        value: widget.sVal,
                        onChanged: widget.sometimesOnchange),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("نعم"),
                    Checkbox(
                      value: widget.yVal,
                      onChanged: widget.yesOnchange,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Divider(
            //color: Color(0xff514BC3),
            ),
      ],
    );
  }
}
