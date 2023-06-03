void main(List<String> args) {
  const l = [12, 5, 9];

  print(l);
  print(l.runtimeType);

  for (var i in l) {
      print(i);
  }

  // l.add(23);
  // print(l);

  // var f = (element) { print("the Value $element");};

  l.forEach(print);
  l.forEach(theMethod);
  var action = (element) { print("the Value $element");};
  l.forEach(action);

  var l2 = l.map((e) => e*2).toList();
  print(l2);

}

void theMethod(element) { print("the Value $element");}
