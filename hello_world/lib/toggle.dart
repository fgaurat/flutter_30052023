import 'dart:developer' as developer;

import 'package:flutter/material.dart';

class Toggle extends StatefulWidget {
  const Toggle({Key? key}) : super(key: key);

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool show = true;
  String label = "Hide";

  toggleShow() {
    developer.log("toggleShow",name: "ToggleState");
    setState(() {
      show = !show;
      label = show?"Hide":"Show";
    });
  }

  @override
  Widget build(BuildContext context) {
    developer.log("build",name: "ToggleState");
    return Column(
      children: [
        const Text("Toggle",style:TextStyle(fontSize: 25)),
        TextButton(onPressed: toggleShow, child: Text(label)),
        if (show) const Text("OK Show")
        ],
    );
  }
}
