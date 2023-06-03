import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_bloc/compteur_bloc.dart';
import 'package:tp_bloc/compteur_event.dart';
import 'package:tp_bloc/counter_state.dart';

class CompteurScreen extends StatelessWidget {
  const CompteurScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompteurBloc, CompteurState>(builder: (context, state) {
      return SafeArea(
        child: Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  log("log +");
                  context.read<CompteurBloc>().add(IncrementEvent());
                },
                child: const Text('+')),
            Text("${state.valeur}"),
            ElevatedButton(
                onPressed: () {
                  log("log -");
                  context.read<CompteurBloc>().add(DecrementEvent());
                },
                child: const Text('-'))
          ],
        ),
      );
    });
  }
}


/*

*/