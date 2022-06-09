import 'package:doctors_booking_app/constants/colors.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool Login;
  final void Function()? press;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.Login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          Login ? "Don't have an Account ?" : "Already have an Account ?",
          style: TextStyle(
            color: secondary,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            Login ? "Sign Up" : " Log In",
            style: TextStyle(
              color: secondary,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
