import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:tp_http_todos/models/todo.dart';
import 'dart:convert' as convert;

import 'package:tp_http_todos/screens/todo_detail/todo_detail.dart';
import 'package:tp_http_todos/screens/todo_form/todo_form.dart';

class TodoList extends StatefulWidget {
  static String route = "/";
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  Future<List<Todo>> _loadData() async {
    var url = dotenv.get('IOS_URL_TODOS', fallback: "");

    if (Platform.isAndroid) {
      url = dotenv.get('ANDROID_URL_TODOS', fallback: "");
    }

    var response =
        await http.get(Uri.parse(url)).timeout(const Duration(seconds: 5));
    if (response.statusCode == 200) {
      List todos = convert.jsonDecode(response.body);
      return todos.map((todoJson) => Todo.fromJson(todoJson)).toList();
    } else {
      throw Exception("Failed to load todos !!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(TodoForm.route);
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('TodoList'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await _loadData();
          return Future(() {
            setState(() {});
          });
        },
        child: FutureBuilder<List<Todo>>(
          future: _loadData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data?[index].title ?? ""),
                    onTap: () {
                      // GoRouter.of(context).push("/detail");
                      context.push(TodoDetail.route,
                          extra: snapshot.data?[index]);
                    },
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("Erreurs ! $snapshot.error");
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
