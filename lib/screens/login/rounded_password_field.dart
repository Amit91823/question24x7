import 'package:flutter/material.dart';
import 'package:questions24x7_auth_ui/screens/component/constant.dart';
import 'package:questions24x7_auth_ui/screens/login/text_field_contener.dart';

class Roundedpasswordfield extends StatelessWidget {
  final ValueChanged<String> onChangrd;
  const Roundedpasswordfield({
    Key? key,
    required this.onChangrd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      onChanged: onChangrd,
      obscureText: true,
      decoration: const InputDecoration(
        hintText: "Password",
        icon: Icon(
          Icons.lock,
          color: kPrimaryColor,
        ),
        suffixIcon: Icon(
          Icons.visibility,
          color: kPrimaryColor,
        ),
        border: InputBorder.none,
      ),
    ));
  }
}
