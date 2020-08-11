import 'package:flutter/material.dart';
import 'package:todo_app/components/task_tile.dart';
import 'package:todo_app/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList({this.tasks});
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkBoxCallBack: (checkBoxCurrentState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
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
