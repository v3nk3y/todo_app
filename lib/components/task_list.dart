import 'package:flutter/material.dart';
import 'package:todo_app/components/task_tile.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
            taskTitle: Provider.of<TaskData>(context).tasks[index].name,
            checkBoxCallBack: (checkBoxCurrentState) {
//              setState(() {
//                Provider.of<TaskData>(context).tasks[index].toggleDone();
//              });
            });
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
