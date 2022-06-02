import 'package:flutter/material.dart';
import 'package:questions24x7_auth_ui/screens/component/constant.dart';

class AlreadyHaveAnAccountCheak extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheak({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ?" : "Already Have An Account ?",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press(),
          child: Text(login ? "SIGN UP" : "SIGN UP",
              style: const TextStyle(
                  color: kPrimaryColor, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
