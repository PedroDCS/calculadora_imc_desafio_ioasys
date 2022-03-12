import '/widgets/comun/drawer_menu.dart';
import '/widgets/todo_list/input_add_widget.dart';
import '/widgets/todo_list/list_task_widget.dart';
import '/controllers/lista_tarefas/todo_controller.dart';
import 'package:flutter/material.dart';

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
              padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
              child: Image.asset('assets/images/logo_home.png'),
            ),
            Text("Lista de Tarefas")
          ],
        ),
      ),
      drawer: const Drawer_menu(),
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
