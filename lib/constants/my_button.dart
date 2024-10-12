import 'package:flutter/material.dart';
import 'package:grocery_app/screens/loging_registration/login_page.dart';

class MyButton extends StatelessWidget {
  final Function()? onPress;
  final String text;

  MyButton({required this.onPress, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPress?.call();
      },
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      style: ButtonStyle(
          // shape:MaterialStateProperty.all(O),
          backgroundColor: MaterialStateProperty.all(Colors.black),
          fixedSize: MaterialStateProperty.all(Size(358, 65))),
    );
  }
}
