import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskText;
  final Function taskToggle;
  final Function taskLongPress;

  TaskTile({this.isChecked, this.taskText, this.taskToggle, this.taskLongPress});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskText,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: taskToggle
      ),
      onLongPress: taskLongPress,
    );
  }
}

