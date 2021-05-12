import 'package:flutter/foundation.dart';
import 'package:to_do_list_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Fuck ur bitch'),
    Task(name: 'jerk off'),
    Task(name: 'buy bread'),
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
}
