import 'package:clean_archi_flutter_tree_list/presentation/tree_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../injector.dart';

class TreeListScreen extends StatefulWidget {
  const TreeListScreen({Key? key}) : super(key: key);

  @override
  State<TreeListScreen> createState() => _TreeListScreenState();
}

class _TreeListScreenState extends State<TreeListScreen> {
  TreeListState treeListState = getIt.get<TreeListState>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (treeListState.isLoading) {
        return const Center(child: CircularProgressIndicator());
      }

      return Center(
          child:
              Text('Le nom du premier arbre ${treeListState.trees[0].name}'));
    });
  }
}
