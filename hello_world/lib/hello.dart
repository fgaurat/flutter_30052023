import 'package:flutter/material.dart';

class Hello extends StatelessWidget {

  final String name;
  const Hello({Key? key,this.name=""}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Hello World $name',style:const TextStyle(fontSize: 25)),
        // const Image(image: AssetImage('images/flutter-logo.jpg')),
        const Icon(Icons.bolt),
        const Text('Hello World 02',style:TextStyle(fontSize: 25)),
        
      ],
    ));
  }
}
