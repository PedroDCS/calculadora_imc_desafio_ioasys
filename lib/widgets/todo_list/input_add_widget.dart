import 'package:flutter/material.dart';

class InputAddWidget extends StatelessWidget {
  const InputAddWidget({
    Key? key,
    required this.textControler,
    required this.onpress,
    required this.labeltext,
    required this.textbutton,
  }) : super(key: key);

  final TextEditingController textControler;
  final Function() onpress;
  final String labeltext;
  final String textbutton;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
          controller: textControler,
          decoration: InputDecoration(labelText: labeltext),
        )),
        TextButton(onPressed: onpress, child: Text(textbutton))
      ],
    );
  }
}
