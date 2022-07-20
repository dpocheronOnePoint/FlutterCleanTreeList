import 'dart:async';

import 'package:clean_archi_flutter_tree_list/presentation/main/tree_getter_state.dart';
import 'package:clean_archi_flutter_tree_list/presentation/map/cluster_map_state.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../domain/entities/tree.dart';
import '../../injector.dart';

class ClusterMapScreen extends StatefulWidget {
  const ClusterMapScreen({Key? key}) : super(key: key);

  @override
  State<ClusterMapScreen> createState() => ClusterMapScreenState();
}

class ClusterMapScreenState extends State<ClusterMapScreen> {
  late ClusterManager _manager;

  TreeGetterState treeListState = getIt.get<TreeGetterState>();
  ClusterMapState clusterMapState = getIt.get<ClusterMapState>();

  final Completer<GoogleMapController> _controller = Completer();

  // ignore: prefer_collection_literals
  Set<Marker> markers = Set();

  final CameraPosition _parisCameraPosition =
      const CameraPosition(target: LatLng(48.856613, 2.352222), zoom: 12.0);

  @override
  void initState() {
    _manager = _initClusterManager();
    super.initState();
  }

  ClusterManager _initClusterManager() {
    return ClusterManager<Tree>(treeListState.trees, _updateMarkers,
        markerBuilder: clusterMapState.markerBuilder);
  }

  void _updateMarkers(Set<Marker> markers) {
    debugPrint('Updated ${markers.length} markers');
    setState(() {
      this.markers = markers;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _parisCameraPosition,
          markers: markers,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
            _manager.setMapId(controller.mapId);
          },
          onCameraMove: _manager.onCameraMove,
          onCameraIdle: _manager.updateMap),
    );
  }
}
