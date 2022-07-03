import "package:flutter/material.dart";
import "package:recify/HomeScreen.dart";

void main() {
  // function principal que requiere Dart en cualquier programa
  runApp(MaterialApp(
    home: HomeScreen(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
  )); // Corre un widget o componente y lo establece en toda la pantalla
}
