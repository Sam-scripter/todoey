import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutterr/models/task_data.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      color: const Color(0xFF757575),
      child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Add Task',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.lightBlueAccent, fontSize: 30.0),
                  ),
                  TextField(
                    autofocus: true,
                    textAlign: TextAlign.center,
                    onChanged: (newText) {
                      newTaskTitle = newText;
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent),
                    onPressed: () {
                      Provider.of<TaskData>(context, listen: false)
                          .addTask(newTaskTitle);
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Add',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
