import 'package:clean_archi_flutter_tree_list/domain/entities/tree.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import '../db_config.dart';

class TreeDAO {
  Database? database;

  TreeDAO() {
    // getDbInstance();
  }

  void getDbInstance() async => database = await DbConfig.initializeDatabase();

  Future<List<Tree>> getTrees() async {
    database = await DbConfig.initializeDatabase();
    final List<Map<String, dynamic>> maps = await database!.query('tree');

    return List.generate(maps.length, (index) {
      return Tree(
          id: maps[index]['id'],
          name: maps[index]['name'] ?? '',
          // Todo update to real coordinates !!
          coordinate: const LatLng(0.0, 0.0));
    });
  }

  Future<void> insertTree(Tree tree) async {
    final Tree treeToAdd =
        Tree(id: tree.id, name: tree.name ?? '', coordinate: tree.coordinate);

    if (database != null) {
      database!.insert("tree", treeToAdd.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    }
  }

  Future<void> removeAllTreeInDatabase() async {
    if (database != null) {
      await database!.delete(
        "tree", /*where: 'id = ?', whereArgs: [treeToRemove.id]*/
      );
    }
  }
}
