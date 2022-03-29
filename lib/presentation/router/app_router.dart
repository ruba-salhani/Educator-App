import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/views/components/custom_curved_navigation_bar.dart';
import 'package:educator/presentation/views/screens/behaviors/behaviors_screen.dart';
import 'package:educator/presentation/views/screens/family_day/family_day_screen.dart';
import 'package:educator/presentation/views/screens/home/home_screen.dart';
import 'package:educator/presentation/views/screens/phone_usage_system/phone_usage_system_screen.dart';
import 'package:educator/presentation/views/screens/posts/posts_screen.dart';
import 'package:educator/presentation/views/screens/signin/signin_screen.dart';
import 'package:educator/presentation/views/screens/signup/signup_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SigninScreen,
    ),
    AutoRoute(page: CustomCurvedNavigationBar, initial: true),
    AutoRoute(page: SignupScreen),
    AutoRoute(page: BehaviorsScreen),
    AutoRoute(page: FamilyDayScreen),
    AutoRoute(page: PhoneUsageSeystemScreen),
    AutoRoute(page: PostsScreen),
  ],
)
class $AppRouter {}
