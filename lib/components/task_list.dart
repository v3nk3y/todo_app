import 'package:flutter/material.dart';
import 'package:todo_app/components/task_tile.dart';
import 'package:todo_app/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Bread'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: tasks[index].isDone,
            taskTitle: tasks[index].name,
            checkBoxCallBack: (checkBoxCurrentState) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}

//ListView(
//children: <Widget>[
//TaskTile(isChecked: tasks[0].isDone, taskTitle: tasks[0].name),
//TaskTile(isChecked: tasks[1].isDone, taskTitle: tasks[1].name),
//TaskTile(isChecked: tasks[2].isDone, taskTitle: tasks[2].name),
//],
//);
