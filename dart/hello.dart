

void main(List<String> args) {
    int a = int.parse(args[0]) ;
    int b = int.parse(args[1]) ;

    var c = a+b;
    
    print(c.runtimeType);
    
    print('a+b = $c');
    
    printInteger(c);

    int d = add(a,b);
    print(d);
    d = add2(value01: a,value02: b);
    print(d);

    int e =5;
    int f =5;
    const g=12;
    print(g);
    final h;
    h=15;

    print(h);
    h=17;

    g = 13;



}



void printInteger(int a){
  print("int $a");
}


int add(int a,int b){

  return a+b;
}

int add2({int value01=0,int value02=0}){

  return value01+value02;
}


void main01(List<String> args) {
  var name = args[0];
  int a =0;

  print("Hello ${args[0]}");
  print("Hello ${name}");
  
}

