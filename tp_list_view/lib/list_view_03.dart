import 'dart:developer';

import 'package:flutter/material.dart';

class ListView03 extends StatelessWidget {
  const ListView03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final List<String> entries = List.generate(100, (index) => "Item $index");
    final List<String> entries = [
      for (var i = 0; i < 20; i++) "https://picsum.photos/250?image=$i"
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(entries[index])),
          title: Text("Item $index"),
          trailing: const Icon(Icons.account_box),
          onTap: () {
            log("Item $index");
          },
        );
      },
    );
  }
}
