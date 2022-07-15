import 'package:flutter/material.dart';
import 'package:clean_archi_flutter_tree_list/presentation/main_bottom_tab_screen.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liste des arbres',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const MainBottomTabScreen(),
    );
  }
}
