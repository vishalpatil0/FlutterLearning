import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String? data = "default value";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Add a task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) => {data = value},
          ),
          SizedBox(
            height: 15.0,
          ),
          ElevatedButton(
            onPressed: () {
              final task = Task(taskName: data);
              Provider.of<TaskData>(context, listen: false).addTask(task);
              Navigator.pop(context);
            },
            child: Text("Add"),
          ),
        ]),
      ),
    );
  }
}
