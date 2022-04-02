import 'package:educator/presentation/views/screens/home/drawer/custom_dialog.dart';
import 'package:educator/presentation/views/screens/home/drawer/drawer_item.dart';
import 'package:educator/presentation/views/screens/home/drawer/profile_image.dart';
import 'package:flutter/material.dart';

class DrawerBuilder extends StatefulWidget {
  const DrawerBuilder({Key? key}) : super(key: key);

  @override
  State<DrawerBuilder> createState() => _DrawerBuilderState();
}

class _DrawerBuilderState extends State<DrawerBuilder> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //backgroundColor: const Color(0xff0D1724),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ProfileImage(),
                const SizedBox(
                  height: 20.0,
                ),
                const Divider(
                    //color: Color(0xff514BC3),
                    ),
                const SizedBox(
                  height: 20.0,
                ),
                DrawerItem(
                  icon: Icons.person,
                  text: 'Ruba Salhani',
                  ontap: () {},
                ),
                const SizedBox(
                  height: 20.0,
                ),
                DrawerItem(
                  icon: Icons.email_outlined,
                  text: 'Ruba.salhani@gmail.com',
                  ontap: () {},
                ),
                const SizedBox(
                  height: 20.0,
                ),
                DrawerItem(
                  icon: Icons.language_outlined,
                  text: 'Language',
                  ontap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomDialog(
                          title: "Language",
                          content: "Choose the language",
                          firstButtonChild: "العربية",
                          firstButtonOnpressd: () {},
                          secondButtonChild: "English",
                          secondButtonOnpressd: () {},
                        );
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                DrawerItem(
                  icon: Icons.phone_enabled_outlined,
                  text: 'Contact Us',
                  ontap: () {
                    //context.pushRoute(const NotificationsScreen());
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                DrawerItem(
                  icon: Icons.logout_outlined,
                  text: 'Log Out',
                  ontap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomDialog(
                          title: "Log out",
                          content: "Are you sure you wany to log out?",
                          firstButtonChild: "Cancel",
                          firstButtonOnpressd: () {
                            Navigator.of(context).pop();
                          },
                          secondButtonChild: "Log out",
                          secondButtonOnpressd: () {},
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
