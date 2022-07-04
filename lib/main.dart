import "package:flutter/material.dart"; // Importa la librería de widgets principales de Flutter
import "package:recify/screens/home.dart"; // Importa el widget HomeScreen

void main() {
  // function principal que requiere Dart en cualquier programa
  // Corre el widget principal HomeScreen y lo establece en toda la pantalla

  runApp(MaterialApp(
    home: const HomeScreen(),
    theme: ThemeData(
      // Establece el tema de la aplicacion (colores, estilos..)
      primarySwatch: Colors.green,
    ),
    debugShowCheckedModeBanner:
        false, // Desabilita una advertencia de modo de debug
  ));
}
