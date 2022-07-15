import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbConfig {
  static Database? _db;

  static Future<Database> initializeDatabase() async {
    return _db ??
        await openDatabase(
          // Set the path to the database. Note: Using the `join` function from the
          // `path` package is best practice to ensure the path is correctly
          // constructed for each platform.
          join(await getDatabasesPath(), 'tree_database.db'),

          onCreate: (db, version) {
            // Run the CREATE TABLE statement on the database.
            return db.execute(
              'CREATE TABLE tree(id INTEGER PRIMARY KEY, name TEXT)',
            );
          },
          // Set the version. This executes the onCreate function and provides a
          // path to perform database upgrades and downgrades.
          version: 1,
        );
  }

  static close() async {
    await _db!.close();
  }
}
