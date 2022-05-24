import 'package:educator/data/models/behavior_model.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Behavior extends StatefulWidget {
  const Behavior({Key? key, required this.behavior}) : super(key: key);
  final BehaviorModel behavior;
  @override
  State<Behavior> createState() => _BehaviorState();
}

class _BehaviorState extends State<Behavior> {
  int _trueCounter = 0;
  int _falseCounter = 0;
  void falseCounter() {
    setState(() {
      _falseCounter++;
      widget.behavior.falseCounter = _falseCounter;
    });
  }

  void trueCounter() {
    setState(() {
      _trueCounter++;
    });
    widget.behavior.trueCounter = _trueCounter;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.white70,
      height: Get.height / 8,
      //width: Get.width / 4,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                SizedBox(
                  //color: Colors.pinkAccent,
                  //height: Get.height / 10,
                  //width: Get.width / 4,
                  child: Center(
                      child: CustomText(
                    size: false,
                    text: widget.behavior.behavior!,
                    // style: TextStyle(
                    //   color: AppColors.secondary,
                    //   fontWeight: FontWeight.bold,
                    // ),
                  )),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                              widget.behavior.trueCounter.toString(),
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
                              widget.behavior.falseCounter.toString(),
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
                        child: Center(
                            child: CustomText(
                                size: false,
                                text: widget.behavior.startingDate!))),
                    SizedBox(
                        //color: Colors.pinkAccent,
                        //height: Get.height / 10,
                        width: Get.width / 4,
                        child: Center(
                            child: CustomText(
                                size: false, text: widget.behavior.endDate!))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
