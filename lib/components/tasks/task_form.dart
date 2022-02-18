import 'package:flutter/material.dart';

class TaskForm extends StatelessWidget {
  const TaskForm({Key? key, required this.txtValue}) : super(key: key);
  final String txtValue;

  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(20),
            height: 24.0,
            child: TextFormField(
              initialValue: txtValue,
              decoration: const InputDecoration(
                hintText: 'Entrer votre tâche',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Veuilliez saisir une tâche !';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }

  
}