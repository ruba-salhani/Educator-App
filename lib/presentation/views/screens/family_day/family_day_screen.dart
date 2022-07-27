import 'package:auto_route/auto_route.dart';
import 'package:educator/data/datasourses/local/storage.dart';
import 'package:educator/presentation/cubit/note_cubit/note_cubit.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:educator/presentation/views/screens/family_day/widgets/note_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../router/app_router.gr.dart';

class FamilyDayScreen extends StatefulWidget {
  const FamilyDayScreen({Key? key}) : super(key: key);

  @override
  State<FamilyDayScreen> createState() => _FamilyDayScreenState();
}

class _FamilyDayScreenState extends State<FamilyDayScreen> {
  String? _chosenValue;
  String chValue = '';
  String timeValue = '';
  final TimeOfDay _time = TimeOfDay.now();
  final SecureStorage secureStorage = SecureStorage();
  final TextEditingController _timeController = TextEditingController();
  List<String> days = [
    'السبت',
    'الأحد',
    'الإثنين',
    'الثلاثاء',
    'الأربعاء',
    'الخميس',
    'الجمعة',
  ];
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    final day = await secureStorage.readSecureData('day') ?? '';
    // final durationValue = await secureStorage.readSecureData('duration') ?? '';
    final time = await secureStorage.readSecureData('time') ?? '';

    setState(() {
      chValue = day;
      timeValue = time;
      print(timeValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(
          text: 'يوم العائلة',
          icon: Icons.priority_high_outlined,
          onpreased: () {
            context.pushRoute(FamilyDayDescription());
          },
        ),
        floatingActionButton: FloatingActionButton(
          //backgroundColor: Theme.of(context).primaryColor,
          child: const Icon(Icons.add),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return NoteDialog();
                });
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  size: false, text: 'تحديد موعد جلسة أسبوعية للعائلة:',
                  //style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton<String>(
                      borderRadius: BorderRadius.circular(30),
                      style: const TextStyle(
                        color: AppColors.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                      underline: const SizedBox.shrink(),
                      value: _chosenValue,
                      items: days.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          alignment: AlignmentDirectional.bottomCenter,
                          child: CustomText(
                            size: false, text: value,
                            // style: const TextStyle(
                            //   color: AppColors.secondary,
                            //   //fontWeight: FontWeight.bold,
                            // ),
                          ),
                        );
                      }).toList(),
                      hint: const CustomText(
                        size: false, text: "اختر اليوم",
                        // style: TextStyle(
                        //   color: AppColors.secondary,
                        //   //fontWeight: FontWeight.bold,
                        // ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _chosenValue = value;
                        });
                        secureStorage.writeSecureData('day', _chosenValue!);

                        init();
                      },
                    ),
                    CustomText(
                      size: false, text: chValue,
                      //style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        // style: const TextStyle(
                        //   fontFamily: "Hacen",
                        //   fontSize: 18,
                        // ),
                        style: const TextStyle(
                          color: AppColors.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                        controller: _timeController,
                        onTap: timePicker,

                        onSaved: (val) {
                          _timeController.text = val!;
                          // secureStorage.writeSecureData(
                          //     'time', _timeController.text);
                          // init();
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "اختر الوقت",
                        ),
                      ),
                    ),
                    CustomText(
                      size: false, text: timeValue,
                      //style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                const CustomText(
                  size: false, text: 'دوّن الأمور المهمة:',
                  //style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 20.0),
                Expanded(
                  child: BlocBuilder<NoteCubit, NoteState>(
                    builder: (BuildContext context, state) {
                      //context.read<NoteCubit>().getNotes;
                      if (state is GetNotesState) {
                        return ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: state.notes.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: ListTile(
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.delete,
                                        color: AppColors.secondary,
                                      ),
                                      onPressed: () {
                                        context
                                            .read<NoteCubit>()
                                            .deleteNote(state.notes[index].id!);
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.create,
                                        color: AppColors.secondary,
                                      ),
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return NoteDialog(
                                                note: state.notes[index],
                                              );
                                            });
                                      },
                                    ),
                                  ],
                                ),
                                title: CustomText(
                                  size: false,
                                  text: state.notes[index].note!,
                                  // style: TextStyle(
                                  //   color: Theme.of(this.context).primaryColor,
                                  //   fontFamily: "Hacen",
                                  //   fontSize: 20,
                                  // ),
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        return const NoElementsWidget();
                      }
                    },
                  ),
                ),
              ]),
        ),

        //}
      ),
    );
  }

  timePicker() async {
    {
      final TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: _time,
        confirmText: "حفظ",
        cancelText: "إلغاء",
        helpText: "اختر الوقت",
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                  primary: Theme.of(context)
                      .colorScheme
                      .secondary, // header background color
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
      if (time != null) {
        _timeController.text = time.format(context);
        secureStorage.writeSecureData('time', _timeController.text);
        init();
      }
    }
  }
}
