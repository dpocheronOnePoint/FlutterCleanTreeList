import 'package:flutter/material.dart';
import 'package:clean_archi_flutter_tree_list/presentation/tree_list.dart';
import 'package:clean_archi_flutter_tree_list/application/dependencies/tree_list_module.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liste des arbres',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: TreeList(treeListState: TreeListModule.treeListState()),
    );
  }
}
