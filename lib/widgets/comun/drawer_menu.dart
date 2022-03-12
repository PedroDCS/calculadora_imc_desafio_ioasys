import 'package:flutter/material.dart';

class Drawer_menu extends StatelessWidget {
  const Drawer_menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 203,
            child: DrawerHeader(
              padding: const EdgeInsets.fromLTRB(13, 24, 0, 0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).colorScheme.secondaryVariant,
                      Theme.of(context).primaryColor
                    ]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Image.asset("assets/images/perfil.png"),
                  ),
                  Text(
                    'Usuario',
                    style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Inicio"),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/home");
              }),
          ListTile(
              leading: const Icon(Icons.accessibility_new),
              title: const Text("Calculadora de IMC"),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/calculadora");
              }),
          ListTile(
              leading: const Icon(Icons.playlist_add_check),
              title: const Text("Lista de Tarefas"),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/listatarefas");
              }),
          ListTile(
              leading: const Icon(Icons.attach_money),
              title: const Text("Conversor de Moedas"),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/conversor");
              }),
        ],
      ),
    );
  }
}
