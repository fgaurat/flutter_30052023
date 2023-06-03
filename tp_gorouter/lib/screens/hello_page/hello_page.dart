import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HelloPage extends StatelessWidget {
  static String route = "/hello/:name";
  final String name;

  const HelloPage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HelloPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hello $name"),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: Text('Go to the HomePage ${Platform.operatingSystem}'),
            ),
          ],
        ),
      ),
    );
  }
}
