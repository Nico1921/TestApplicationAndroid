import 'package:flutter/material.dart';
import 'package:todolist_nicolasbertrand/models/task.dart';
import 'package:todolist_nicolasbertrand/screens/create_task.dart';
import 'package:todolist_nicolasbertrand/components/tasks/task_preview.dart';
import 'package:todolist_nicolasbertrand/components/tasks/task_details.dart';

class TasksMaster extends StatefulWidget {
  const TasksMaster({Key? key, required this.data}) : super(key: key);
  final List<Task> data;

  @override
  State<TasksMaster> createState() => _TasksMasterState();
  
}

class _TasksMasterState extends State<TasksMaster> {

  late Text textTest = const Text("");
  Task? selectTask;

  void onTaskSelected(Task task) {
      setState(() {
        selectTask = task;
      });
      // TaskDetails(task: task);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          (selectTask!=null) ? TaskDetails(task: selectTask) : Container(),
          Expanded(
            child :ListView.builder(
              itemCount: widget.data.length,
              itemBuilder: (context, index){
                textTest;
                return TaskPreview(task: widget.data[index], onTaskSelected: onTaskSelected);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return const CreateTask();
                },
              ));
            },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
