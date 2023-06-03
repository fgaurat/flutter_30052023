import 'dart:math';

import 'icalc_geo.dart';

class Cercle implements ICalcGeo{
  
  int _rayon=0;_
  
  Cercle(this._rayon);
  
  int get rayon =>_rayon;
  void set rayon(int rayon) => _rayon=rayon;

  
  @override
  int surface() {
    return (pi*pow(_rayon, 2)).round();
  }

  
}