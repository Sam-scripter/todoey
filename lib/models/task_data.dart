import 'package:flutter/foundation.dart';
import 'package:todoey_flutterr/models/taks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'number two'),
    Task(name: 'finish flutter'),
  ];

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleChecked();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
