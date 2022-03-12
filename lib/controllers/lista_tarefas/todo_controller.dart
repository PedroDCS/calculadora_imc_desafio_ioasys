import '/models/todoTaskModel.dart';
import 'package:flutter/material.dart';

class ToDoControler {
  List<TaskModel> listToDo = [
    TaskModel(desc: 'textControler.text1'),
    TaskModel(desc: 'textControler.text2'),
    TaskModel(desc: 'textControler.text3'),
    TaskModel(desc: 'textControler.text4'),
    TaskModel(desc: 'textControler.text5'),
    TaskModel(desc: 'textControler.text6'),
  ];
  TextEditingController textControler = TextEditingController();

  void addTodo() {
    if (textControler.text.isNotEmpty) {
      var newTask = TaskModel(desc: textControler.text);
      listToDo.add(newTask);
      textControler.clear();
    }
  }

  void updateStatusTask(int index, bool? value) {
    listToDo[index].completed = value ?? false;
  }

  void onRemovedTaskFromList(int index) {
    listToDo.removeAt(index);
  }
}
