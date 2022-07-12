import 'package:clean_archi_flutter_tree_list/domain/repositories/tree_repository.dart';
import 'package:clean_archi_flutter_tree_list/data/repositories/tree_repository_impl.dart';
import 'package:clean_archi_flutter_tree_list/data/services/tree_service.dart';
import 'package:clean_archi_flutter_tree_list/injector.dart';

class RepositoryModule {
  static final TreeService _treeService = getIt.get<TreeService>();

  static TreeRepository treeRepository() {
    return getIt.get<TreeRepositoryImpl>();
  }
}