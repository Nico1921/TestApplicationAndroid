import 'package:flutter/material.dart';
import 'package:todolist_nicolasbertrand/components/tasks/task_form.dart';

class CreateTask extends StatelessWidget {
  const CreateTask({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Création d'une nouvelle tâche"),
      ),
      body: Column(
        children: <Widget>[
          const TaskForm(txtValue:""),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // background
                  onPrimary: Colors.white, // foreground*
                ),
                onPressed: () {},
                child: const Text('Ajouter !', style: TextStyle(fontSize: 20)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  
}