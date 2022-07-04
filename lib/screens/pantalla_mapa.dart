import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

class PantallaMapa extends StatefulWidget {
  const PantallaMapa({Key? key}) : super(key: key);

  @override
  State<PantallaMapa> createState() => _PantallaMapaState();
}

class _PantallaMapaState extends State<PantallaMapa> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: obtenerPosicionCamara(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            child: GoogleMap(initialCameraPosition: snapshot.data),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

obtenerPosicionCamara() async {
  await Geolocator.requestPermission();
  Position posicion = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  return CameraPosition(
      target: LatLng(posicion.latitude, posicion.longitude), zoom: 16);
}
