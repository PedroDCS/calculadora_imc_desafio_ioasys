import 'package:flutter/material.dart';

class Botao_whidget extends StatelessWidget {
  const Botao_whidget({
    Key? key,
    required this.textobotao,
    required this.corbotao,
    required this.onPressed,
  }) : super(key: key);
  final Function onPressed;
  final String textobotao;
  final Color corbotao;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      child: ElevatedButton(
          onPressed: () {
            onPressed();
          },
          child: Text(textobotao),
          style: ElevatedButton.styleFrom(
              primary: corbotao,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)))),
    );
  }
}
