import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';

class FieldDialog extends StatelessWidget {
  FieldDialog({
    Key? key,
    required this.firstButtonOnpressd,
    this.vald,
    this.onsaved,
    required this.hint,
    required this.label,
    required this.icon,
  }) : super(key: key);
  final void Function() firstButtonOnpressd;
  final String? Function(String?)? vald;
  final void Function(String?)? onsaved;
  String hint;
  String label;
  IconData icon;

  //final _formKey = GlobalKey<FormState>();
  String? value;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        elevation: 30,
        content: CustomTextFormField(
          keyType: TextInputType.text,
          action: TextInputAction.done,
          obscure: false,
          suffixicon: Icon(icon),
          label: label,
          hint: hint,
          vald: vald,
          // qValidator([
          //   const IsRequired(),
          // ]),
          onsaved: onsaved,
          //  (val) => {
          //   value = val,
          // },
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: firstButtonOnpressd,
                //     () {
                //   if (FocusScope.of(context).hasFocus) {
                //     FocusScope.of(context).unfocus();
                //   }
                //   _formKey.currentState!.save();
                //   if (_formKey.currentState!.validate()) {
                //     context.popRoute();
                //     //context.read<AuthCubit>().signUp(_image, _username!, _password!, _type!);
                //     print(value);

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
