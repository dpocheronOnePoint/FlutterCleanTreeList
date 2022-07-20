import 'package:flutter/material.dart';

import '../../domain/entities/tree.dart';

class TreeDetailScreen extends StatefulWidget {
  final Tree tree;
  const TreeDetailScreen({Key? key, required this.tree}) : super(key: key);

  @override
  State<TreeDetailScreen> createState() => _TreeDetailScreenState();
}

class _TreeDetailScreenState extends State<TreeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Liste des arbres'),
        ),
        body: Text('L\'arbre: ${widget.tree.name}'));
  }
}
