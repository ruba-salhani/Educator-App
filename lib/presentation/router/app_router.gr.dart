// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../views/components/custom_curved_navigation_bar.dart' as _i2;
import '../views/screens/behaviors/behaviors_screen.dart' as _i4;
import '../views/screens/family_day/family_day_screen.dart' as _i5;
import '../views/screens/phone_usage_system/phone_usage_system_screen.dart'
    as _i6;
import '../views/screens/posts/posts_screen.dart' as _i7;
import '../views/screens/signin/signin_screen.dart' as _i1;
import '../views/screens/signup/signup_screen.dart' as _i3;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SigninScreen.name: (routeData) {
      final args = routeData.argsAs<SigninScreenArgs>(
          orElse: () => const SigninScreenArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SigninScreen(key: args.key));
    },
    CustomCurvedNavigationBar.name: (routeData) {
      final args = routeData.argsAs<CustomCurvedNavigationBarArgs>(
          orElse: () => const CustomCurvedNavigationBarArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.CustomCurvedNavigationBar(key: args.key));
    },
    SignupScreen.name: (routeData) {
      final args = routeData.argsAs<SignupScreenArgs>(
          orElse: () => const SignupScreenArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.SignupScreen(key: args.key));
    },
    BehaviorsScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.BehaviorsScreen());
    },
    FamilyDayScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.FamilyDayScreen());
    },
    PhoneUsageSeystemScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PhoneUsageSeystemScreen());
    },
    PostsScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PostsScreen());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SigninScreen.name, path: '/signin-screen'),
        _i8.RouteConfig(CustomCurvedNavigationBar.name, path: '/'),
        _i8.RouteConfig(SignupScreen.name, path: '/signup-screen'),
        _i8.RouteConfig(BehaviorsScreen.name, path: '/behaviors-screen'),
        _i8.RouteConfig(FamilyDayScreen.name, path: '/family-day-screen'),
        _i8.RouteConfig(PhoneUsageSeystemScreen.name,
            path: '/phone-usage-seystem-screen'),
        _i8.RouteConfig(PostsScreen.name, path: '/posts-screen')
      ];
}

/// generated route for
/// [_i1.SigninScreen]
class SigninScreen extends _i8.PageRouteInfo<SigninScreenArgs> {
  SigninScreen({_i9.Key? key})
      : super(SigninScreen.name,
            path: '/signin-screen', args: SigninScreenArgs(key: key));

  static const String name = 'SigninScreen';
}

class SigninScreenArgs {
  const SigninScreenArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'SigninScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.CustomCurvedNavigationBar]
class CustomCurvedNavigationBar
    extends _i8.PageRouteInfo<CustomCurvedNavigationBarArgs> {
  CustomCurvedNavigationBar({_i9.Key? key})
      : super(CustomCurvedNavigationBar.name,
            path: '/', args: CustomCurvedNavigationBarArgs(key: key));

  static const String name = 'CustomCurvedNavigationBar';
}

class CustomCurvedNavigationBarArgs {
  const CustomCurvedNavigationBarArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'CustomCurvedNavigationBarArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SignupScreen]
class SignupScreen extends _i8.PageRouteInfo<SignupScreenArgs> {
  SignupScreen({_i9.Key? key})
      : super(SignupScreen.name,
            path: '/signup-screen', args: SignupScreenArgs(key: key));

  static const String name = 'SignupScreen';
}

class SignupScreenArgs {
  const SignupScreenArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'SignupScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.BehaviorsScreen]
class BehaviorsScreen extends _i8.PageRouteInfo<void> {
  const BehaviorsScreen()
      : super(BehaviorsScreen.name, path: '/behaviors-screen');

  static const String name = 'BehaviorsScreen';
}

/// generated route for
/// [_i5.FamilyDayScreen]
class FamilyDayScreen extends _i8.PageRouteInfo<void> {
  const FamilyDayScreen()
      : super(FamilyDayScreen.name, path: '/family-day-screen');

  static const String name = 'FamilyDayScreen';
}

/// generated route for
/// [_i6.PhoneUsageSeystemScreen]
class PhoneUsageSeystemScreen extends _i8.PageRouteInfo<void> {
  const PhoneUsageSeystemScreen()
      : super(PhoneUsageSeystemScreen.name,
            path: '/phone-usage-seystem-screen');

  static const String name = 'PhoneUsageSeystemScreen';
}

/// generated route for
/// [_i7.PostsScreen]
class PostsScreen extends _i8.PageRouteInfo<void> {
  const PostsScreen() : super(PostsScreen.name, path: '/posts-screen');

  static const String name = 'PostsScreen';
}
