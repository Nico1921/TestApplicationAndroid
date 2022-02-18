import 'package:flutter/material.dart';
import 'package:todolist_nicolasbertrand/screens/all_tasks.dart';
void main() {
  runApp(const TodolistApp());
}

class TodolistApp extends StatelessWidget {
  const TodolistApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AllTasks(),
    );
  }
}

  
