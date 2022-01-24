import 'package:calculadora_imc_aula3/pages/pagina_calculadora/calculator_page.dart';
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
    return MaterialApp(
      title: 'Calculadora IMC',
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Poppins",
          primaryColor: const Color(0xFFC1007E),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xFFC1007E),
            secondary: const Color(0xFF9E9E9E),
          ),
          toggleableActiveColor: const Color(0xFFC1007E),
          iconTheme: const IconThemeData(color: Color(0xFFC1007E)),
          listTileTheme: const ListTileThemeData(iconColor: Color(0xFFC1007E)),
          primaryColorLight: Colors.white,
          buttonColor: Colors.black,
          primaryColorDark: Colors.black,
          hintColor: const Color(0xFF767676)),
      initialRoute: "/",
      routes: {
        '/': (context) => const LoginPage(),
        '/calculadora': (context) => const CalculadoraIMC(),
        '/listatarefas': (context) => const ListaTarefas()
      },
    );
  }
}
