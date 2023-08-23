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
  Rota(120, path: [
    LatLng(-22.5611384,-47.4225738),
    LatLng(-22.562087960373503, -47.421985165966994),
    LatLng(-22.562424, -47.421358),
    LatLng(-22.562045193596436, -47.419283679976466),
    LatLng(-22.563025933530724, -47.41772986363214)
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