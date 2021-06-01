import 'package:flutter/foundation.dart';
import 'package:to_do_list_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Finish CS Assignment 3'),
    Task(name: 'Call Kevin'),
    Task(name: 'Buy Bread'),
  ];

  List get tasks {
    return List.unmodifiable(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
