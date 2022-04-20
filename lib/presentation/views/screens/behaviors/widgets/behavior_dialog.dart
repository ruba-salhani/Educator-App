import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queen_validators/queen_validators.dart';

class BehaviorDialog extends StatefulWidget {
  const BehaviorDialog({Key? key}) : super(key: key);

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
    'طاعة الأم عند الزيارة',
    'عدم الإلحاح في الطلب',
    'المصارحة وعدم الكتمان',
    'عدم الصراخ ورفع الصوت',
    'عدم مضايقةاخوانه',
    'الكرم وعدم البخل',
    'عدم وضع الإصبع في الفم',
    'الكلام الطيب والسلام والتحية',
    'الاعتذار عندالخطأ',
    'عدم نقل الكلام',
    'عدم الطمع والجشع',
    'اللبس المحتشم والطويل',
    'الالتزام بالتعليمات والقوانين',
    'عدم الإفساد والتخريب',
    'عدم التذمر والتأفف'
  ];
  String? _chosenValue;
  final _formKey = GlobalKey<FormState>();
  String? _behavior;
  String? _startingDate;
  String? _endDate;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
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
                    borderRadius: BorderRadius.circular(30),
                    value: _chosenValue,
                    items:
                        behaviors.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Text(
                          value,
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
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
                  CustomTextFormField(
                    keyType: TextInputType.text,
                    action: TextInputAction.next,
                    obscure: false,
                    suffixicon: const Icon(Icons.today_outlined),
                    label: 'Starting Date',
                    hint: 'Starting Date',
                    vald: qValidator([
                      const IsRequired(),
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
      ),
    );
  }
}
