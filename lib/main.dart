import 'package:flutter/material.dart';
import 'application/app.dart';
import 'injector.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(const Application());
}
