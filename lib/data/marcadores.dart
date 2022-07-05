// Configura la clase marcadorResiduo y crea la lista marcadoresResiduos[]
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarcadorResiduo {
  final Marker marcador;
  final List<String> tipos;

  MarcadorResiduo(this.marcador, this.tipos);
}

Set<MarcadorResiduo> marcadoresResiduos = {
  MarcadorResiduo(
    const Marker(
      markerId: MarkerId("1"),
      position: LatLng(4.634791, -74.085880),
      infoWindow: InfoWindow(
        title: 'Caneca gris "Reciclables"',
        snippet: 'Residuos Reciclables',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ),
    ["Reciclable"],
  ),
  MarcadorResiduo(
    const Marker(
      markerId: MarkerId("2"),
      position: LatLng(4.634011, -74.085672),
      infoWindow: InfoWindow(
        title: 'Caneca para desechar botellas',
        snippet: 'Exclusivo para botellas plásticas',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ),
    ["Reciclable", "Botellas"],
  ),
  MarcadorResiduo(
    const Marker(
      markerId: MarkerId("2"),
      position: LatLng(4.633759, -74.086752),
      infoWindow: InfoWindow(
        title: 'Caneca para desechar baterías',
        snippet: 'Exclusivo para baterías',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ),
    ["Baterias", "Especial"],
  ),
  MarcadorResiduo(
    const Marker(
      markerId: MarkerId("3"),
      position: LatLng(4.634839, -74.086934),
      infoWindow: InfoWindow(
        title: 'Multi-Caneca',
        snippet: 'Caneca Reciclables, No Aprovechables y Organicos',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ),
    ["Reciclable", "No Aprovechable", "Organico"],
  ),
  MarcadorResiduo(
    const Marker(
      markerId: MarkerId("4"),
      position: LatLng(4.634807, -74.085475),
      infoWindow: InfoWindow(
        title: 'Multi-Caneca',
        snippet: 'Caneca No Aprovechables y Organicos',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ),
    ["No Aprovechable", "Organico"],
  ),
  MarcadorResiduo(
    const Marker(
      markerId: MarkerId("5"),
      position: LatLng(4.633964, -74.086875),
      infoWindow: InfoWindow(
        title: 'Caneca residuos peligrosos',
        snippet: 'Caneca para elementos peligrosos',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ),
    ["Peligroso"],
  ),
  MarcadorResiduo(
    const Marker(
      markerId: MarkerId("6"),
      position: LatLng(4.635313, -74.086139),
      infoWindow: InfoWindow(
        title: 'Caneca residuos peligrosos',
        snippet: 'Caneca para elementos peligrosos',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ),
    ["Organico"],
  ),
};
