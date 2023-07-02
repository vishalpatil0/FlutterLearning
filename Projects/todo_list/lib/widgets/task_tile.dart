import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final void Function(bool?) callback;
  final void Function() deleteCallback;
  TaskTile(
      {this.isChecked,
      this.taskTitle,
      required this.callback,
      required this.deleteCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "$taskTitle",
        style: TextStyle(
            decoration: isChecked ?? false ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: callback,
      ),
      onLongPress: deleteCallback,
    );
  }
}
