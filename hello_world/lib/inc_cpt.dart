import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class IncCpt extends StatelessWidget {

final Function incClick;

const IncCpt({ Key? key,required this.incClick }) : super(key: key);

  @override
  Widget build(BuildContext context){
    developer.log("build",name: "IncCpt");
    return ElevatedButton(onPressed: () {
      incClick();
    },
    child: const Text('+'),
    );
  }
}