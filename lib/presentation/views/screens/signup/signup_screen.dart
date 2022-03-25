import 'package:educator/presentation/views/components/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController? nameController = TextEditingController();
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();

  String? n, e, p;
  var newUser;
  submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
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
                        label: 'Name',
                        hint: 'Name',
                        formController: nameController,
                        vald: qValidator([
                          IsRequired(),
                          MinLength(8, 'Name is to short'),
                          MaxLength(20),
                        ]),
                        onsaved: (val) => nameController!.text = val!,
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
                        onsaved: (val) => emailController!.text = val!,
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
                        onsaved: (val) => passwordController!.text = val!,
                        //obscure: true,
                      ),
                      const SizedBox(height: 50.0),
                      ElevatedButton(
                        onPressed: submit(),
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
}
