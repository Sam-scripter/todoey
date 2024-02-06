import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?)? checkBoxCallBack;
  final void Function() onLongPress;

  const TaskTile(
      {super.key,
      required this.taskTitle,
      required this.isChecked,
      this.checkBoxCallBack,
      required this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBoxCallBack),
    );
  }
}
