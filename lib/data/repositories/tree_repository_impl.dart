import 'package:clean_archi_flutter_tree_list/data/database/dao/tree_dao.dart';
import 'package:clean_archi_flutter_tree_list/data/services/tree_service.dart';
import 'package:clean_archi_flutter_tree_list/domain/entities/tree.dart';
import 'package:clean_archi_flutter_tree_list/domain/repositories/tree_repository.dart';
import 'package:clean_archi_flutter_tree_list/data/models/tree_dto.dart';
import 'package:clean_archi_flutter_tree_list/injector.dart';

class TreeRepositoryImpl extends TreeRepository {
  TreeService treeService = getIt.get<TreeService>();
  TreeDAO treeDao = getIt.get<TreeDAO>();

  @override
  Future<List<Tree>> getTrees({required int startIndex}) async {
    final response = await treeService.getTreeList(startIndex);
    return response.map((e) => e.toModel()).toList();
  }
}
