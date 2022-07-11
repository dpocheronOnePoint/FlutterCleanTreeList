import 'package:clean_archi_flutter_tree_list/data/services/tree_service.dart';
import 'package:clean_archi_flutter_tree_list/domain/entities/tree.dart';
import 'package:clean_archi_flutter_tree_list/domain/repositories/tree_repository.dart';
import 'package:clean_archi_flutter_tree_list/data/models/tree_dto.dart';

class TreeRepositoryImpl extends TreeRepository {
  final TreeService _treeService;

  TreeRepositoryImpl(this._treeService);

  @override
  Future<List<Tree>> getTrees({required int startIndex}) async {
    final response = await _treeService.getTreeList(startIndex);
    return response.map((e) => e.toModel()).toList();
  }
}
