import 'package:clean_archi_flutter_tree_list/presentation/tree_list/widgets/search_bar.dart';
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
  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textController.addListener(() {
      final String text = textController.text;
      print('Voici mon texte ==> ${text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (treeListState.isLoading) {
        return const Center(child: CircularProgressIndicator());
      }
      return Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: SearchBar(),
          ),
          Text("Nombre d'arbes: ${treeListState.trees.length}"),
          Expanded(
              child: NotificationListener<ScrollNotification>(
                  // Method to check if the user has scroll 2/3 of the list
                  // To load the next page
                  onNotification: (ScrollNotification notification) {
                    final currentPosition = notification.metrics.pixels;
                    final maxPosition = notification.metrics.maxScrollExtent;
                    if (currentPosition >= maxPosition * 2 / 3) {
                      print("Je pass ici ");
                    }
                    return true;
                  },
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      shrinkWrap: true,
                      itemCount: treeListState.trees.length,
                      itemBuilder: (BuildContext context, int index) {
                        return TreeListItem(
                          tree: treeListState.trees[index],
                          index: index,
                        );
                      })))
        ],
      );
      // return ListView(children: [
      //   SearchBar(),

      // ]);
      // return ListView.builder(
      //     padding: const EdgeInsets.all(8),
      //     shrinkWrap: true,
      //     itemCount: treeListState.trees.length,
      //     itemBuilder: (BuildContext context, int index) {
      //       if (index == 0) {
      //         return SearchBar();
      //       } else {
      //         return TreeListItem(tree: treeListState.trees[index]);
      //       }
      //     });
    });
  }
}
