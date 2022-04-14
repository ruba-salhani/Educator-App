import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class FamilyDayScreen extends StatefulWidget {
  const FamilyDayScreen({Key? key}) : super(key: key);

  @override
  State<FamilyDayScreen> createState() => _FamilyDayScreenState();
}

class _FamilyDayScreenState extends State<FamilyDayScreen> {
  String? _chosenValue;
  TimeOfDay _time = TimeOfDay.now();
  TextEditingController _timeController = TextEditingController();
  List<String> days = [
    'Sat',
    'Sun',
    'Mon',
    'Tues',
    'Wed',
    'Thurs',
    'Fri',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Family day',
        icon: Icons.priority_high_outlined,
        onpreased: () {},
      ),
      floatingActionButton: FloatingActionButton(
        
        //backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
        onPressed: () async => {
          // await Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => NewTask()))
          //     .then((value) => setState(() {
          //           getAllTasks();
          //         })),
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Schedule a weekly meeting in which the family gathers:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 20.0),
              DropdownButton<String>(
                value: _chosenValue,
                items: days.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                        color: AppColors.secondary,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }).toList(),
                hint: const Text(
                  "Choose day",
                  // style: TextStyle(
                  //   color: AppColors.secondary,
                  //   //fontWeight: FontWeight.bold,
                  // ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _chosenValue = value;
                  });
                },
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                // style: const TextStyle(
                //   fontFamily: "Hacen",
                //   fontSize: 18,
                // ),
                style: const TextStyle(
                  color: AppColors.secondary,
                  //fontWeight: FontWeight.bold,
                ),
                controller: _timeController,
                onTap: timePicker,
                //validator: (val) => val!.isEmpty ? 'أدخل الوقت' : null,
                onSaved: (val) => _timeController.text = val!,
                decoration: const InputDecoration(
                  hintText: "Choose time",
                  //labelText: "Choose time",
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.all(
                  //     Radius.circular(15),
                  //   ),
                  // ),
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Write down important things:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, i) {
                    return Card(
                      child: ListTile(
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: AppColors.secondary,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.create,
                                color: AppColors.secondary,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        title: Text(
                          '.................',
                          // style: TextStyle(
                          //   color: Theme.of(this.context).primaryColor,
                          //   fontFamily: "Hacen",
                          //   fontSize: 20,
                          // ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ]),
      ),
    );
  }

  timePicker() async {
    {
      final TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: _time,
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

      _timeController.text = time!.format(context);
    }
  }
}
