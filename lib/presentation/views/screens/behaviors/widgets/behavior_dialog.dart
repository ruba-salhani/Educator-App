import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queen_validators/queen_validators.dart';

class BehaviorDialog extends StatefulWidget {
  BehaviorDialog({Key? key}) : super(key: key);

  @override
  State<BehaviorDialog> createState() => _BehaviorDialogState();
}

class _BehaviorDialogState extends State<BehaviorDialog> {
  List<String> behaviors = [
    'الصلاة والمواظبة عليها',
    'النظافة الشخصية',
    'الصدق وعدم الكذب',
    'الشجاعة وعدم الخجل',
    'السرعة في الاستجابة',
    'الترتيب اليومي',
    'الادب في الأكل والشرب',
    'الأدب في السلوك والتعامل',
    'الواجبات المدرسية',
    'طاعة الأم عند الزيارة'
  ];
  String? _chosenValue;
  final _formKey = GlobalKey<FormState>();
  String? _behavior;
  String? _startingDate;
  String? _endDate;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 30,
      content: SingleChildScrollView(
        child: SizedBox(
          height: Get.height / 3,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DropdownButton<String>(
                  value: _chosenValue,
                  items:
                      behaviors.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    );
                  }).toList(),
                  hint: const Text(
                    "Choose behavior",
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
                // CustomTextFormField(
                //   keyType: TextInputType.text,
                //   action: TextInputAction.next,
                //   obscure: false,
                //   suffixicon: const Icon(Icons.expand_circle_down_outlined),
                //   label: 'Behavior',
                //   hint: 'Behavior',
                //   vald: qValidator([
                //     const IsRequired(),
                //     // const MinLength(4, 'Note is too short'),
                //     // const MaxLength(20),
                //   ]),
                //   onsaved: (val) => {
                //     _behavior = val,
                //   },
                // ),
                CustomTextFormField(
                  keyType: TextInputType.text,
                  action: TextInputAction.next,
                  obscure: false,
                  suffixicon: const Icon(Icons.today_outlined),
                  label: 'Starting Date',
                  hint: 'Starting Date',
                  vald: qValidator([
                    const IsRequired(),
                    // const MinLength(4, 'Note is too short'),
                    // const MaxLength(20),
                  ]),
                  onsaved: (val) => {
                    _startingDate = val,
                  },
                ),
                CustomTextFormField(
                  keyType: TextInputType.text,
                  action: TextInputAction.done,
                  obscure: false,
                  suffixicon: const Icon(Icons.today_outlined),
                  label: 'End Date',
                  hint: 'End Date',
                  vald: qValidator([
                    const IsRequired(),
                    // const MinLength(4, 'Note is too short'),
                    // const MaxLength(20),
                  ]),
                  onsaved: (val) => {
                    _endDate = val,
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                if (FocusScope.of(context).hasFocus) {
                  FocusScope.of(context).unfocus();
                }
                _formKey.currentState!.save();
                if (_formKey.currentState!.validate()) {
                  context.popRoute();
                  //context.read<AuthCubit>().signUp(_image, _username!, _password!, _type!);
                  print(_behavior);
                  print(_startingDate);
                  print(_endDate);
                  print(_formKey);
                }
              },
              child: const Text('Save'),
            ),
            ElevatedButton(
                onPressed: () {
                  context.popRoute();
                },
                child: const Text(
                  'Cancel',
                )),
          ],
        ),
      ],
    );
  }
}
