import 'package:flutter/material.dart';
import 'package:educator/global/app_constants.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/theme/app_theme.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appTitle,
      theme: AppTheme.lightTheme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser:
          _appRouter.defaultRouteParser(includePrefixMatches: true),
    );
  }
}
