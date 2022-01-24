import 'package:flutter/material.dart';
import '../models/todoTaskModel.dart';

class ToDoControler {
  List<TaskModel> listToDo = [];
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
