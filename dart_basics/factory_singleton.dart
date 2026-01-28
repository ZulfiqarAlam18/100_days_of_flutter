class Database {
  static final Database _instance = Database._internal();

  Database._internal(); // private constructor

  factory Database() {
    return _instance; // always returns same instance
  }

  void query(String sql) {
    print("Executing: $sql");
  }
}

void main() {
  var db1 = Database();
  var db2 = Database();

  print(db1 == db2); // true, same instance
  db1.query("SELECT * FROM users");
}
