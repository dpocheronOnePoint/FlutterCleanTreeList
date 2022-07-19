import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';

part 'cluster_map_state.g.dart';

class ClusterMapState = ClusterMapStateBase with _$ClusterMapState;

abstract class ClusterMapStateBase with Store {
  ClusterMapStateBase();

  @observable
  // ignore: prefer_collection_literals
  Set<Marker> markers = Set();
}
