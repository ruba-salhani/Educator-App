import 'package:educator/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Behavior extends StatefulWidget {
  const Behavior({Key? key}) : super(key: key);

  @override
  State<Behavior> createState() => _BehaviorState();
}

class _BehaviorState extends State<Behavior> {
  int _trueCounter = 0;
  int _falseCounter = 0;
  void falseCounter() {
    setState(() {
      _falseCounter++;
    });
  }

  void trueCounter() {
    setState(() {
      _trueCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.white70,
      height: Get.height / 10,
      //width: Get.width / 4,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    //color: Colors.pinkAccent,
                    //height: Get.height / 10,
                    width: Get.width / 4,
                    child: const Center(
                        child: Text(
                      'Behavior',
                      style: TextStyle(
                        color: AppColors.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
                SizedBox(
                  //color: Colors.pinkAccent,
                  //height: Get.height / 10,
                  width: Get.width / 4,
                  child: Center(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            trueCounter();
                          },
                          icon: const Icon(Icons.check_circle_outline),
                          color: Colors.green,
                        ),
                        Text(
                          '$_trueCounter',
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  //color: Colors.pinkAccent,
                  //height: Get.height / 10,
                  width: Get.width / 4,
                  child: Center(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            falseCounter();
                          },
                          icon: const Icon(Icons.highlight_off),
                          color: Colors.red,
                        ),
                        Text(
                          '$_falseCounter',
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    //color: Colors.pinkAccent,
                    //height: Get.height / 10,
                    width: Get.width / 4,
                    child: const Center(child: Text('Starting Date'))),
                SizedBox(
                    //color: Colors.pinkAccent,
                    //height: Get.height / 10,
                    width: Get.width / 4,
                    child: const Center(child: Text('End Date'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
