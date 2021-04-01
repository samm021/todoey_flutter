import 'package:flutter/material.dart';
import 'package:todoey_flutter/components/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child)  {
        return ListView.builder(
        itemBuilder: (context, index) {
            return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                taskText: taskData.tasks[index].name,
                taskLongPress: () {
                  taskData.deleteTask(taskData.tasks[index]);
                },
                taskToggle: (bool value) {
                  taskData.updateTask(taskData.tasks[index]);
                }
            );
          },
          itemCount: taskData.tasksLength,
        );
      },
    );
  }
}