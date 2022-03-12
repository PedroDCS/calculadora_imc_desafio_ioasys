import '/widgets/comun/drawer_menu.dart';
import '/controllers/calculadora/calculadora_controll.dart';
import '/widgets/comun/botao_grande_circular.dart';
import '/widgets/comun/text_fild_widget.dart';

import 'package:flutter/material.dart';

class CalculadoraIMC extends StatefulWidget {
  const CalculadoraIMC({Key? key}) : super(key: key);

  @override
  _CalculadoraIMCState createState() => _CalculadoraIMCState();
}

class _CalculadoraIMCState extends State<CalculadoraIMC> {
  TextEditingController alturaController = TextEditingController();
  TextEditingController pesoController = TextEditingController();
  String textInfo = "Informe seus dados";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer_menu(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
                child: Image.asset('assets/images/logo_home.png'),
              ),
              const Text("Calculadora IMC")
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () {
                setState(() {
                  CalculadoraController()
                      .resetCampos(alturaController, pesoController, textInfo);
                });
              },
              child: Container(
                margin: const EdgeInsets.only(right: 15),
                child: const Icon(Icons.refresh),
              ),
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: Image.asset('assets/images/perfil.png'),
              ),
              const SizedBox(
                height: 47,
              ),
              TextFildCustom(
                pesoController: pesoController,
                hinttext: 'Peso (Kg)',
              ),
              TextFildCustom(
                pesoController: alturaController,
                hinttext: 'Altura (Cm)',
              ),
              Container(
                margin: const EdgeInsets.only(top: 33.5),
                child: Botao_whidget(
                    textobotao: "Calcular",
                    corbotao: Theme.of(context).primaryColor,
                    onPressed: () {
                      setState(() {
                        textInfo = CalculadoraController()
                            .calculaIMC(alturaController, pesoController);
                      });
                    }),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    textInfo,
                    style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColorDark),
                  ))
            ],
          ),
        ));
  }
}
