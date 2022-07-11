import 'package:clean_archi_flutter_tree_list/domain/usescases/tree_usecase.dart';
import 'package:clean_archi_flutter_tree_list/presentation/tree_list_state.dart';
import 'repository_module.dart';

class TreeListModule {
  static TreeListState treeListState() {
    return TreeListState(TreeUseCase(RepositoryModule.treeRepository()));
  }
}
