import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;
  AddTaskScreen(this.addTaskCallBack);
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      // background container with blur color
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        // actual container that has border radius
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 25.0,
              ),
            ),
            TextField(
              controller: TextEditingController(),
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
              ),
              onChanged: (newTaskText) {
                newTaskTitle = newTaskText;
              },
            ),
            SizedBox(height: 10.0),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                if (newTaskTitle != null) {
                  addTaskCallBack(newTaskTitle);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
