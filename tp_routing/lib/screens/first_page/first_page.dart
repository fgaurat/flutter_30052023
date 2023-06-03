import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tp_routing/screens/second_page/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("FirstPage"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () async {
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(
                //       builder: (context) => const SecondPage(),
                //     ),
                //     (route) => route.isFirst);

                List<String> result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
                log("result: $result", name: "FirstPage");
                // Navigator.of(context)
                //     .push(
                //       MaterialPageRoute(
                //         builder: (context) => const SecondPage(),
                //       ),
                //     )
                //     .then((value) => log("result: $value", name: "FirstPage"));
              },
              child: const Text('Go to SecondPage')),
        ));
  }
}
