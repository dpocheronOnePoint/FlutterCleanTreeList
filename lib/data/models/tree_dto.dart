import 'package:clean_archi_flutter_tree_list/domain/entities/tree.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TreeDTO {
  final int id;
  final String? name;
  final List<dynamic> coordinates;

  TreeDTO.fromApi(Map<String, dynamic> map)
      : id = map['idbase'] as int,
        name = map['libellefrancais'] != null
            ? map['libellefrancais'] as String
            : null,
        coordinates = map['geo_point_2d'] as List<dynamic>;
}

extension TreeMapper on TreeDTO {
  Tree toModel() {
    return Tree(
        id: id, name: name, coordinate: LatLng(coordinates[0], coordinates[1]));
  }
}
