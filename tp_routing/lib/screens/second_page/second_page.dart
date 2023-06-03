import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SecondPage"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            const Text("End"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, ["Le résultat"]);
                },
                child: const Text("Back to first"))
          ],
        ));
  }
}
