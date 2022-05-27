import 'package:auto_route/auto_route.dart';
import 'package:educator/domain/entities/child.dart';
import 'package:educator/domain/entities/note.dart';
import 'package:educator/presentation/cubit/child_cubit/child_cubit.dart';
import 'package:educator/presentation/cubit/note_cubit/note_cubit.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:queen_validators/queen_validators.dart';

class ChildDialog extends StatelessWidget {
  ChildDialog({Key? key, this.child}) : super(key: key);

  final Child? child;

  final _formKey = GlobalKey<FormState>();
  String? _child;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: FieldDialog(
        initialValue: child?.child,
        icon: Icons.add_reaction_outlined,
        label: 'الاسم',
        hint: 'ادخل الاسم',
        vald: qValidator([
          const IsRequired('مطلوب'),
        ]),
        onsaved: (val) {
          _child = val;
        },
        firstButtonOnpressd: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            if (child == null) {
              context.read<ChildCubit>().saveChild(_child!);
            } else {
              context.read<ChildCubit>().updateChild(child!.id!, _child!);
            }
            context.popRoute();
          }
        },
      ),
    );
  }
}
