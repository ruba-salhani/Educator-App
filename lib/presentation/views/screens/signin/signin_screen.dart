import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _formKey = GlobalKey<FormState>();

  String? _email;

  String? _password;
  bool _isobscore = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Text(
                        'Welcome',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 20.0),
                      CustomTextFormField(
                        action: TextInputAction.next,
                        keyType: TextInputType.emailAddress,
                        label: 'Email',
                        hint: 'Email Address',
                        obscure: false,
                        suffixicon: Icon(Icons.email_outlined),
                        vald: qValidator([
                          IsEmail(),
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
                        label: 'Password',
                        hint: 'Password',
                        vald: qValidator([
                          //IsNotEmpty('Rrquired'),
                          const IsRequired(),
                          const MinLength(8, 'Password is to short'),
                          const MaxLength(20),
                        ]),
                        onsaved: (val) => {
                          _password = val,
                        },
                        obscure: _isobscore,
                        suffixicon: IconButton(
                          icon: Icon(
                            _isobscore
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState:
                            (() {
                              _isobscore = !_isobscore;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forget Password?',
                          textAlign: TextAlign.start,
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
                        child: const Text(
                          'SIGN IN',
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        '-OR-',
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20.0),
                      CustomMaterialButton(
                        assetName: 'assets/images/google.jpg',
                        borderColor: Colors.grey,
                        color: Colors.white,
                        onpressed: () {},
                        text: 'Sign In with Google',
                        txtColor: Colors.black,
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        children: [
                          const Text(
                            'Dont have an account?',
                          ),
                          const SizedBox(height: 20.0),
                          TextButton(
                            onPressed: () {
                              // context.pushRoute(
                              //   SignupScreen(),
                              // );
                            },
                            child: const Text(
                              'SIGN UP',

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
    );
  }
}
