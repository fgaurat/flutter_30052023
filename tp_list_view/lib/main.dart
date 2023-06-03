import 'package:flutter/material.dart';
import 'package:tp_list_view/list_view_03.dart';
import 'package:tp_list_view/listview_01.dart';
import 'package:tp_list_view/listview_02.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TPListView',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TPListView"),
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        body: const ListView03(),
      ),
    );
  }
}
