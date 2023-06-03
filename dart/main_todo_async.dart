Map getTodo(int id) {
  Map todo = {
    "id": id,
    "userId": 2,
    "title": "Faire du dart",
    "completed": true
  };

  return todo;
}

Future<Map> getAsyncTodo(int id) {
  Map todo = {
    "id": id,
    "userId": 2,
    "title": "Faire du dart",
    "completed": true
  };
  var f = Future<Map>.delayed(Duration(seconds: 1), () => todo);
  return f;
}

void main02(List<String> args) {
  // Map t = getTodo(1);
  Future<Map> t = getAsyncTodo(1);
  t.then((todo) {
    print(todo);
    return getAsyncTodo(todo['id'] + 1);
  }).then((todo) {
    print(todo);
    return getAsyncTodo(todo['id'] + 1);
  }).then((todo) {
    print(todo);
    return getAsyncTodo(todo['id'] + 1);
  }).then((todo) {
    print(todo);
    return getAsyncTodo(todo['id'] + 1);
  });
}


void main03(List<String> args) async {
  Map todo1 = await getAsyncTodo(1);
  print(todo1);
  Map todo2 = await getAsyncTodo(todo1['id']+1);
  print(todo2);
  Map todo3 = await getAsyncTodo(todo2['id']+1);
  print(todo3);
}



void main(List<String> args) async{
  Future<Map> fTodo1 = getAsyncTodo(1);
  Future<Map> fTodo2 = getAsyncTodo(2);
  Future<Map> fTodo3 = getAsyncTodo(3);
  
  List<Future<Map>> l = [fTodo1,fTodo2,fTodo3];

  List<Map> todos =await Future.wait(l);
  print(todos);
}