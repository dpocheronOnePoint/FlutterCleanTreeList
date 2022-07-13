import 'package:clean_archi_flutter_tree_list/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:clean_archi_flutter_tree_list/presentation/tree_list_state.dart';

class TreeList extends StatefulWidget {
  const TreeList({Key? key}) : super(key: key);

  @override
  _TreeListState createState() => _TreeListState();
}

class _TreeListState extends State<TreeList> {
  int _selectedIndex = 0;

  TreeListState treeListState = getIt.get<TreeListState>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _body() {
    return Observer(builder: (_) {
      if (getIt.get<TreeListState>().isLoading) {
        return Center(child: CircularProgressIndicator());
      }

      return Center(
          child:
              Text('Le nom du premier arbre ${treeListState.trees[0].name}'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des arbres'),
      ),
      body: SafeArea(child: _body()),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Liste',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Carte',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
