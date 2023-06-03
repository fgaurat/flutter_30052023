import 'package:flutter/material.dart';

class Listview02 extends StatelessWidget {
  const Listview02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = List.generate(100, (index) => "Item $index");
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text(entries[index]));
      },
    );
  }
}
