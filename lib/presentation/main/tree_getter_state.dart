import 'package:clean_archi_flutter_tree_list/injector.dart';
import 'package:mobx/mobx.dart';
import 'package:clean_archi_flutter_tree_list/domain/entities/tree.dart';
import 'package:clean_archi_flutter_tree_list/domain/usescases/tree_usecase.dart';

part 'tree_getter_state.g.dart';

class TreeGetterState = TreeGetterStateBase with _$TreeGetterState;

abstract class TreeGetterStateBase with Store {
  TreeGetterStateBase() {
    getTrees();
  }

  @observable
  List<Tree> trees = [];

  @observable
  bool isLoading = false;

  @action
  Future<void> getTrees() async {
    isLoading = true;
    trees = await getIt.get<TreeUseCase>().getTrees(startIndex: 0);
    isLoading = false;
  }
}
