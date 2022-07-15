import 'package:clean_archi_flutter_tree_list/presentation/map_screen.dart';
import 'package:clean_archi_flutter_tree_list/presentation/tree_list_screen.dart';
import 'package:flutter/material.dart';

class MainBottomTabScreen extends StatefulWidget {
  const MainBottomTabScreen({Key? key}) : super(key: key);

  @override
  _MainBottomTabScreenState createState() => _MainBottomTabScreenState();
}

class _MainBottomTabScreenState extends State<MainBottomTabScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    TreeListScreen(),
    MapScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des arbres'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
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
