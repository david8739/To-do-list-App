import 'package:flutter/foundation.dart';
import 'package:to_do_list_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Fuck ur bitch'),
    Task(name: 'jerk off'),
    Task(name: 'buy bread'),
  ];
}
