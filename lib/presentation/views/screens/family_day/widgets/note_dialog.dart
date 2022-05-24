import 'package:auto_route/auto_route.dart';
import 'package:educator/domain/entities/note.dart';
import 'package:educator/presentation/cubit/note_cubit/note_cubit.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:queen_validators/queen_validators.dart';

class NoteDialog extends StatelessWidget {
  NoteDialog({Key? key, this.note}) : super(key: key);

  final Note? note;

  final _formKey = GlobalKey<FormState>();
  String? _note;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: FieldDialog(
        initialValue: note?.note,
        icon: Icons.note_add_outlined,
        label: 'ملاحظة',
        hint: 'ادخل ملاحظة',
        vald: qValidator([
          const IsRequired('مطلوب'),
        ]),
        onsaved: (val) {
          _note = val;
        },
        firstButtonOnpressd: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            if (note == null) {
              context.read<NoteCubit>().saveNote(_note!);
            } else {
              context.read<NoteCubit>().updateNote(note!.id!, _note!);
            }
            context.popRoute();
          }
        },
      ),
    );
  }
}
