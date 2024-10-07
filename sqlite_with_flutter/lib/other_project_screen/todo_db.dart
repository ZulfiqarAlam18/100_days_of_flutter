import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TodoDatabase {
  static const _dbName = 'todo.db';
  static const _tableName = 'Todos';
  static const _columnId = 'id';
  static const _columnTitle = 'title';
  static const _columnDes = 'description';
  static const _columnDate = "data";

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final db = await openDatabase(join(await getDatabasesPath(), _dbName),
        version: 1, onCreate: (db, version) async {
      await db.execute(
        """
        CREATE TABLE $_tableName (
          $_columnId INTEGER PRIMARY KEY AUTOINCREMENT,
          $_columnTitle TEXT NOT NULL,
          $_columnDes TEXT NOT NULL,
          $_columnDate TEXT NOT NULL
        )
        """,
      );
    });
    return db;
  }

  Future<List<Todo>> getAllTodos() async {
    final db = await database;
    final todoMaps = await db.query(_tableName);

    List<Todo> todos = [];

    for (var map in todoMaps) {
      var todo = Todo.fromMap(map);
      todos.add(todo);
    }
    return todos;
  }

  insertTodo(Todo todo) async {
    final db = await database;
    return await db.insert(
      _tableName,
      todo.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  updateTodo(Todo todo) async {
    final db = await database;
    return await db.update(
      _tableName,
      todo.toMap(),
      where: '$_columnId =?',
      whereArgs: [todo.id],
    );
  }

  deleteTodo(int id) async {
    final db = await database;
    return await db.delete(_tableName, where: '$_columnId =?', whereArgs: [id]);
  }

  deleteAllTodo() async {
    final db = await database;
    return await db.delete(
      _tableName,
    );
  }
}
