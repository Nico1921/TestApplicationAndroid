import 'package:flutter/material.dart';
import 'package:todolist_nicolasbertrand/models/task.dart';

class TaskPreview extends StatelessWidget {
  const TaskPreview({Key? key, required this.task, required this.onTaskSelected}) : super(key: key);
  final Task task;
  final Function onTaskSelected;

  void _onTap() {
    //print(people.id.toString());
    onTaskSelected(task); //parent callback function
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: 
          Row(
            children: <Widget>[
              Expanded(
                child: Text(task.name, style: const TextStyle(fontSize: 15, color: Colors.white),textAlign: TextAlign.center,),
              ),
              Expanded(
                child: _defineIcon(task.completed),
              ),
            ],
          ),
          tileColor: _defineColor(task.completed),
          onTap: () => _onTap(),
      ),
    );
  }
  
  Color _defineColor(isTrueOrFalse){
    if(isTrueOrFalse){
      return const Color.fromARGB(255, 88, 175, 48);
    }else {
      return const Color.fromARGB(255, 231, 64, 64);
    }
  }

  Icon _defineIcon(isTrueOrFalse){
    if(isTrueOrFalse){
      return const Icon(Icons.check);
    }else {
      return const Icon(Icons.close);
    }
  }
}
