import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_gorouter/screens/first_page/first_page.dart';
import 'package:tp_gorouter/screens/hello_page/hello_page.dart';
import 'package:tp_gorouter/screens/home_page/home_page.dart';
import 'package:tp_gorouter/screens/second_page/second_page.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(routes: [
  GoRoute(
    path: HomePage.route,
    builder: (context, state) {
      return const HomePage();
    },
  ),
  GoRoute(
      path: FirstPage.route, builder: (context, state) => const FirstPage()),
  GoRoute(
      path: SecondPage.route, builder: (context, state) => const SecondPage()),
  GoRoute(
      path: HelloPage.route,
      name: "hello",
      builder: (context, state) =>
          HelloPage(name: state.pathParameters['name'] ?? "empty")),
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
