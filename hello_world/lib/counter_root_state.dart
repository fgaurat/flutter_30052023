import 'package:flutter/material.dart';
import 'package:hello_world/inc_cpt.dart';
import 'dart:developer' as developer;

import 'package:hello_world/value_cpt.dart';

class CounterRootState extends StatefulWidget {
  const CounterRootState({Key? key}) : super(key: key);

  @override
  State<CounterRootState> createState() => _CounterRootStateState();
}

class _CounterRootStateState extends State<CounterRootState> {
  int _cpt = 0;

  void _increment() {
    setState(() {
      _cpt++;
    });
  }

  @override
  Widget build(BuildContext context) {
    developer.log("build",name: "_CounterRootStateState");
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
          IncCpt(incClick:_increment),
        ValueCpt(cpt:_cpt)
      ],
    );
  }
}
