// main_rectangle SnakeCase
// MainRectangle : UpperCamelCase
// mainRectangle : camelCase
// main-rectangle: kebab



import 'rectangle.dart';

void main(List<String> args) {
  Rectangle r = new Rectangle(2,3);
  Rectangle r1 = new Rectangle.fromString("2x3");
  Rectangle r2 = new Rectangle.byName(largeur: 12,longueur:22);
  
  print(r.longueur);
  r.longueur = 12;
  print(r.longueur);
  
  print(r1);
  print(r1.surface());

}