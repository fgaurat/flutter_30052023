import 'carre.dart';
import 'cercle.dart';
import 'icalc_geo.dart';
import 'rectangle.dart';

void showSurface(ICalcGeo o){
  print(o.surface());
}

void main(List<String> args) {


    Rectangle r = Rectangle(2, 3);
    Carre c = new Carre(12);
    Cercle ce = new Cercle(5);
    
    showSurface(r);
    showSurface(c);
    showSurface(ce);


}