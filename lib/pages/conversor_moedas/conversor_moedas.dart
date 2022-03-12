import '/widgets/comun/drawer_menu.dart';
import 'package:flutter/material.dart';

class ConversorDeMoedas extends StatefulWidget {
  const ConversorDeMoedas({Key? key}) : super(key: key);

  @override
  _ConversorDeMoedasState createState() => _ConversorDeMoedasState();
}

class _ConversorDeMoedasState extends State<ConversorDeMoedas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer_menu(),
    );
  }
}
