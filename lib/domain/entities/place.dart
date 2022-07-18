import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Place with ClusterItem {
  final String name;
  final LatLng latLng;
  final bool? isClosed;

  Place({required this.name, required this.latLng, this.isClosed});

  @override
  LatLng get location => latLng;
}
