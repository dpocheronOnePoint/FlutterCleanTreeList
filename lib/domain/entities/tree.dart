import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';

class Tree with ClusterItem {
  final int id;
  final String? name;
  final LatLng coordinate;

  Tree({required this.id, this.name, required this.coordinate});

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }

  @override
  LatLng get location => coordinate;
}

final initialTree = Tree(id: 0, name: '', coordinate: const LatLng(0.0, 0.0));
