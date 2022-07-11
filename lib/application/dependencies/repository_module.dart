import 'package:clean_archi_flutter_tree_list/domain/repositories/tree_repository.dart';
import 'package:clean_archi_flutter_tree_list/data/repositories/tree_repository_impl.dart';
import 'package:clean_archi_flutter_tree_list/data/services/tree_service.dart';

class RepositoryModule {
  static final TreeService _treeService = TreeService();

  static TreeRepository treeRepository() {
    return TreeRepositoryImpl(_treeService);
  }
}
