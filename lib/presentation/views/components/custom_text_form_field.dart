import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    this.initialValue,
    this.keyType,
    this.label,
    this.hint,
    //this.formController,
    this.vald,
    this.onsaved,
    this.action,
    this.suffixicon,
    this.obscure,
    Key? key,
  }) : super(key: key);
  final String? initialValue;
  final TextInputType? keyType;
  final String? label;
  final String? hint;
  //TextEditingController? formController;
  final String? Function(String?)? vald;
  final void Function(String?)? onsaved;
  final TextInputAction? action;
  final Widget? suffixicon;
  final bool? obscure;
  //@override
  //_CustomTextFormFieldState createState() => _CustomTextFormFieldState();
//}

//class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      textInputAction: action,
      keyboardType: keyType,
      decoration: InputDecoration(
        labelText: label,
        //labelStyle: TextStyle(fontSize: 14),
        hintText: hint,
        suffixIcon: suffixicon,
      ),
      validator: vald,
      onSaved: onsaved,
      obscureText: obscure!,
    );
  }
}
