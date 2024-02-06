import 'package:flutter/material.dart';

class Task {
  final String name;
  late bool isDone;
  Task({required this.name, this.isDone = false});

  void toggleChecked() {
    isDone = !isDone;
  }
}
