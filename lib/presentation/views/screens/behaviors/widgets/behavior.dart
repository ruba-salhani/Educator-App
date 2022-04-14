import 'package:educator/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class Behavior extends StatefulWidget {
  Behavior({Key? key}) : super(key: key);

  @override
  State<Behavior> createState() => _BehaviorState();
}

class _BehaviorState extends State<Behavior> {
  TextEditingController _behaviorController = TextEditingController();
  TextEditingController _startingDateController = TextEditingController();
  TextEditingController _endDateController = TextEditingController();

  DateTime _date = DateTime.now();
  final DateFormat _dateFormatter = DateFormat.yMd();
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
    return Card(
      //color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Table(
            // border: TableBorder
            //     .all(), // Allows to add a border decoration around your table
            children: const [
              TableRow(children: [
                Text(
                  'Behavior',
                  style: TextStyle(
                    color: AppColors.secondary,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Starting',
                  style: TextStyle(
                    color: AppColors.secondary,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'End',
                  style: TextStyle(
                    color: AppColors.secondary,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'ُExcellent',
                  style: TextStyle(
                    color: AppColors.secondary,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Bad',
                  style: TextStyle(
                    color: AppColors.secondary,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              TableRow(children: [
                Text('honesty'),
                Text('1/5'),
                Text('1/6'),
                Text('4'),
                Text('6'),
              ]),
              TableRow(children: [
                Text('honesty'),
                Text('1/5'),
                Text('1/6'),
                Text('4'),
                Text('6'),
              ]),
            ]),

        // Row(
        //   children: [
        //     Flexible(
        //       child: TextFormField(
        //         // style: const TextStyle(
        //         //   fontFamily: "Hacen",
        //         //   fontSize: 18,
        //         // ),
        //         style: const TextStyle(
        //           color: AppColors.secondary,
        //           //fontWeight: FontWeight.bold,
        //         ),
        //         controller: _behaviorController,
        //         //onTap: timePicker,
        //         //validator: (val) => val!.isEmpty ? 'أدخل الوقت' : null,
        //         onSaved: (val) => _behaviorController.text = val!,
        //         decoration: const InputDecoration(
        //           hintText: "Behavior",
        //           //labelText: "Choose time",
        //           border: OutlineInputBorder(
        //             borderSide: BorderSide.none,
        //             // borderRadius: BorderRadius.all(
        //             //   Radius.circular(15),
        //             // ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     Flexible(
        //       child: TextFormField(
        //         // style: TextStyle(
        //         //   fontFamily: "Hacen",
        //         //   fontSize: 18,
        //         // ),
        //         controller: _startingDateController,
        //         //onTap: datePicker(),
        //         //validator: (val) => val!.isEmpty ? 'أدخل التاريخ' : null,
        //         onSaved: (val) => _startingDateController.text = val!,
        //         decoration: const InputDecoration(
        //           //labelText: 'تاريخ المهمة',
        //           hintText: 'Starting',
        //           border: OutlineInputBorder(
        //             borderSide: BorderSide.none,
        //             // borderRadius: BorderRadius.all(
        //             //   Radius.circular(15),
        //             // ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     Flexible(
        //       child: TextFormField(
        //         // style: TextStyle(
        //         //   fontFamily: "Hacen",
        //         //   fontSize: 18,
        //         // ),
        //         controller: _endDateController,
        //         //onTap: datePicker(_endDateController),
        //         //validator: (val) => val!.isEmpty ? 'أدخل التاريخ' : null,
        //         onSaved: (val) => _endDateController.text = val!,
        //         decoration: const InputDecoration(
        //           //labelText: 'تاريخ المهمة',
        //           hintText: 'End',
        //           border: OutlineInputBorder(
        //             borderSide: BorderSide.none,
        //           ),
        //         ),
        //       ),
        //     ),
        //     Row(
        //       children: [
        //         IconButton(
        //             onPressed: () {
        //               trueCounter();
        //             },
        //             icon: const Icon(Icons.check_circle_outline)),
        //         Text('$_trueCounter'),
        //       ],
        //     ),
        //     Row(
        //       children: [
        //         IconButton(
        //             onPressed: () {
        //               falseCounter();
        //             },
        //             icon: const Icon(Icons.highlight_off)),
        //         Text('$_falseCounter'),
        //       ],
        //     ),
        //   ],
        // ),
      ),
    );
  }

  datePicker() async {
    {
      final DateTime? date = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(2022),
        lastDate: DateTime(2100),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                  primary:
                      Theme.of(context).accentColor, // header background color
                  onPrimary: Colors.black, // header text color
                  onSurface: Colors.black // body text color
                  ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: Theme.of(context).primaryColor, // button text color
                ),
              ),
            ),
            child: child!,
          );
        },
      );

      _startingDateController.text = _dateFormatter.format(date!);
    }
  }
}
