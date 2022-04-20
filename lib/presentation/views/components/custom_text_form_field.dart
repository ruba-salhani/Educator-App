import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
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
  final TextInputType? keyType;
  final String? label;
  final String? hint;
  //TextEditingController? formController;
  final String? Function(String?)? vald;
  final void Function(String?)? onsaved;
  final TextInputAction? action;
  final Widget? suffixicon;
  final bool? obscure;
  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: widget.action,
      keyboardType: widget.keyType,
      decoration: InputDecoration(
        labelText: widget.label,
        //labelStyle: TextStyle(fontSize: 14),
        hintText: widget.hint,
        suffixIcon: widget.suffixicon,
      ),
      validator: widget.vald,
      onSaved: widget.onsaved,
      obscureText: widget.obscure!,
    );
  }
}
