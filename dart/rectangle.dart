


import 'icalc_geo.dart';

class Rectangle implements ICalcGeo{



  int _longueur = 0;
  int _largeur = 0;
  
  Rectangle(this._longueur,this._largeur);

  Rectangle.byName({longueur=0,largeur=0}){
    _longueur = longueur;
    _largeur = largeur;
  }
  
  Rectangle.fromString(String initialValues){
      List<String> values = initialValues.split("x");
      _longueur = int.parse(values[0]);
      _largeur = int.parse(values[1]);

  }

  // Rectangle(int longueur,int largeur){
  //   _longueur = longueur;
  //   _largeur = largeur;
  // }

  int get longueur => _longueur;
  int get largeur => _largeur;
  
  void set longueur(int longueur) => _longueur=longueur;
  void set largeur(int largeur) => _largeur=largeur;

  @override
  int surface(){
    return _largeur*_longueur;
  } 


  @override
  String toString() {
    return "Rectangle longueur:$_longueur, largeur:$_largeur";
  }
  
  
  


}