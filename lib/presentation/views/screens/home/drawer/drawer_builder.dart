import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:educator/presentation/views/screens/home/drawer/drawer_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerBuilder extends StatefulWidget {
  const DrawerBuilder({Key? key}) : super(key: key);

  @override
  State<DrawerBuilder> createState() => _DrawerBuilderState();
}

class _DrawerBuilderState extends State<DrawerBuilder> {
  final _formKey = GlobalKey<FormState>();
  String? _note;
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
                const SizedBox(
                  height: 30.0,
                ),
                const ProfileImage(),
                const SizedBox(
                  height: 30.0,
                ),
                DrawerItem(
                  icon: Icons.person,
                  text: 'ربا صالحاني',
                  ontap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Form(
                            key: _formKey,
                            child: FieldDialog(
                              icon: Icons.person,
                              label: 'الاسم',
                              hint: "ادخل الاسم الجديد",
                              vald: qValidator([
                                const IsRequired('مطلوب'),
                                const MinLength(4, 'الاسم قصير جدا'),
                                const MaxLength(20),
                              ]),
                              onsaved: (val) {
                                _note = val;
                                //print(_note);
                              },
                              firstButtonOnpressd: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  //context.popRoute();
                                  //context.read<AuthCubit>().signUp(_image, _username!, _password!, _type!);

                                  if (kDebugMode) {
                                    print(_note);
                                  }

                                  print(_formKey);
                                  context.popRoute();
                                }
                              },
                            ),
                          );
                        });
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                DrawerItem(
                  icon: Icons.email_outlined,
                  text: 'Ruba.salhani@gmail.com',
                  ontap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Form(
                            key: _formKey,
                            child: FieldDialog(
                              icon: Icons.email_outlined,
                              label: 'الحساب',
                              hint: "ادخل الحساب الجديد",
                              vald: qValidator([
                                const IsEmail('غير صالح'),
                                //MaxLength(50),
                              ]),
                              onsaved: (val) {
                                _note = val;
                                //print(_note);
                              },
                              firstButtonOnpressd: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  //context.popRoute();
                                  //context.read<AuthCubit>().signUp(_image, _username!, _password!, _type!);

                                  if (kDebugMode) {
                                    print(_note);
                                  }

                                  print(_formKey);
                                  context.popRoute();
                                }
                              },
                            ),
                          );
                        });
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                DrawerItem(
                  icon: Icons.language_outlined,
                  text: 'اللغة',
                  ontap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomDialog(
                          content: "اختر اللغة",
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
                  text: 'تواصل معنا',
                  ontap: () async {
                    final Uri _emailuri = Uri(
                        scheme: 'mailto',
                        path: 'ruba.salhani@gmail.com',
                        queryParameters: (<String, String>{
                          'subject': 'Educator_App'
                        }));

                    if (await canLaunch(_emailuri.toString())) {
                      await launch(_emailuri.toString());
                    } else {
                      throw 'could not launch $_emailuri.toString()';
                    }
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                DrawerItem(
                  icon: Icons.logout_outlined,
                  text: 'تسجيل الخروج',
                  ontap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomDialog(
                          //title: "Log out",
                          content: "هل أنت متأكد أنك تريد تسجيل الخروج؟",
                          firstButtonChild: "لا",
                          firstButtonOnpressd: () {
                            Navigator.of(context).pop();
                          },
                          secondButtonChild: "نعم",
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
