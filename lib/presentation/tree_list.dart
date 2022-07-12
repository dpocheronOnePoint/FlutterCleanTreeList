import 'package:clean_archi_flutter_tree_list/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:clean_archi_flutter_tree_list/presentation/tree_list_state.dart';

class TreeList extends StatefulWidget {
  TreeList({Key? key}) : super(key: key);

  @override
  _TreeListState createState() => _TreeListState();
}

class _TreeListState extends State<TreeList> {
  Widget _body() {
    return Observer(builder: (_) {
      if (getIt.get<TreeListState>().isLoading)
        return Center(child: CircularProgressIndicator());

      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
              'Le nom du premier arbre: ${getIt.get<TreeListState>().trees[0].name}'),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: _body()));
  }
}
