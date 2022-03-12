import 'package:calculadora_imc_aula3/pages/conversor_moedas/conversor_moedas.dart';
import 'package:calculadora_imc_aula3/pages/home_page.dart';
import 'package:calculadora_imc_aula3/pages/pagina_calculadora/calculadoraIMC.dart';
import 'package:calculadora_imc_aula3/pages/pagina_lista_tarefas/lista_tarefas.dart';
import 'package:calculadora_imc_aula3/pages/pagina_login/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
        fontFamily: "Poppins",
        primaryColor: const Color(0xFFC1007E),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFC1007E),
          secondary: const Color(0xFF9E9E9E),
          background: const Color(0xFFFFFFFF),
          onBackground: const Color(0xFF000000),
          onPrimary: const Color(0xFFFFFFFF),
          primaryVariant: const Color(0xFFB80078),
          secondaryVariant: const Color(0xFFCC00FF),
        ),
        iconTheme: const IconThemeData(color: Color(0xFFC1007E)),
        listTileTheme: const ListTileThemeData(iconColor: Color(0xFFC1007E)),
        primaryColorLight: Colors.amber,
        primaryColorDark: Colors.black,
        hintColor: const Color(0xFF767676));

    return MaterialApp(
      title: 'Calculadora IMC',
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: themeData,
      initialRoute: "/",
      routes: {
        '/': (context) => const LoginPage(),
        '/calculadora': (context) => const CalculadoraIMC(),
        '/conversor': (context) => const ConversorDeMoedas(),
        '/listatarefas': (context) => const ListaTarefas(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
