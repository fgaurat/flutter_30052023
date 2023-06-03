import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_gorouter/screens/first_page/first_page.dart';

class HomePage extends StatelessWidget {
  static String route = "/";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => GoRouter.of(context).push(FirstPage.route),
              child: const Text('Go to the FirstPage'),
            ),
            ElevatedButton(
              onPressed: () => GoRouter.of(context).push("/hello/fred2"),
              // onPressed: () =>
              //     context.goNamed("hello", pathParameters: {'name': "Fred"}),
              //onPressed: () => context.go("/hello/fred"),
              child: const Text('SayHello'),
            ),
          ],
        ),
      ),
    );
  }
}
