import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tp_http_todos/models/todo.dart';

class TodoDetail extends StatelessWidget {
  final Todo todo;
  static String route = "/detail";
  const TodoDetail({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log(todo.title);
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoDetaild'),
      ),
      body: Text(todo.title),
    );
  }
}
