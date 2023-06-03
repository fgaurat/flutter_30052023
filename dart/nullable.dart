void main(List<String> args) {
  
String? name = null;
// String firstName ="Fred";
// print(name!+" "+firstName);
print(name?.length);

int sizeOfName = name?.length ?? 0;

print(sizeOfName);


}