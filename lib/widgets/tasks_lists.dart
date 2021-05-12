import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/models/tasks_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (checkboxState) {
                  // setState(() {
                  //   tasks[index].toggleDone();
                  // });
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
