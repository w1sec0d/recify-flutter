import "package:flutter/material.dart";

void main() {
  // function principal que requiere Dart en cualquier programa
  runApp(
      const Recify()); // Corre un widget o componente y lo establece en toda la pantalla
}

class Recify extends StatelessWidget {
  // Este es el widget como tal, es "Stateless" porque no es dinámico, dentro de el no cambian datos, es "estatico"

  const Recify({Key? key}) : super(key: key);

// Al parecer dentro del widget se sobre escribe ese metodo build, que es la estructura como tal del widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //El scaffold es la estructura basica de la app, dentro de el se especifica la barra de la app y el contenido de la app
        appBar: AppBar(
          title: const Text("Recify"),
          backgroundColor: Colors.lightGreen,
        ),
        body: Container(
          child: Center(child: const Text("Hola Recify!")),
        ),
      ),
    );
  }
}
