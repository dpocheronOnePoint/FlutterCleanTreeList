import 'package:clean_archi_flutter_tree_list/data/database/dao/tree_dao.dart';
import 'package:clean_archi_flutter_tree_list/data/services/tree_service.dart';
import 'package:clean_archi_flutter_tree_list/domain/entities/tree.dart';
import 'package:clean_archi_flutter_tree_list/domain/repositories/tree_repository.dart';
import 'package:clean_archi_flutter_tree_list/data/models/tree_dto.dart';
import 'package:clean_archi_flutter_tree_list/injector.dart';
import 'package:flutter/foundation.dart';

class TreeRepositoryImpl extends TreeRepository {
  TreeService treeService = getIt.get<TreeService>();
  TreeDAO treeDao = getIt.get<TreeDAO>();

  @override
  Future<List<Tree>> getTrees({required int startIndex}) async {
    // List<Tree> localTrees = await treeDao.getTrees();
    // if (localTrees.isEmpty) {
    final response = await treeService.getTreeList(startIndex);
    List<Tree> trees = response.map((e) => e.toModel()).toList();
    // ignore: avoid_function_literals_in_foreach_calls
    trees.forEach((tree) async {
      await treeDao.insertTree(tree);
    });
    debugPrint('From WS');
    return trees;
    // } else {
    //   print('From Local');
    //   print(localTrees.length);
    //   return localTrees;
    // }
  }
}
