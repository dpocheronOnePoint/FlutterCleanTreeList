import 'package:flutter/material.dart';
import 'application/app.dart';
import 'injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  runApp(const Application());
}
