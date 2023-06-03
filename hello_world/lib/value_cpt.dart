import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class ValueCpt extends StatelessWidget {
  final int cpt;
  const ValueCpt({Key? key,required this.cpt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    developer.log("build", name: "ValueCpt");

    return 
      Text('cpt : $cpt');
  }
}
