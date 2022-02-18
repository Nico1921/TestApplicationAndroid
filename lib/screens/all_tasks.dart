import 'package:flutter/material.dart';
import 'package:todolist_nicolasbertrand/components/tasks/tasks_master.dart';
import 'package:todolist_nicolasbertrand/data/tasks.dart' as data;

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Faire les courses"),
      ),
      body:  TasksMaster(data: data.listeTasks)
    );
  }
}