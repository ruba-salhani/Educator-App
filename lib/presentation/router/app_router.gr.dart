// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i30;
import 'package:flutter/material.dart' as _i31;

import '../views/screens/behaviors/behaviors_screen.dart' as _i4;
import '../views/screens/consultation/consultation_screen.dart' as _i26;
import '../views/screens/consultation/messaging_screen.dart' as _i27;
import '../views/screens/custom_curved_navigation_bar.dart' as _i2;
import '../views/screens/demands/adolescence.dart' as _i20;
import '../views/screens/demands/aging.dart' as _i23;
import '../views/screens/demands/center_of_age.dart' as _i22;
import '../views/screens/demands/childhood.dart' as _i19;
import '../views/screens/demands/demands_screen.dart' as _i8;
import '../views/screens/demands/early_childhood.dart' as _i18;
import '../views/screens/demands/majority.dart' as _i21;
import '../views/screens/evaluate/evaluate_your_child_screen.dart' as _i9;
import '../views/screens/evaluate/evaluated_of_yourself_screen.dart' as _i24;
import '../views/screens/family_day/family_day_screen.dart' as _i5;
import '../views/screens/phone_usage_system/phone_usage_system_screen.dart'
    as _i6;
import '../views/screens/posts/comments_screen.dart' as _i29;
import '../views/screens/posts/posts_screen.dart' as _i7;
import '../views/screens/posts/reactions_screen.dart' as _i28;
import '../views/screens/responsibilities/ethics.dart' as _i12;
import '../views/screens/responsibilities/faith.dart' as _i11;
import '../views/screens/responsibilities/mental.dart' as _i14;
import '../views/screens/responsibilities/physical.dart' as _i13;
import '../views/screens/responsibilities/psychological.dart' as _i16;
import '../views/screens/responsibilities/responsibilities_screen.dart' as _i10;
import '../views/screens/responsibilities/sexual.dart' as _i15;
import '../views/screens/responsibilities/social.dart' as _i17;
import '../views/screens/signin/signin_screen.dart' as _i1;
import '../views/screens/signup/signup_screen.dart' as _i3;
import '../views/screens/tips_screen/tips_screen.dart' as _i25;

class AppRouter extends _i30.RootStackRouter {
  AppRouter([_i31.GlobalKey<_i31.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i30.PageFactory> pagesMap = {
    SigninScreen.name: (routeData) {
      final args = routeData.argsAs<SigninScreenArgs>(
          orElse: () => const SigninScreenArgs());
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SigninScreen(key: args.key));
    },
    CustomCurvedNavigationBar.name: (routeData) {
      final args = routeData.argsAs<CustomCurvedNavigationBarArgs>(
          orElse: () => const CustomCurvedNavigationBarArgs());
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.CustomCurvedNavigationBar(key: args.key));
    },
    SignupScreen.name: (routeData) {
      final args = routeData.argsAs<SignupScreenArgs>(
          orElse: () => const SignupScreenArgs());
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.SignupScreen(key: args.key));
    },
    BehaviorsScreen.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.BehaviorsScreen());
    },
    FamilyDayScreen.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.FamilyDayScreen());
    },
    PhoneUsageSeystemScreen.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PhoneUsageSeystemScreen());
    },
    PostsScreen.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PostsScreen());
    },
    DemandsScreen.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.DemandsScreen());
    },
    EvaluateYourChildScreen.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.EvaluateYourChildScreen());
    },
    ResponsibilitiesScreen.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ResponsibilitiesScreen());
    },
    Faith.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.Faith());
    },
    Ethics.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.Ethics());
    },
    Physical.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.Physical());
    },
    Mental.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.Mental());
    },
    Sexual.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.Sexual());
    },
    Psychological.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.Psychological());
    },
    Social.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.Social());
    },
    EarlyChildhood.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.EarlyChildhood());
    },
    Childhood.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.Childhood());
    },
    Adolescence.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.Adolescence());
    },
    Majority.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.Majority());
    },
    CenterOfAge.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.CenterOfAge());
    },
    Aging.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.Aging());
    },
    EvaluatedOfYourSelfScreen.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.EvaluatedOfYourSelfScreen());
    },
    TipsScreen.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.TipsScreen());
    },
    ConsultationScreen.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.ConsultationScreen());
    },
    MessagingScreen.name: (routeData) {
      final args = routeData.argsAs<MessagingScreenArgs>();
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i27.MessagingScreen(
              key: args.key, counselorName: args.counselorName));
    },
    ReactionsScreen.name: (routeData) {
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.ReactionsScreen());
    },
    CommentsScreen.name: (routeData) {
      final args = routeData.argsAs<CommentsScreenArgs>(
          orElse: () => const CommentsScreenArgs());
      return _i30.MaterialPageX<dynamic>(
          routeData: routeData, child: _i29.CommentsScreen(key: args.key));
    }
  };

  @override
  List<_i30.RouteConfig> get routes => [
        _i30.RouteConfig(SigninScreen.name, path: '/signin-screen'),
        _i30.RouteConfig(CustomCurvedNavigationBar.name, path: '/'),
        _i30.RouteConfig(SignupScreen.name, path: '/signup-screen'),
        _i30.RouteConfig(BehaviorsScreen.name, path: '/behaviors-screen'),
        _i30.RouteConfig(FamilyDayScreen.name, path: '/family-day-screen'),
        _i30.RouteConfig(PhoneUsageSeystemScreen.name,
            path: '/phone-usage-seystem-screen'),
        _i30.RouteConfig(PostsScreen.name, path: '/posts-screen'),
        _i30.RouteConfig(DemandsScreen.name, path: '/demands-screen'),
        _i30.RouteConfig(EvaluateYourChildScreen.name,
            path: '/evaluate-your-child-screen'),
        _i30.RouteConfig(ResponsibilitiesScreen.name,
            path: '/responsibilities-screen'),
        _i30.RouteConfig(Faith.name, path: '/Faith'),
        _i30.RouteConfig(Ethics.name, path: '/Ethics'),
        _i30.RouteConfig(Physical.name, path: '/Physical'),
        _i30.RouteConfig(Mental.name, path: '/Mental'),
        _i30.RouteConfig(Sexual.name, path: '/Sexual'),
        _i30.RouteConfig(Psychological.name, path: '/Psychological'),
        _i30.RouteConfig(Social.name, path: '/Social'),
        _i30.RouteConfig(EarlyChildhood.name, path: '/early-childhood'),
        _i30.RouteConfig(Childhood.name, path: '/Childhood'),
        _i30.RouteConfig(Adolescence.name, path: '/Adolescence'),
        _i30.RouteConfig(Majority.name, path: '/Majority'),
        _i30.RouteConfig(CenterOfAge.name, path: '/center-of-age'),
        _i30.RouteConfig(Aging.name, path: '/Aging'),
        _i30.RouteConfig(EvaluatedOfYourSelfScreen.name,
            path: '/evaluated-of-your-self-screen'),
        _i30.RouteConfig(TipsScreen.name, path: '/tips-screen'),
        _i30.RouteConfig(ConsultationScreen.name, path: '/consultation-screen'),
        _i30.RouteConfig(MessagingScreen.name, path: '/messaging-screen'),
        _i30.RouteConfig(ReactionsScreen.name, path: '/reactions-screen'),
        _i30.RouteConfig(CommentsScreen.name, path: '/comments-screen')
      ];
}

/// generated route for
/// [_i1.SigninScreen]
class SigninScreen extends _i30.PageRouteInfo<SigninScreenArgs> {
  SigninScreen({_i31.Key? key})
      : super(SigninScreen.name,
            path: '/signin-screen', args: SigninScreenArgs(key: key));

  static const String name = 'SigninScreen';
}

class SigninScreenArgs {
  const SigninScreenArgs({this.key});

  final _i31.Key? key;

  @override
  String toString() {
    return 'SigninScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.CustomCurvedNavigationBar]
class CustomCurvedNavigationBar
    extends _i30.PageRouteInfo<CustomCurvedNavigationBarArgs> {
  CustomCurvedNavigationBar({_i31.Key? key})
      : super(CustomCurvedNavigationBar.name,
            path: '/', args: CustomCurvedNavigationBarArgs(key: key));

  static const String name = 'CustomCurvedNavigationBar';
}

class CustomCurvedNavigationBarArgs {
  const CustomCurvedNavigationBarArgs({this.key});

  final _i31.Key? key;

  @override
  String toString() {
    return 'CustomCurvedNavigationBarArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SignupScreen]
class SignupScreen extends _i30.PageRouteInfo<SignupScreenArgs> {
  SignupScreen({_i31.Key? key})
      : super(SignupScreen.name,
            path: '/signup-screen', args: SignupScreenArgs(key: key));

  static const String name = 'SignupScreen';
}

class SignupScreenArgs {
  const SignupScreenArgs({this.key});

  final _i31.Key? key;

  @override
  String toString() {
    return 'SignupScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.BehaviorsScreen]
class BehaviorsScreen extends _i30.PageRouteInfo<void> {
  const BehaviorsScreen()
      : super(BehaviorsScreen.name, path: '/behaviors-screen');

  static const String name = 'BehaviorsScreen';
}

/// generated route for
/// [_i5.FamilyDayScreen]
class FamilyDayScreen extends _i30.PageRouteInfo<void> {
  const FamilyDayScreen()
      : super(FamilyDayScreen.name, path: '/family-day-screen');

  static const String name = 'FamilyDayScreen';
}

/// generated route for
/// [_i6.PhoneUsageSeystemScreen]
class PhoneUsageSeystemScreen extends _i30.PageRouteInfo<void> {
  const PhoneUsageSeystemScreen()
      : super(PhoneUsageSeystemScreen.name,
            path: '/phone-usage-seystem-screen');

  static const String name = 'PhoneUsageSeystemScreen';
}

/// generated route for
/// [_i7.PostsScreen]
class PostsScreen extends _i30.PageRouteInfo<void> {
  const PostsScreen() : super(PostsScreen.name, path: '/posts-screen');

  static const String name = 'PostsScreen';
}

/// generated route for
/// [_i8.DemandsScreen]
class DemandsScreen extends _i30.PageRouteInfo<void> {
  const DemandsScreen() : super(DemandsScreen.name, path: '/demands-screen');

  static const String name = 'DemandsScreen';
}

/// generated route for
/// [_i9.EvaluateYourChildScreen]
class EvaluateYourChildScreen extends _i30.PageRouteInfo<void> {
  const EvaluateYourChildScreen()
      : super(EvaluateYourChildScreen.name,
            path: '/evaluate-your-child-screen');

  static const String name = 'EvaluateYourChildScreen';
}

/// generated route for
/// [_i10.ResponsibilitiesScreen]
class ResponsibilitiesScreen extends _i30.PageRouteInfo<void> {
  const ResponsibilitiesScreen()
      : super(ResponsibilitiesScreen.name, path: '/responsibilities-screen');

  static const String name = 'ResponsibilitiesScreen';
}

/// generated route for
/// [_i11.Faith]
class Faith extends _i30.PageRouteInfo<void> {
  const Faith() : super(Faith.name, path: '/Faith');

  static const String name = 'Faith';
}

/// generated route for
/// [_i12.Ethics]
class Ethics extends _i30.PageRouteInfo<void> {
  const Ethics() : super(Ethics.name, path: '/Ethics');

  static const String name = 'Ethics';
}

/// generated route for
/// [_i13.Physical]
class Physical extends _i30.PageRouteInfo<void> {
  const Physical() : super(Physical.name, path: '/Physical');

  static const String name = 'Physical';
}

/// generated route for
/// [_i14.Mental]
class Mental extends _i30.PageRouteInfo<void> {
  const Mental() : super(Mental.name, path: '/Mental');

  static const String name = 'Mental';
}

/// generated route for
/// [_i15.Sexual]
class Sexual extends _i30.PageRouteInfo<void> {
  const Sexual() : super(Sexual.name, path: '/Sexual');

  static const String name = 'Sexual';
}

/// generated route for
/// [_i16.Psychological]
class Psychological extends _i30.PageRouteInfo<void> {
  const Psychological() : super(Psychological.name, path: '/Psychological');

  static const String name = 'Psychological';
}

/// generated route for
/// [_i17.Social]
class Social extends _i30.PageRouteInfo<void> {
  const Social() : super(Social.name, path: '/Social');

  static const String name = 'Social';
}

/// generated route for
/// [_i18.EarlyChildhood]
class EarlyChildhood extends _i30.PageRouteInfo<void> {
  const EarlyChildhood() : super(EarlyChildhood.name, path: '/early-childhood');

  static const String name = 'EarlyChildhood';
}

/// generated route for
/// [_i19.Childhood]
class Childhood extends _i30.PageRouteInfo<void> {
  const Childhood() : super(Childhood.name, path: '/Childhood');

  static const String name = 'Childhood';
}

/// generated route for
/// [_i20.Adolescence]
class Adolescence extends _i30.PageRouteInfo<void> {
  const Adolescence() : super(Adolescence.name, path: '/Adolescence');

  static const String name = 'Adolescence';
}

/// generated route for
/// [_i21.Majority]
class Majority extends _i30.PageRouteInfo<void> {
  const Majority() : super(Majority.name, path: '/Majority');

  static const String name = 'Majority';
}

/// generated route for
/// [_i22.CenterOfAge]
class CenterOfAge extends _i30.PageRouteInfo<void> {
  const CenterOfAge() : super(CenterOfAge.name, path: '/center-of-age');

  static const String name = 'CenterOfAge';
}

/// generated route for
/// [_i23.Aging]
class Aging extends _i30.PageRouteInfo<void> {
  const Aging() : super(Aging.name, path: '/Aging');

  static const String name = 'Aging';
}

/// generated route for
/// [_i24.EvaluatedOfYourSelfScreen]
class EvaluatedOfYourSelfScreen extends _i30.PageRouteInfo<void> {
  const EvaluatedOfYourSelfScreen()
      : super(EvaluatedOfYourSelfScreen.name,
            path: '/evaluated-of-your-self-screen');

  static const String name = 'EvaluatedOfYourSelfScreen';
}

/// generated route for
/// [_i25.TipsScreen]
class TipsScreen extends _i30.PageRouteInfo<void> {
  const TipsScreen() : super(TipsScreen.name, path: '/tips-screen');

  static const String name = 'TipsScreen';
}

/// generated route for
/// [_i26.ConsultationScreen]
class ConsultationScreen extends _i30.PageRouteInfo<void> {
  const ConsultationScreen()
      : super(ConsultationScreen.name, path: '/consultation-screen');

  static const String name = 'ConsultationScreen';
}

/// generated route for
/// [_i27.MessagingScreen]
class MessagingScreen extends _i30.PageRouteInfo<MessagingScreenArgs> {
  MessagingScreen({_i31.Key? key, required String counselorName})
      : super(MessagingScreen.name,
            path: '/messaging-screen',
            args: MessagingScreenArgs(key: key, counselorName: counselorName));

  static const String name = 'MessagingScreen';
}

class MessagingScreenArgs {
  const MessagingScreenArgs({this.key, required this.counselorName});

  final _i31.Key? key;

  final String counselorName;

  @override
  String toString() {
    return 'MessagingScreenArgs{key: $key, counselorName: $counselorName}';
  }
}

/// generated route for
/// [_i28.ReactionsScreen]
class ReactionsScreen extends _i30.PageRouteInfo<void> {
  const ReactionsScreen()
      : super(ReactionsScreen.name, path: '/reactions-screen');

  static const String name = 'ReactionsScreen';
}

/// generated route for
/// [_i29.CommentsScreen]
class CommentsScreen extends _i30.PageRouteInfo<CommentsScreenArgs> {
  CommentsScreen({_i31.Key? key})
      : super(CommentsScreen.name,
            path: '/comments-screen', args: CommentsScreenArgs(key: key));

  static const String name = 'CommentsScreen';
}

class CommentsScreenArgs {
  const CommentsScreenArgs({this.key});

  final _i31.Key? key;

  @override
  String toString() {
    return 'CommentsScreenArgs{key: $key}';
  }
}