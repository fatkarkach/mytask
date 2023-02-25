// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:firstapp/widget/task_title.dart';
import 'package:provider/provider.dart';
import 'package:firstapp/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.tasks.length,
            itemBuilder: (context, index) {
              return TaskTile(
                ischeked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name,
                checkboxChange: (newValue) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                ListTItleDelete: () {
                  taskData.deleteTask(taskData.tasks[index]);
                },
              );
            });
      },
    );
  }
}
