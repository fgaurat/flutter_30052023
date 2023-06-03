import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tp_sqlite_todos/models/todo.dart';
import 'package:tp_sqlite_todos/models/todo_dao.dart';

class TodoForm extends StatefulWidget {
  const TodoForm({Key? key}) : super(key: key);

  @override
  State<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends State<TodoForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final dao = TodoDAO();
    dao.open();
    final titleController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Todo Form"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(
                hintText: 'Todo title',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    var todo =
                        Todo(title: titleController.text, completed: false);
                    dao
                        .insert(todo)
                        .then((Todo savedTodo) => Navigator.pop(context));
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(content: Text("OK ${savedTodo.id}"))));
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
