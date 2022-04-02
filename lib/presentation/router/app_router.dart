import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/views/screens/consultation/consultation_screen.dart';
import 'package:educator/presentation/views/screens/custom_curved_navigation_bar.dart';
import 'package:educator/presentation/views/screens/behaviors/behaviors_screen.dart';
import 'package:educator/presentation/views/screens/demands/adolescence.dart';
import 'package:educator/presentation/views/screens/demands/aging.dart';
import 'package:educator/presentation/views/screens/demands/center_of_age.dart';
import 'package:educator/presentation/views/screens/demands/childhood.dart';
import 'package:educator/presentation/views/screens/demands/demands_screen.dart';
import 'package:educator/presentation/views/screens/demands/early_childhood.dart';
import 'package:educator/presentation/views/screens/demands/majority.dart';
import 'package:educator/presentation/views/screens/evaluate_of_yourself/evaluated_of_yourself_screen.dart';
import 'package:educator/presentation/views/screens/evaluate_your_child/evaluate_your_child_screen.dart';
import 'package:educator/presentation/views/screens/family_day/family_day_screen.dart';
import 'package:educator/presentation/views/screens/home/home_screen.dart';
import 'package:educator/presentation/views/screens/phone_usage_system/phone_usage_system_screen.dart';
import 'package:educator/presentation/views/screens/posts/posts_screen.dart';
import 'package:educator/presentation/views/screens/responsibilities/ethics.dart';
import 'package:educator/presentation/views/screens/responsibilities/faith.dart';
import 'package:educator/presentation/views/screens/responsibilities/mental.dart';
import 'package:educator/presentation/views/screens/responsibilities/physical.dart';
import 'package:educator/presentation/views/screens/responsibilities/psychological.dart';
import 'package:educator/presentation/views/screens/responsibilities/responsibilities_screen.dart';
import 'package:educator/presentation/views/screens/responsibilities/sexual.dart';
import 'package:educator/presentation/views/screens/responsibilities/social.dart';
import 'package:educator/presentation/views/screens/signin/signin_screen.dart';
import 'package:educator/presentation/views/screens/signup/signup_screen.dart';
import 'package:educator/presentation/views/screens/tips_screen/tips_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SigninScreen),
    AutoRoute(page: CustomCurvedNavigationBar, initial: true),
    AutoRoute(page: SignupScreen),
    AutoRoute(page: BehaviorsScreen),
    AutoRoute(page: FamilyDayScreen),
    AutoRoute(page: PhoneUsageSeystemScreen),
    AutoRoute(page: PostsScreen),
    AutoRoute(page: DemandsScreen),
    AutoRoute(page: EvaluateYourChildScreen),
    AutoRoute(page: ResponsibilitiesScreen),
    AutoRoute(page: Faith),
    AutoRoute(page: Ethics),
    AutoRoute(page: Physical),
    AutoRoute(page: Mental),
    AutoRoute(page: Sexual),
    AutoRoute(page: Psychological),
    AutoRoute(page: Social),
    AutoRoute(page: EarlyChildhood),
    AutoRoute(page: Childhood),
    AutoRoute(page: Adolescence),
    AutoRoute(page: Majority),
    AutoRoute(page: CenterOfAge),
    AutoRoute(page: Aging),
    AutoRoute(page: EvaluatedOfYourSelfScreen),
    AutoRoute(page: TipsScreen),
    AutoRoute(page: ConsultationScreen),
  ],
)
class $AppRouter {}
