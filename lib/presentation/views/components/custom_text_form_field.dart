import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    this.keyType,
    this.label,
    this.hint,
    this.formController,
    this.vald,
    this.onsaved,
    //this.obscure,
    Key? key,
  }) : super(key: key);
  final TextInputType? keyType;
  final String? label;
  final String? hint;

  TextEditingController? formController = TextEditingController();
  final String? Function(String?)? vald;
  final void Function(String?)? onsaved;
  //bool? obscure;
  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyType,
      controller: widget.formController,
      decoration: InputDecoration(
        labelText: widget.label,
        //labelStyle: TextStyle(fontSize: 14),
        hintText: widget.hint,
      ),
      validator: widget.vald,
      onSaved: widget.onsaved,
      //obscureText: widget.obscure!,
      //(val)
      // {
      //   widget.formController!.text = val!;
      //   print(widget.formController!.text);
      // },
    );
  }
}
