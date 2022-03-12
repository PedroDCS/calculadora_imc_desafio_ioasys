import 'package:flutter/material.dart';

class TextFildCustom extends StatelessWidget {
  TextFildCustom({
    Key? key,
    required this.pesoController,
    required this.hinttext,
  }) : super(key: key);

  String hinttext = '';
  final TextEditingController pesoController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      child: TextField(
        controller: pesoController,
        decoration: InputDecoration(hintText: hinttext),
      ),
    );
  }
}
