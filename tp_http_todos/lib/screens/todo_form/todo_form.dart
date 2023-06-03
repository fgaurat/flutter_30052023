import 'dart:developer';
import 'dart:io';
import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

class TodoForm extends StatefulWidget {
  static String route = "/add";
  const TodoForm({Key? key}) : super(key: key);

  @override
  State<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends State<TodoForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoForm'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a todo title';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Todo Title',
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    var url = dotenv.get('IOS_URL_TODOS', fallback: "");
                    if (Platform.isAndroid) {
                      url = dotenv.get('ANDROID_URL_TODOS', fallback: "");
                    }

                    final response = await http.post(
                      Uri.parse(url),
                      body: convert.jsonEncode({
                        'title': titleController.text,
                        'completed': false,
                        'userId': 0,
                      }),
                      headers: {
                        'Content-type': 'application/json; charset=UTF-8'
                      },
                    );

                    if (response.statusCode == 201 && context.mounted) {
                      context.pop();
                    }
                  }
                },
                child: const Text('add Todo'))
          ],
        ),
      ),
    );
  }
}
