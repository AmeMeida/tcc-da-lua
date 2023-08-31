import 'package:latlong2/latlong.dart';

class Rota {
  final int id;
  final List<LatLng> path;

  const Rota(this.id, {required this.path});

  String get rota => id.toString().padLeft(3);
}

class DefaultRota extends Rota {
  const DefaultRota() : super(0, path: const [
    LatLng(-22.5611384,-47.4225738),
  ]);

  @override
  String get rota => "";
}

const defaultRota = DefaultRota();

const mockRotas = [
  Rota(04, path: [
    LatLng(-22.5392066,-47.4183157),
    LatLng(-22.539418, -47.418490),
    LatLng(-22.539518, -47.418517),
    LatLng(-22.539628, -47.418486),
    LatLng(-22.539668, -47.418467),
    LatLng(-22.539721, -47.418462),
    LatLng(-22.539763, -47.418526),
    LatLng(-22.539773, -47.418948),
    LatLng(-22.541878, -47.419129),
    LatLng(-22.542252, -47.419177),
    LatLng(-22.542311, -47.419188),
    LatLng(-22.542516, -47.419255),
    LatLng(-22.542484, -47.419644),
    LatLng(-22.542462, -47.419785),
    LatLng(-22.542460, -47.419891),
    LatLng(-22.542493, -47.420266),
  ]),
  Rota(130, path: [
    LatLng(-22.562087960373503, -47.421985165966994),
    LatLng(-22.562424, -47.421358),
    LatLng(-22.563025933530724, -47.41772986363214)
  ]),
  Rota(213, path: [
    LatLng(-22.563025933530724, -47.41772986363214)
  ])
];

const pontos = {
  "cotil": LatLng(-22.5611384,-47.4225738)
};