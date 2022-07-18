import 'package:google_maps_flutter/google_maps_flutter.dart';

class Place {
  final String name;
  final LatLng latLng;
  final bool? isClosed;

  Place({required this.name, required this.latLng, this.isClosed});

  Map<String, dynamic> toJson() {
    return {'name': name, 'latLng': latLng, 'isClosed': isClosed};
  }
}
