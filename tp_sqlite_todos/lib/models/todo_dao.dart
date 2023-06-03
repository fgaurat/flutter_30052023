import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:tp_sqlite_todos/models/todo.dart';

class TodoDAO {
  Database? database;

  Future open() async {
    String databaseDir = await getDatabasesPath();
    database = await openDatabase(join(databaseDir, 'todos_database.db'),
        onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE todos(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, completed INTEGER)',
      );
    }, version: 1);
  }

// Define a function that inserts dogs into the database
  Future<Todo> insert(Todo todo) async {
    final db = database;

    todo.id = await db?.insert(
      'todos',
      todo.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return todo;
  }

  Future<List<Todo>> getTodoList() async {
    final db = database;
    var todoMapList = await db?.query("todos");

    int count = todoMapList?.length ?? 0;

    List<Todo> todoList = [];
    for (int i = 0; i < count; i++) {
      todoList.add(Todo.fromMapObject(todoMapList![i]));
    }

    return todoList;
  }
}
