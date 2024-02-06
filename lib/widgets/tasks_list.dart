import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutterr/models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkBoxCallBack: (newValue) {
                taskData.updateTask(taskData.tasks[index]);
              },
              onLongPress: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
