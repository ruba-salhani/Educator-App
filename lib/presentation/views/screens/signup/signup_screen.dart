import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/views/components/components.dart';

import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  String? _email;

  String? _username;

  String? _password;
  bool _isobscore = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Container(
              //margin: EdgeInsets.all(16.0),
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                        size: true, text: 'إنشاء حساب',
                        //style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 30.0),
                      CustomTextFormField(
                        keyType: TextInputType.name,
                        action: TextInputAction.next,
                        obscure: false,
                        suffixicon: const Icon(Icons.person),
                        label: 'الاسم',
                        hint: 'الاسم',
                        vald: qValidator([
                          const IsRequired('مطلوب'),
                          const MinLength(4, 'الاسم قصير جدا'),
                          const MaxLength(20),
                        ]),
                        onsaved: (val) => {
                          _username = val,
                        },
                      ),
                      const SizedBox(height: 30.0),
                      CustomTextFormField(
                        keyType: TextInputType.emailAddress,
                        action: TextInputAction.next,
                        label: 'البريد الإلكتروني',
                        hint: 'عنوان البريد الإلكتروني',
                        obscure: false,
                        suffixicon: const Icon(Icons.email_outlined),
                        vald: qValidator([
                          const IsEmail('غير صالح'),
                          //MaxLength(50),
                        ]),
                        onsaved: (val) => {
                          _email = val,
                        },
                      ),
                      const SizedBox(height: 30.0),
                      CustomTextFormField(
                        action: TextInputAction.done,
                        keyType: TextInputType.text,
                        label: 'كلمة المرور',
                        hint: 'كلمة المرور',
                        vald: qValidator([
                          //IsNotEmpty('Rrquired'),
                          const IsRequired('مطلوب'),
                          const MinLength(6, 'كلمة المرور قصيرة جدا'),
                          const MaxLength(20),
                        ]),
                        onsaved: (val) => {
                          _password = val,
                        },
                        obscure: _isobscore,
                        suffixicon: IconButton(
                          icon: Icon(
                            _isobscore
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _isobscore = !_isobscore;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 50.0),
                      ElevatedButton(
                        onPressed: () {
                          if (FocusScope.of(context).hasFocus) {
                            FocusScope.of(context).unfocus();
                          }
                          _formKey.currentState!.save();
                          if (_formKey.currentState!.validate()) {
                            context.popRoute();
                            //context.read<AuthCubit>().signUp(_image, _username!, _password!, _type!);
                            print(_username);
                            print(_password);
                            print(_email);
                            print(_formKey);
                          }
                        },
                        child: const CustomText(
                          size: false,
                          text: 'إنشاء حساب',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
