import 'rectangle.dart';

class Carre extends Rectangle {
  int _cote = 0;

  Carre(cote)
      : _cote = cote,
        super(cote, cote);

  @override
  String toString() {
    return "Carre cote:$_cote";
  }
}
