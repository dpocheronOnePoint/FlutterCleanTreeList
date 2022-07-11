import 'package:clean_archi_flutter_tree_list/domain/entities/tree.dart';

class TreeDTO {
  final int id;
  final String? name;

  TreeDTO.fromApi(Map<String, dynamic> map)
      : id = map['idbase'] as int,
        name = map['libellefrancais'] != null
            ? map['libellefrancais'] as String
            : null;
}

extension TreeMapper on TreeDTO {
  Tree toModel() {
    return Tree(id: id, name: name);
  }
}
