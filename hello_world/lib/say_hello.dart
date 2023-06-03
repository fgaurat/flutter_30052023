import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class SayHello extends StatefulWidget {
  const SayHello({Key? key}) : super(key: key);

  @override
  State<SayHello> createState() => _SayHelloState();
}

class _SayHelloState extends State<SayHello> {
  String _name = "";

  _setName(value) {
    developer.log("_setName", name: "SayHelloState");
    setState(() {
      _name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    developer.log("build", name: "SayHelloState");

    return Column(
      children: [
        const Text('SayHello', style: TextStyle(fontSize: 25)),
        TextField(
          onSubmitted: _setName,
        )
      ],
    );
  }
}
