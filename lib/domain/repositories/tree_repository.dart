import 'package:clean_archi_flutter_tree_list/domain/entities/tree.dart';

abstract class TreeRepository {
  Future<List<Tree>> getTrees({required int startIndex});
}
