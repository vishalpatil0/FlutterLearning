import 'package:flutter/material.dart';
import 'package:todo_list/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';

import '../models/task.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            Task? tempTask = taskData.getTask(index);
            return TaskTile(
              taskTitle: tempTask?.taskName,
              isChecked: tempTask?.isDone ?? false,
              callback: (checkBoxstate) {
                tempTask?.toggle();
              },
              deleteCallback: () {
                taskData.deleteTask(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
