class CalculadoraController {
  String calculaIMC(alturaController, pesoController) {
    double altura = double.parse(alturaController.text) / 100;
    double peso = double.parse(pesoController.text);

    double imc = peso / (altura * altura);

    if (imc <= 18.6) {
      return "Abaixo do peso, IMC: ${imc.toStringAsPrecision(2)}";
    } else if (imc > 18.6 && imc <= 24.9) {
      return "Peso ideal, IMC: ${imc.toStringAsPrecision(2)}";
    } else if (imc > 24.9 && imc <= 29.9) {
      return "Levemente acima do peso, IMC: ${imc.toStringAsPrecision(2)}";
    } else if (imc > 29.9 && imc <= 34.9) {
      return "Obesidade grau I, IMC: ${imc.toStringAsPrecision(2)}";
    } else if (imc > 34.9 && imc <= 39.9) {
      return "Obesidade grau II, IMC: ${imc.toStringAsPrecision(2)}";
    } else {
      return "Obesidade grau III, IMC: ${imc.toStringAsPrecision(2)}";
    }
  }

  void resetCampos(alturaController, pesoController, textInfo) {
    alturaController.clear();
    pesoController.clear();
    textInfo = "Informe seus dados";
  }
}
