import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/views/components/components.dart';

import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  String? _email;

  String? _username;

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
                      'Sign Up',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 30.0),
                    CustomTextFormField(
                      keyType: TextInputType.name,
                      action: TextInputAction.next,
                      obscure: false,
                      suffixicon: Icon(Icons.person),
                      label: 'Name',
                      hint: 'Name',
                      vald: qValidator([
                        const IsRequired(),
                        const MinLength(4, 'Name is too short'),
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
                    const SizedBox(height: 30.0),
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
                          _isobscore ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState:
                          (() {
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
                      child: const Text(
                        'SIGN UP',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
