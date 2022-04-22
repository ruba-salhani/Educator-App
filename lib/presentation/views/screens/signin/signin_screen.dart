import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _formKey = GlobalKey<FormState>();

  String? _email;

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
            child: Center(
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
                          size: true, text: 'مرحبا',
                          //style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 20.0),
                        CustomTextFormField(
                          action: TextInputAction.next,
                          keyType: TextInputType.emailAddress,
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
                        const SizedBox(height: 20.0),
                        CustomTextFormField(
                          action: TextInputAction.done,
                          keyType: TextInputType.text,
                          label: 'كلمة المرور',
                          hint: 'كلمة المرور',
                          vald: qValidator([
                            //IsNotEmpty('Rrquired'),
                            const IsRequired(),
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
                        const SizedBox(height: 20.0),
                        TextButton(
                          onPressed: () {},
                          child: const CustomText(
                            size: false, text: 'هل نسيت كلمة المرور؟',
                            //textAlign: TextAlign.start,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {
                            if (FocusScope.of(context).hasFocus) {
                              FocusScope.of(context).unfocus();
                            }
                            _formKey.currentState!.save();
                            if (_formKey.currentState!.validate()) {
                              //context.read<AuthCubit>().login(_username!, _password!);

                              print(_password);
                              print(_email);
                              print(_formKey);
                            }
                          },
                          child: const CustomText(
                            size: false,
                            text: 'تسجيل الدخول',
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        const Center(
                          child: CustomText(
                            size: true, text: '-أو-',
                            //style: Theme.of(context).textTheme.titleLarge,
                            //textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        CustomMaterialButton(
                          assetName: 'assets/images/google.jpg',
                          borderColor: Colors.grey,
                          color: Colors.white,
                          onpressed: () {},
                          text: 'تسجيل باستخدام حساب غوغل',
                          txtColor: Colors.black,
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          children: [
                            const CustomText(
                              size: false,
                              text: 'ليس لديك حساب؟',
                            ),
                            const SizedBox(height: 20.0),
                            TextButton(
                              onPressed: () {
                                context.pushRoute(
                                  SignupScreen(),
                                );
                              },
                              child: const CustomText(
                                size: false, text: 'إنشاء حساب',

                                //textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
