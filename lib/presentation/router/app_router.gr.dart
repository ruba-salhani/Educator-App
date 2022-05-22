// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i34;
import 'package:flutter/material.dart' as _i35;

import '../views/screens/behaviors/behavior_description.dart' as _i33;
import '../views/screens/behaviors/behaviors_screen.dart' as _i4;
import '../views/screens/behaviors/children_screen.dart' as _i31;
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
import '../views/screens/family_day/family_day_description.dart' as _i32;
import '../views/screens/family_day/family_day_screen.dart' as _i5;
import '../views/screens/phone_usage_system/phone_usage_system_screen.dart'
    as _i6;
import '../views/screens/phone_usage_system/recommendations_screen.dart'
    as _i30;
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

class AppRouter extends _i34.RootStackRouter {
  AppRouter([_i35.GlobalKey<_i35.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i34.PageFactory> pagesMap = {
    SigninScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SigninScreen());
    },
    CustomCurvedNavigationBar.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.CustomCurvedNavigationBar());
    },
    SignupScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignupScreen());
    },
    BehaviorsScreen.name: (routeData) {
      final args = routeData.argsAs<BehaviorsScreenArgs>();
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.BehaviorsScreen(key: args.key, childName: args.childName));
    },
    FamilyDayScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.FamilyDayScreen());
    },
    PhoneUsageSeystemScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PhoneUsageSeystemScreen());
    },
    PostsScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PostsScreen());
    },
    DemandsScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.DemandsScreen());
    },
    EvaluateYourChildScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.EvaluateYourChildScreen());
    },
    ResponsibilitiesScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ResponsibilitiesScreen());
    },
    Faith.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.Faith());
    },
    Ethics.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.Ethics());
    },
    Physical.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.Physical());
    },
    Mental.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.Mental());
    },
    Sexual.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.Sexual());
    },
    Psychological.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.Psychological());
    },
    Social.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.Social());
    },
    EarlyChildhood.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i18.EarlyChildhood());
    },
    Childhood.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.Childhood());
    },
    Adolescence.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.Adolescence());
    },
    Majority.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.Majority());
    },
    CenterOfAge.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.CenterOfAge());
    },
    Aging.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.Aging());
    },
    EvaluatedOfYourSelfScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.EvaluatedOfYourSelfScreen());
    },
    TipsScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.TipsScreen());
    },
    ConsultationScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.ConsultationScreen());
    },
    MessagingScreen.name: (routeData) {
      final args = routeData.argsAs<MessagingScreenArgs>();
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i27.MessagingScreen(
              key: args.key, counselorName: args.counselorName));
    },
    ReactionsScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.ReactionsScreen());
    },
    CommentsScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i29.CommentsScreen());
    },
    RecommendationsScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i30.RecommendationsScreen());
    },
    ChildrenScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i31.ChildrenScreen());
    },
    FamilyDayDescription.name: (routeData) {
      final args = routeData.argsAs<FamilyDayDescriptionArgs>(
          orElse: () => const FamilyDayDescriptionArgs());
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i32.FamilyDayDescription(key: args.key));
    },
    BehaviorDescription.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i33.BehaviorDescription());
    }
  };

  @override
  List<_i34.RouteConfig> get routes => [
        _i34.RouteConfig(SigninScreen.name, path: '/'),
        _i34.RouteConfig(CustomCurvedNavigationBar.name,
            path: '/custom-curved-navigation-bar'),
        _i34.RouteConfig(SignupScreen.name, path: '/signup-screen'),
        _i34.RouteConfig(BehaviorsScreen.name, path: '/behaviors-screen'),
        _i34.RouteConfig(FamilyDayScreen.name, path: '/family-day-screen'),
        _i34.RouteConfig(PhoneUsageSeystemScreen.name,
            path: '/phone-usage-seystem-screen'),
        _i34.RouteConfig(PostsScreen.name, path: '/posts-screen'),
        _i34.RouteConfig(DemandsScreen.name, path: '/demands-screen'),
        _i34.RouteConfig(EvaluateYourChildScreen.name,
            path: '/evaluate-your-child-screen'),
        _i34.RouteConfig(ResponsibilitiesScreen.name,
            path: '/responsibilities-screen'),
        _i34.RouteConfig(Faith.name, path: '/Faith'),
        _i34.RouteConfig(Ethics.name, path: '/Ethics'),
        _i34.RouteConfig(Physical.name, path: '/Physical'),
        _i34.RouteConfig(Mental.name, path: '/Mental'),
        _i34.RouteConfig(Sexual.name, path: '/Sexual'),
        _i34.RouteConfig(Psychological.name, path: '/Psychological'),
        _i34.RouteConfig(Social.name, path: '/Social'),
        _i34.RouteConfig(EarlyChildhood.name, path: '/early-childhood'),
        _i34.RouteConfig(Childhood.name, path: '/Childhood'),
        _i34.RouteConfig(Adolescence.name, path: '/Adolescence'),
        _i34.RouteConfig(Majority.name, path: '/Majority'),
        _i34.RouteConfig(CenterOfAge.name, path: '/center-of-age'),
        _i34.RouteConfig(Aging.name, path: '/Aging'),
        _i34.RouteConfig(EvaluatedOfYourSelfScreen.name,
            path: '/evaluated-of-your-self-screen'),
        _i34.RouteConfig(TipsScreen.name, path: '/tips-screen'),
        _i34.RouteConfig(ConsultationScreen.name, path: '/consultation-screen'),
        _i34.RouteConfig(MessagingScreen.name, path: '/messaging-screen'),
        _i34.RouteConfig(ReactionsScreen.name, path: '/reactions-screen'),
        _i34.RouteConfig(CommentsScreen.name, path: '/comments-screen'),
        _i34.RouteConfig(RecommendationsScreen.name,
            path: '/recommendations-screen'),
        _i34.RouteConfig(ChildrenScreen.name, path: '/children-screen'),
        _i34.RouteConfig(FamilyDayDescription.name,
            path: '/family-day-description'),
        _i34.RouteConfig(BehaviorDescription.name,
            path: '/behavior-description')
      ];
}

/// generated route for
/// [_i1.SigninScreen]
class SigninScreen extends _i34.PageRouteInfo<void> {
  const SigninScreen() : super(SigninScreen.name, path: '/');

  static const String name = 'SigninScreen';
}

/// generated route for
/// [_i2.CustomCurvedNavigationBar]
class CustomCurvedNavigationBar extends _i34.PageRouteInfo<void> {
  const CustomCurvedNavigationBar()
      : super(CustomCurvedNavigationBar.name,
            path: '/custom-curved-navigation-bar');

  static const String name = 'CustomCurvedNavigationBar';
}

/// generated route for
/// [_i3.SignupScreen]
class SignupScreen extends _i34.PageRouteInfo<void> {
  const SignupScreen() : super(SignupScreen.name, path: '/signup-screen');

  static const String name = 'SignupScreen';
}

/// generated route for
/// [_i4.BehaviorsScreen]
class BehaviorsScreen extends _i34.PageRouteInfo<BehaviorsScreenArgs> {
  BehaviorsScreen({_i35.Key? key, required String childName})
      : super(BehaviorsScreen.name,
            path: '/behaviors-screen',
            args: BehaviorsScreenArgs(key: key, childName: childName));

  static const String name = 'BehaviorsScreen';
}

class BehaviorsScreenArgs {
  const BehaviorsScreenArgs({this.key, required this.childName});

  final _i35.Key? key;

  final String childName;

  @override
  String toString() {
    return 'BehaviorsScreenArgs{key: $key, childName: $childName}';
  }
}

/// generated route for
/// [_i5.FamilyDayScreen]
class FamilyDayScreen extends _i34.PageRouteInfo<void> {
  const FamilyDayScreen()
      : super(FamilyDayScreen.name, path: '/family-day-screen');

  static const String name = 'FamilyDayScreen';
}

/// generated route for
/// [_i6.PhoneUsageSeystemScreen]
class PhoneUsageSeystemScreen extends _i34.PageRouteInfo<void> {
  const PhoneUsageSeystemScreen()
      : super(PhoneUsageSeystemScreen.name,
            path: '/phone-usage-seystem-screen');

  static const String name = 'PhoneUsageSeystemScreen';
}

/// generated route for
/// [_i7.PostsScreen]
class PostsScreen extends _i34.PageRouteInfo<void> {
  const PostsScreen() : super(PostsScreen.name, path: '/posts-screen');

  static const String name = 'PostsScreen';
}

/// generated route for
/// [_i8.DemandsScreen]
class DemandsScreen extends _i34.PageRouteInfo<void> {
  const DemandsScreen() : super(DemandsScreen.name, path: '/demands-screen');

  static const String name = 'DemandsScreen';
}

/// generated route for
/// [_i9.EvaluateYourChildScreen]
class EvaluateYourChildScreen extends _i34.PageRouteInfo<void> {
  const EvaluateYourChildScreen()
      : super(EvaluateYourChildScreen.name,
            path: '/evaluate-your-child-screen');

  static const String name = 'EvaluateYourChildScreen';
}

/// generated route for
/// [_i10.ResponsibilitiesScreen]
class ResponsibilitiesScreen extends _i34.PageRouteInfo<void> {
  const ResponsibilitiesScreen()
      : super(ResponsibilitiesScreen.name, path: '/responsibilities-screen');

  static const String name = 'ResponsibilitiesScreen';
}

/// generated route for
/// [_i11.Faith]
class Faith extends _i34.PageRouteInfo<void> {
  const Faith() : super(Faith.name, path: '/Faith');

  static const String name = 'Faith';
}

/// generated route for
/// [_i12.Ethics]
class Ethics extends _i34.PageRouteInfo<void> {
  const Ethics() : super(Ethics.name, path: '/Ethics');

  static const String name = 'Ethics';
}

/// generated route for
/// [_i13.Physical]
class Physical extends _i34.PageRouteInfo<void> {
  const Physical() : super(Physical.name, path: '/Physical');

  static const String name = 'Physical';
}

/// generated route for
/// [_i14.Mental]
class Mental extends _i34.PageRouteInfo<void> {
  const Mental() : super(Mental.name, path: '/Mental');

  static const String name = 'Mental';
}

/// generated route for
/// [_i15.Sexual]
class Sexual extends _i34.PageRouteInfo<void> {
  const Sexual() : super(Sexual.name, path: '/Sexual');

  static const String name = 'Sexual';
}

/// generated route for
/// [_i16.Psychological]
class Psychological extends _i34.PageRouteInfo<void> {
  const Psychological() : super(Psychological.name, path: '/Psychological');

  static const String name = 'Psychological';
}

/// generated route for
/// [_i17.Social]
class Social extends _i34.PageRouteInfo<void> {
  const Social() : super(Social.name, path: '/Social');

  static const String name = 'Social';
}

/// generated route for
/// [_i18.EarlyChildhood]
class EarlyChildhood extends _i34.PageRouteInfo<void> {
  const EarlyChildhood() : super(EarlyChildhood.name, path: '/early-childhood');

  static const String name = 'EarlyChildhood';
}

/// generated route for
/// [_i19.Childhood]
class Childhood extends _i34.PageRouteInfo<void> {
  const Childhood() : super(Childhood.name, path: '/Childhood');

  static const String name = 'Childhood';
}

/// generated route for
/// [_i20.Adolescence]
class Adolescence extends _i34.PageRouteInfo<void> {
  const Adolescence() : super(Adolescence.name, path: '/Adolescence');

  static const String name = 'Adolescence';
}

/// generated route for
/// [_i21.Majority]
class Majority extends _i34.PageRouteInfo<void> {
  const Majority() : super(Majority.name, path: '/Majority');

  static const String name = 'Majority';
}

/// generated route for
/// [_i22.CenterOfAge]
class CenterOfAge extends _i34.PageRouteInfo<void> {
  const CenterOfAge() : super(CenterOfAge.name, path: '/center-of-age');

  static const String name = 'CenterOfAge';
}

/// generated route for
/// [_i23.Aging]
class Aging extends _i34.PageRouteInfo<void> {
  const Aging() : super(Aging.name, path: '/Aging');

  static const String name = 'Aging';
}

/// generated route for
/// [_i24.EvaluatedOfYourSelfScreen]
class EvaluatedOfYourSelfScreen extends _i34.PageRouteInfo<void> {
  const EvaluatedOfYourSelfScreen()
      : super(EvaluatedOfYourSelfScreen.name,
            path: '/evaluated-of-your-self-screen');

  static const String name = 'EvaluatedOfYourSelfScreen';
}

/// generated route for
/// [_i25.TipsScreen]
class TipsScreen extends _i34.PageRouteInfo<void> {
  const TipsScreen() : super(TipsScreen.name, path: '/tips-screen');

  static const String name = 'TipsScreen';
}

/// generated route for
/// [_i26.ConsultationScreen]
class ConsultationScreen extends _i34.PageRouteInfo<void> {
  const ConsultationScreen()
      : super(ConsultationScreen.name, path: '/consultation-screen');

  static const String name = 'ConsultationScreen';
}

/// generated route for
/// [_i27.MessagingScreen]
class MessagingScreen extends _i34.PageRouteInfo<MessagingScreenArgs> {
  MessagingScreen({_i35.Key? key, required String counselorName})
      : super(MessagingScreen.name,
            path: '/messaging-screen',
            args: MessagingScreenArgs(key: key, counselorName: counselorName));

  static const String name = 'MessagingScreen';
}

class MessagingScreenArgs {
  const MessagingScreenArgs({this.key, required this.counselorName});

  final _i35.Key? key;

  final String counselorName;

  @override
  String toString() {
    return 'MessagingScreenArgs{key: $key, counselorName: $counselorName}';
  }
}

/// generated route for
/// [_i28.ReactionsScreen]
class ReactionsScreen extends _i34.PageRouteInfo<void> {
  const ReactionsScreen()
      : super(ReactionsScreen.name, path: '/reactions-screen');

  static const String name = 'ReactionsScreen';
}

/// generated route for
/// [_i29.CommentsScreen]
class CommentsScreen extends _i34.PageRouteInfo<void> {
  const CommentsScreen() : super(CommentsScreen.name, path: '/comments-screen');

  static const String name = 'CommentsScreen';
}

/// generated route for
/// [_i30.RecommendationsScreen]
class RecommendationsScreen extends _i34.PageRouteInfo<void> {
  const RecommendationsScreen()
      : super(RecommendationsScreen.name, path: '/recommendations-screen');

  static const String name = 'RecommendationsScreen';
}

/// generated route for
/// [_i31.ChildrenScreen]
class ChildrenScreen extends _i34.PageRouteInfo<void> {
  const ChildrenScreen() : super(ChildrenScreen.name, path: '/children-screen');

  static const String name = 'ChildrenScreen';
}

/// generated route for
/// [_i32.FamilyDayDescription]
class FamilyDayDescription
    extends _i34.PageRouteInfo<FamilyDayDescriptionArgs> {
  FamilyDayDescription({_i35.Key? key})
      : super(FamilyDayDescription.name,
            path: '/family-day-description',
            args: FamilyDayDescriptionArgs(key: key));

  static const String name = 'FamilyDayDescription';
}

class FamilyDayDescriptionArgs {
  const FamilyDayDescriptionArgs({this.key});

  final _i35.Key? key;

  @override
  String toString() {
    return 'FamilyDayDescriptionArgs{key: $key}';
  }
}

/// generated route for
/// [_i33.BehaviorDescription]
class BehaviorDescription extends _i34.PageRouteInfo<void> {
  const BehaviorDescription()
      : super(BehaviorDescription.name, path: '/behavior-description');

  static const String name = 'BehaviorDescription';
}
