import 'package:flutter/material.dart';

import 'task_item_widget.dart';

class ListTaskWidget extends StatelessWidget {
  final List listToDo;
  final Function(bool?, int) onchanged;
  final Function(int) onremoved;

  const ListTaskWidget(
      {Key? key,
      required this.listToDo,
      required this.onchanged,
      required this.onremoved})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listToDo.length,
        itemBuilder: (_, index) {
          var task = listToDo[index];
          return TaskItemWidget(
            title: task.desc,
            completed: task.completed,
            onChanged: (v) => onchanged(v, index),
            onDismiss: (direction) => onremoved(index),
          );
        });
  }
}
