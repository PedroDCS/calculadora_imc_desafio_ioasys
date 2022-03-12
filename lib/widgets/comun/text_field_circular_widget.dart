import 'package:flutter/material.dart';

class TextField_circular_Widget extends StatelessWidget {
  const TextField_circular_Widget({
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
            fillColor: Theme.of(context).colorScheme.onPrimary,
            contentPadding: const EdgeInsets.fromLTRB(30, 20, 20, 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.onPrimary),
            )),
      ),
    );
  }
}
