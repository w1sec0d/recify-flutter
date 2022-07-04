import "package:flutter/material.dart";
import "package:recify/screens/home.dart";

void main() {
  // function principal que requiere Dart en cualquier programa
  runApp(MaterialApp(
    home: const HomeScreen(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    debugShowCheckedModeBanner: false,
  )); // Corre un widget o componente y lo establece en toda la pantalla
}
