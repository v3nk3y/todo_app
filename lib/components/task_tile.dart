import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'List item goes here.',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
          checkBoxState: isChecked,
          toggleCheckBoxState: (currentCheckBoxState) {
            setState(() {
              isChecked = currentCheckBoxState;
            });
          }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  TaskCheckBox({this.checkBoxState, this.toggleCheckBoxState});
  final bool checkBoxState;
  final Function toggleCheckBoxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
