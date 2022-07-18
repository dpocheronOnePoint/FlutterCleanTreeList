import 'package:clean_archi_flutter_tree_list/injector.dart';
import 'package:mobx/mobx.dart';
import 'package:clean_archi_flutter_tree_list/domain/entities/tree.dart';
import 'package:clean_archi_flutter_tree_list/domain/usescases/tree_usecase.dart';

part 'tree_list_state.g.dart';

class TreeListState = TreeListeStateBase with _$TreeListState;

abstract class TreeListeStateBase with Store {
  TreeListeStateBase() {
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
    print(trees[0].coordinate.latitude);
    print(trees[0].coordinate.longitude);
    isLoading = false;
  }
}
