import 'package:flutter/material.dart';
// import 'package:todolist_nicolasbertrand/components/sign_in.dart';
import 'package:todolist_nicolasbertrand/components/sign_up.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignIn(),
    );
  }
}