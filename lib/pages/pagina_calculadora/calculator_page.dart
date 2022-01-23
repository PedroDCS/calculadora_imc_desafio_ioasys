import 'package:calculadora_imc_aula3/pages/pagina_calculadora/controller/calculadora_controll.dart';
import 'package:calculadora_imc_aula3/widgets/botao.dart';
import 'package:flutter/material.dart';

import 'widgets/text_fild_widget.dart';

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
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: Image.asset('assets/images/logo_home.png'),
          title: const Text("Calculadora IMC"),
          actions: [
            GestureDetector(
              onTap: () {
                setState(() {
                  CalculadoraController()
                      .resetCampos(alturaController, pesoController, textInfo);
                });
              },
              child: Container(
                margin: EdgeInsets.only(right: 15),
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
              textfildcostum(
                pesoController: pesoController,
                hinttext: 'Peso (Kg)',
              ),
              textfildcostum(
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
                  padding: EdgeInsets.only(top: 10),
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
