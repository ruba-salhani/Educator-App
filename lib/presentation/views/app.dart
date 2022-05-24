import 'package:educator/dependency_injection.dart';
import 'package:educator/presentation/cubit/behavior_cubit/behavior_cubit.dart';
import 'package:educator/presentation/cubit/child_cubit/child_cubit.dart';
import 'package:educator/presentation/cubit/note_cubit/note_cubit.dart';
import 'package:flutter/material.dart';
import 'package:educator/global/app_constants.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/theme/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteCubit>(
          create: (_) => getIt<NoteCubit>(),
        ),
        BlocProvider<ChildCubit>(
          create: (_) => getIt<ChildCubit>(),
        ),
        BlocProvider<BehaviorCubit>(
          create: (_) => getIt<BehaviorCubit>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: AppConstants.appTitle,
        theme: AppTheme.lightTheme,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser:
            _appRouter.defaultRouteParser(includePrefixMatches: true),
      ),
    );
  }
}
