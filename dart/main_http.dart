import 'dart:convert' as convert;
import 'package:http/http.dart' as http;


void main(List<String> args) async {

  var url = "http://localhost:3000/todos";
  var response = await http.get(Uri.parse(url));
  // print(response.body);
  var todos = convert.jsonDecode(response.body);


  for(var todo in todos){
    print(todo["title"]);
  }
  
}
