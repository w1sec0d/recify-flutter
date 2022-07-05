import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import "../data/marcadores.dart";
import "../logic/obtener_posicion_camara.dart";

class PantallaMapa extends StatefulWidget {
  const PantallaMapa({Key? key}) : super(key: key);

  @override
  State<PantallaMapa> createState() => _PantallaMapaState();
}

class _PantallaMapaState extends State<PantallaMapa> {
  @override
  Widget build(BuildContext context) {
    Set<Marker> marcadoresCompletos = {};
    for (var e in marcadoresResiduos) {
      marcadoresCompletos.add(e.marcador);
    }

    return FutureBuilder(
      future: obtenerPosicionCamara(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GoogleMap(
            initialCameraPosition: snapshot.data,
            myLocationEnabled: true,
            markers: marcadoresCompletos,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
