import 'package:calculadora_imc_aula3/pages/pagina_lista_tarefas/widgets/list_task_widget.dart';
import 'package:flutter/material.dart';

import 'controller/todo_controller.dart';
import 'widgets/input_add_widget.dart';

class ListaTarefas extends StatefulWidget {
  const ListaTarefas({Key? key}) : super(key: key);

  @override
  _ListaTarefasState createState() => _ListaTarefasState();
}

class _ListaTarefasState extends State<ListaTarefas> {
  var controller = ToDoControler();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Image.asset('assets/images/logo_home.png'),
            ),
            Text("Lista de Tarefas")
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(34, 24, 34, 45),
            child: InputAddWidget(
              textControler: controller.textControler,
              onpress: () {
                setState(() {
                  controller.addTodo();
                });
              },
              labeltext: 'Nova tarefa',
              textbutton: 'ADD',
            ),
          ),
          Expanded(
              child: ListTaskWidget(
            listToDo: controller.listToDo,
            onchanged: (value, index) => setState(() {
              controller.updateStatusTask(index, value);
            }),
            onremoved: (index) {
              setState(() {
                controller.onRemovedTaskFromList(index);
              });
            },
          ))
        ],
      ),
    );
  }
}
