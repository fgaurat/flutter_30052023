import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_bloc/compteur_event.dart';
import 'package:tp_bloc/counter_state.dart';

class CompteurBloc extends Bloc<CompteurEvent, CompteurState> {
  CompteurBloc() : super(CompteurInitial()) {
    on<IncrementEvent>(
        (event, emit) => emit(CompteurChanged(state.valeur + 1)));
    on<DecrementEvent>(
        (event, emit) => emit(CompteurChanged(state.valeur - 1)));
  }
}
