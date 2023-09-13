import 'package:latlong2/latlong.dart';

class Rota {
  final int id;
  final List<LatLng> path;

  const Rota(this.id, {required this.path});

  String get rota => id.toString().padLeft(3);
}

class DefaultRota extends Rota {
  const DefaultRota()
      : super(0, path: const [
          LatLng(-22.5611384, -47.4225738),
        ]);

  @override
  String get rota => "";
}

const defaultRota = DefaultRota();

const mockRotas = [
  Rota(04, path: [
    LatLng(-22.542062, -47.415878),
    LatLng(-22.542027, -47.415990),
    LatLng(-22.541425, -47.417600),
    LatLng(-22.541431, -47.417742),
    LatLng(-22.541610, -47.417689),
    LatLng(-22.542257, -47.415973),
    LatLng(-22.542062, -47.415878),
    LatLng(-22.543294, -47.416435),
    LatLng(-22.543727, -47.416617),
    LatLng(-22.543755, -47.416617),
    LatLng(-22.543776, -47.416641),
    LatLng(-22.543815, -47.416703),
    LatLng(-22.543871, -47.416694),
    LatLng(-22.543907, -47.416681),
    LatLng(-22.543943, -47.416637),
    LatLng(-22.543976, -47.416634),
    LatLng(-22.544780, -47.416479),
    LatLng(-22.545081, -47.416605),
    LatLng(-22.545220, -47.416512),
    LatLng(-22.545244, -47.416312),
    LatLng(-22.545119, -47.416194),
    LatLng(-22.545008, -47.415860),
    LatLng(-22.544921, -47.415624),
    LatLng(-22.544884, -47.414900),
    LatLng(-22.544748, -47.413940),
    LatLng(-22.544602, -47.413487),
    LatLng(-22.544108, -47.412812)
  ]),
  Rota(130, path: [
    LatLng(-22.562087960373503, -47.421985165966994),
    LatLng(-22.563025933530724, -47.41772986363214)
  ]),
  Rota(213, path: [LatLng(-22.563025933530724, -47.41772986363214)])
];

const pontos = {"cotil": LatLng(-22.5611384, -47.4225738)};
