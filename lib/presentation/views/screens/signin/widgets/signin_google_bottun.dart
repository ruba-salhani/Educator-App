import 'package:flutter/material.dart';

class SigninWithGoogleButton extends StatelessWidget {
  const SigninWithGoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 25,
            width: 25,
            child: Image.asset('images/google.jpg'),
          ),
          const Text('Sign In with Google'),
          Opacity(
            opacity: 0.0,
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('images/google.jpg'),
            ),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
