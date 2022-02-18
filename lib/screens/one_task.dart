import 'package:flutter/material.dart';

import '../components/tasks/task_details.dart';

class OneTask extends StatelessWidget {
  const OneTask({Key? key, required this.valueInput}) : super(key: key);
  final String valueInput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modification de la tâche"),
      ),
      // body: TaskDetails(valueInput: valueInput)
    );
  }
}