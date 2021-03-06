import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:educator/presentation/views/screens/behaviors/children_screen.dart';
import 'package:educator/presentation/views/screens/family_day/family_day_screen.dart';
import 'package:educator/presentation/views/screens/home/home_screen.dart';
import 'package:educator/presentation/views/screens/phone_usage_system/phone_usage_system_screen.dart';
import 'package:educator/presentation/views/screens/posts/posts_screen.dart';
import 'package:flutter/material.dart';

class CustomCurvedNavigationBar extends StatefulWidget {
  const CustomCurvedNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomCurvedNavigationBar> createState() =>
      _CustomCurvedNavigationBarState();
}

class _CustomCurvedNavigationBarState extends State<CustomCurvedNavigationBar> {
  int index = 2;

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final screens = [
    const PostsScreen(),
    const PhoneUsageSeystemScreen(),
    const HomeScreen(),
    const FamilyDayScreen(),
    ChildrenScreen(),
  ];
  final itemes = const <Widget>[
    Icon(Icons.description_outlined, size: 30),
    Icon(Icons.important_devices_outlined, size: 30),
    Icon(Icons.home_outlined, size: 30),
    Icon(Icons.family_restroom_outlined, size: 30),
    Icon(Icons.child_care_outlined, size: 30),
  ];
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Scaffold(
        body: screens[index],
        //data: Theme.of(context).copyWith(iconTheme: IconThemeData(color: Colors.white)),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          color: Colors.deepPurple,
          backgroundColor: Colors.transparent,
          items: itemes,
          height: 60,
          index: index,
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
        ),
      ),
    );
  }
}
