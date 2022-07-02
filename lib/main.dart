import "package:flutter/material.dart";

void main() {
  // function principal que requiere Dart en cualquier programa
  runApp(MaterialApp(
    home: const Recify(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
  )); // Corre un widget o componente y lo establece en toda la pantalla
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
        body: Center(
          //El widget center centra todo
          child: Container(
            // El widget container se usa para cambiar la decoracion o posicion de otro widget
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.amber,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                )
              ],
            ),
            width: 200,
            height: 200,
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: const Text(
              "Soy un texto bonito",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Buscador',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Mapa',
            ),
          ],
        ),
      ),
    );
  }
}
