import 'package:flutter/material.dart';
import 'package:clean_archi_flutter_tree_list/presentation/tree_list.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liste des arbres',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: TreeList(),
    );
  }
}
