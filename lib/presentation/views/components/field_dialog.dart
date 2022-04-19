import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';

class FieldDialog extends StatefulWidget {
  FieldDialog({
    Key? key,
    required this.firstButtonOnpressd,
    //required this.secondButtonOnpressd,
    required this.hint,
    required this.label,
  }) : super(key: key);
  final void Function() firstButtonOnpressd;
  //final void Function() secondButtonOnpressd;
  String hint;
  String label;

  @override
  State<FieldDialog> createState() => _FieldDialogState();
}

class _FieldDialogState extends State<FieldDialog> {
  final _formKey = GlobalKey<FormState>();
  String? _note;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 30,
      content: Form(
          key: _formKey,
          child: Expanded(
              flex: 3,
              child: CustomTextFormField(
                keyType: TextInputType.text,
                action: TextInputAction.done,
                obscure: false,
                suffixicon: const Icon(Icons.note_add_outlined),
                label: widget.label,
                hint: widget.hint,
                // label: 'Note',
                // hint: 'Write your note',
                vald: qValidator([
                  const IsRequired(),
                  // const MinLength(4, 'Note is too short'),
                  // const MaxLength(20),
                ]),
                onsaved: (val) => {
                  _note = val,
                },
              ))),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: widget.firstButtonOnpressd,
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
