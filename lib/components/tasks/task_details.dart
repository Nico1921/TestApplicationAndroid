import 'package:flutter/material.dart';
import 'package:todolist_nicolasbertrand/components/tasks/task_form.dart';
import 'package:todolist_nicolasbertrand/models/task.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({Key? key, required this.task}) : super(key: key);
  final Task? task;
  @override
  Widget build(BuildContext context) {
    bool isChecked = task!.completed;
    String date = 'Ajouter le ' + task!.createAt.toString();
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Container(
      height: 300,
      color: const Color.fromARGB(255, 154, 159, 206),
      child: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(task!.name,
                style: const TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.center),
          ),
          Text(date,
              style: const TextStyle(fontSize: 15, color: Colors.white),
              textAlign: TextAlign.center),
          TaskForm(txtValue: task!.name),
          Row(
            children: <Widget>[
              const Expanded(
                  child: Text('Terminer ?',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right)),
              Expanded(
                child: StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                  return Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  );
                }),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // background
                    onPrimary: Colors.white, // foreground*
                  ),
                  onPressed: () {},
                  child: const Text('Mettre à jour !',
                      style: TextStyle(fontSize: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:
                        const Color.fromARGB(255, 175, 76, 76), // background
                    onPrimary: Colors.white, // foreground*
                  ),
                  onPressed: () {},
                  child:
                      const Text('Supprimer !', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
