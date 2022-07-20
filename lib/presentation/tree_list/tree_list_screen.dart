import 'package:clean_archi_flutter_tree_list/presentation/tree_list/widgets/tree_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../main/tree_getter_state.dart';
import '../../injector.dart';

class TreeListScreen extends StatefulWidget {
  const TreeListScreen({Key? key}) : super(key: key);

  @override
  State<TreeListScreen> createState() => _TreeListScreenState();
}

class _TreeListScreenState extends State<TreeListScreen> {
  TreeGetterState treeListState = getIt.get<TreeGetterState>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (treeListState.isLoading) {
        return const Center(child: CircularProgressIndicator());
      }

      return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: treeListState.trees.length,
          itemBuilder: (BuildContext context, int index) {
            return TreeListItem(tree: treeListState.trees[index]);
          });
    });
  }
}
