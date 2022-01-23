import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    required this.hintText,
    this.obscureText = false,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Theme.of(context).hintColor),
            filled: true,
            fillColor: Theme.of(context).primaryColorLight,
            contentPadding: const EdgeInsets.fromLTRB(30, 20, 20, 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide:
                  BorderSide(color: Theme.of(context).primaryColorLight),
            )),
      ),
    );
  }
}
