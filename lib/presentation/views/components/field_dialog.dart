import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';

class FieldDialog extends StatelessWidget {
  FieldDialog({
    Key? key,
    required this.firstButtonOnpressd,
    required this.hint,
    required this.label,
    required this.icon,
  }) : super(key: key);
  final void Function() firstButtonOnpressd;
  String hint;
  String label;
  IconData icon;

  final _formKey = GlobalKey<FormState>();
  String? value;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        elevation: 30,
        content: Form(
            key: _formKey,
            child: Expanded(
                flex: 3,
                child: CustomTextFormField(
                  keyType: TextInputType.text,
                  action: TextInputAction.done,
                  obscure: false,
                  suffixicon: Icon(icon),
                  label: label,
                  hint: hint,
                  vald: qValidator([
                    const IsRequired(),
                  ]),
                  onsaved: (val) => {
                    value = val,
                  },
                ))),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: firstButtonOnpressd,
                // () {
                //   if (FocusScope.of(context).hasFocus) {
                //     FocusScope.of(context).unfocus();
                //   }
                //   _formKey.currentState!.save();
                //   if (_formKey.currentState!.validate()) {
                //     context.popRoute();
                //     //context.read<AuthCubit>().signUp(_image, _username!, _password!, _type!);
                //     print(_note);

                //     print(_formKey);
                //   }
                // },
                child: const CustomText(size: false, text: 'حفظ'),
              ),
              ElevatedButton(
                  onPressed: () {
                    context.popRoute();
                  },
                  child: const CustomText(
                    size: false,
                    text: 'إلغاء',
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
