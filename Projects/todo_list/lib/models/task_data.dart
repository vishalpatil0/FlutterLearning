import 'package:flutter/material.dart';
import 'package:todo_list/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskName: 'Buy Pen'),
    Task(taskName: 'Buy NoteBook'),
    Task(taskName: 'Buy Book'),
  ];

  void addTask(Task t) {
    _tasks.add(t);
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }

  Task? getTask(int index) {
    if (-1 < index && index < _tasks.length) {
      return _tasks[index];
    }
    print("Invalid index");
    return null;
  }

  void deleteTask(int index) {
    try {
      _tasks.removeAt(index);
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
