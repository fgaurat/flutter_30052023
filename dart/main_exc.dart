void main(List<String> args) {
  int a = 0;
  int b = 2;
  int c = call_div(b, a);
  print(c);

}


int call_div(int a, int b){
  int r=0;
  try{
  print("avant");
  r = div(a,b);

  }
  finally{
    print("après");

  }


  return r;
}

int div(int a, int b){
  return a~/b;
}




void main01(List<String> args) {
  try{
    int a = 0;
    int b = 2;
    // double c = b/a;
    int c1 = b~/a;

    print(c1);
  }
  on UnsupportedError catch(e){
    // print("UnsupportedError");
    print(e);
  }
  catch(e){
    print("catch");
    print(e);
  }
  finally{

  }

  print("après");
}