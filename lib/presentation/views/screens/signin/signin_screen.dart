import 'package:educator/presentation/views/components/custom_text_form_field.dart';
import 'package:educator/presentation/views/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
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
                        const SizedBox(height: 30.0),
                        CustomTextFormField(
                          keyType: TextInputType.emailAddress,
                          label: 'Email',
                          hint: 'Email Address',
                          formController: emailController,
                          vald: qValidator([
                            IsEmail(),
                            //MaxLength(50),
                          ]),
                          onsaved: (val) => {
                            emailController!.text = val!,
                          },
                        ),
                        const SizedBox(height: 30.0),
                        CustomTextFormField(
                          keyType: TextInputType.text,
                          label: 'Password',
                          hint: 'Password',
                          formController: passwordController,
                          vald: qValidator([
                            //IsNotEmpty('Rrquired'),
                            IsRequired(),
                            MinLength(8, 'Password is to short'),
                            MaxLength(20),
                          ]),
                          onsaved: (val) => {
                            passwordController!.text = val!,
                          },
                        ),
                        const SizedBox(height: 30.0),
                        const Text(
                          'Forget Password?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            //decoration: hide1 ?? nullو
                            //fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        const SizedBox(height: 30.0),
                        ElevatedButton(
                          onPressed: submit(),
                          child: const Text(
                            'SIGN IN',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                '-OR-',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                  );
                },
                child: const Text(
                  'SIGN UP',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
