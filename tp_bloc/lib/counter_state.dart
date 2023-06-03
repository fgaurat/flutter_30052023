abstract class CompteurState {
  final int valeur;
  CompteurState(this.valeur);
}

class CompteurInitial extends CompteurState {
  CompteurInitial() : super(10);
}

class CompteurChanged extends CompteurState {
  CompteurChanged(int valeur) : super(valeur);
}
