// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool ischeked;
  final String taskTitle;
  final void Function(bool?) checkboxChange;
  final void Function() ListTItleDelete;
  TaskTile(
      {required this.ischeked,
      required this.taskTitle,
      required this.checkboxChange,
      required this.ListTItleDelete});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: ischeked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: ischeked,
        onChanged: checkboxChange,
      ),
      onLongPress: ListTItleDelete,
    );
  }
}
