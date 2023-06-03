import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_http_todos/models/todo.dart';
import 'package:tp_http_todos/screens/todo_detail/todo_detail.dart';
import 'package:tp_http_todos/screens/todo_form/todo_form.dart';
import 'package:tp_http_todos/screens/todo_list/todo_list.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(routes: [
  GoRoute(
    path: TodoList.route,
    builder: (context, state) => const TodoList(),
  ),
  GoRoute(
    path: TodoDetail.route,
    builder: (context, state) => TodoDetail(todo: state.extra as Todo),
  ),
  GoRoute(
    path: TodoForm.route,
    builder: (context, state) => const TodoForm(),
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
