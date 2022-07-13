class TreeTable {
  static const String tableName = 'tree';
  static const String columnId = 'id';
  static const String columnName = 'name';

  static String create() {
    return "CREATE TABLE $tableName ("
        "$columnId INTEGER PRIMARY KEY "
        "$columnName TEXT"
        ")";
  }
}
