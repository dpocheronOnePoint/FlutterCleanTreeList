import 'package:clean_archi_flutter_tree_list/domain/entities/tree.dart';
import 'package:clean_archi_flutter_tree_list/domain/repositories/tree_repository.dart';

class TreeUseCase {
  final TreeRepository _treeRepository;

  TreeUseCase(this._treeRepository);

  Future<List<Tree>> getTrees({required int startIndex}) async {
    final trees = await _treeRepository.getTrees(startIndex: startIndex);

    return trees;
  }
}
