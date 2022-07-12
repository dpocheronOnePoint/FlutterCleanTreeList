import 'package:clean_archi_flutter_tree_list/domain/entities/tree.dart';
import 'package:clean_archi_flutter_tree_list/domain/repositories/tree_repository.dart';
import 'package:clean_archi_flutter_tree_list/injector.dart';

class TreeUseCase {
  TreeUseCase();

  Future<List<Tree>> getTrees({required int startIndex}) async {
    final trees =
        await getIt.get<TreeRepository>().getTrees(startIndex: startIndex);

    return trees;
  }
}
