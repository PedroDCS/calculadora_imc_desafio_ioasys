import '../../widgets/comun/botao_grande_circular.dart';
import '../../widgets/comun/text_field_circular_widget.dart';
import 'package:flutter/material.dart';
import '../../widgets/comun/text_field_circular_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.only(top: 50)),
                Image.asset('assets/images/ioasys.png'),
                const Padding(padding: EdgeInsets.only(top: 129)),
                Text(
                  "Seja Bem Vindo",
                  style: TextStyle(
                      fontSize: 31,
                      color: Theme.of(context).colorScheme.onPrimary),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Calculadora IMC",
                  style: TextStyle(
                      fontSize: 24,
                      color: Theme.of(context).colorScheme.onPrimary),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 43),
                    child: const TextField_circular_Widget(
                      hintText: 'usuario',
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const TextField_circular_Widget(
                      hintText: 'senha',
                      obscureText: true,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Botao_whidget(
                  textobotao: "Entrar",
                  corbotao: Theme.of(context).colorScheme.primaryVariant,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/calculadora");
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
