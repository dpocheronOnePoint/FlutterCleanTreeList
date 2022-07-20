import 'package:clean_archi_flutter_tree_list/domain/entities/tree.dart';
import 'package:clean_archi_flutter_tree_list/presentation/tree_list/tree_detail_screen.dart';
import 'package:flutter/material.dart';

class TreeListItem extends StatelessWidget {
  final Tree tree;
  const TreeListItem({Key? key, required this.tree}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return TreeDetailScreen(tree: tree);
              },
            ),
          );
        },
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 15),
          Text('mon nom: ${tree.name}'),
          const SizedBox(height: 15),
        ]));
  }
}
