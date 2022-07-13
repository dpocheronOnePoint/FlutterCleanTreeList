import 'package:flutter/material.dart';
import 'package:sqflite/sqlite_api.dart';
import 'application/app.dart';
import 'injector.dart';
import 'data/database/tree_sqflite_impl.dart';

Future<void> main() async {
  await initializeDependencies();

  runApp(const Application());
}
