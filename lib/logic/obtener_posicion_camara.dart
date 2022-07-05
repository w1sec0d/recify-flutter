import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

obtenerPosicionCamara() async {
  await Geolocator.requestPermission();
  Position posicion = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  return CameraPosition(
      target: LatLng(posicion.latitude, posicion.longitude), zoom: 18);
}
