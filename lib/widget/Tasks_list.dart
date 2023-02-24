// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:firstapp/widget/task_title.dart';
import 'package:firstapp/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            ischeked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxChange: (newValue) {
              setState(() {
                widget.tasks[index].donechange();
              });
            },
          );
        });
    // return ListView(
    //   children: [
    //     TaskTile(
    //       taskTitle: tasks[0].name,
    //       ischeked: tasks[0].isDone,
    //     ),
    //     TaskTile(
    //       taskTitle: tasks[1].name,
    //       ischeked: tasks[1].isDone,
    //     ),
    //   ],
    // );
  }
}
