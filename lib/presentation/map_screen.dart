// import 'dart:async';
// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';
// import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:clean_archi_flutter_tree_list/domain/entities/place.dart';

// class MapScreen extends StatefulWidget {
//   const MapScreen({Key? key}) : super(key: key);

//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   late ClusterManager _manager;

//   final Completer<GoogleMapController> _controller = Completer();

//   Set<Marker> markers = Set();

//   final CameraPosition _parisCameraPosition =
//       const CameraPosition(target: LatLng(48.856613, 2.352222), zoom: 12.0);

//   List<Place> items = [
//     for (int i = 0; i < 10; i++)
//       Place(
//           name: 'Place $i',
//           latLng: LatLng(48.848200 + i * 0.001, 2.319124 + i * 0.001)),
//     for (int i = 0; i < 10; i++)
//       Place(
//           name: 'Restaurant $i',
//           isClosed: i % 2 == 0,
//           latLng: LatLng(48.858265 - i * 0.001, 2.350107 + i * 0.001)),
//     for (int i = 0; i < 10; i++)
//       Place(
//           name: 'Bar $i',
//           latLng: LatLng(48.858265 + i * 0.01, 2.350107 - i * 0.01)),
//     for (int i = 0; i < 10; i++)
//       Place(
//           name: 'Hotel $i',
//           latLng: LatLng(48.858265 - i * 0.1, 2.350107 - i * 0.01)),
//     for (int i = 0; i < 10; i++)
//       Place(
//           name: 'Test $i',
//           latLng: LatLng(66.160507 + i * 0.1, -153.369141 + i * 0.1)),
//     for (int i = 0; i < 10; i++)
//       Place(
//           name: 'Test2 $i',
//           latLng: LatLng(-36.848461 + i * 1, 169.763336 + i * 1)),
//   ];

//   // static const CameraPosition _kLake = CameraPosition(
//   //     bearing: 192.8334901395799,
//   //     target: LatLng(37.43296265331129, -122.08832357078792),
//   //     tilt: 59.440717697143555,
//   //     zoom: 19.151926040649414);

//   // Future<void> _goToTheLake() async {
//   //   final GoogleMapController controller = await _controller.future;
//   //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   // }

//   @override
//   void initState() {
//     _manager = _initClusterManager();
//     super.initState();
//   }

//   ClusterManager _initClusterManager() {
//     return ClusterManager<Place>(items, _updateMarkers,
//         markerBuilder: _markerBuilder);
//   }

//   void _updateMarkers(Set<Marker> markers) {
//     print('Updated ${markers.length} markers');
//     setState(() {
//       this.markers = markers;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         mapType: MapType.hybrid,
//         initialCameraPosition: _kGooglePlex,
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//       ),
//       // floatingActionButton: FloatingActionButton.extended(
//       //   onPressed: _goToTheLake,
//       //   label: const Text('To the lake!'),
//       //   icon: const Icon(Icons.directions_boat),
//       // ),
//     );
//   }
// }
