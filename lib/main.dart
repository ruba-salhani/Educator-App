import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:educator/dependency_injection.dart';
import 'package:educator/presentation/cubit/app_observer.dart';
import 'package:educator/presentation/views/app.dart';

void main() {
  setup();
  BlocOverrides.runZoned(() => runApp(App()), blocObserver: AppObserver());
}
