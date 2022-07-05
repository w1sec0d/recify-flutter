import "package:flutter/material.dart";
import "package:recify/screens/pantalla_buscador.dart";
import 'package:recify/screens/pantalla_inicio.dart';
import 'package:recify/screens/pantalla_mapa.dart';

class HomeScreen extends StatefulWidget {
  // Crea un widget con estado que representa el home de la app
  // Le da a la intanciación una llave unica con la que flutter puede identificarla facilmente
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pantallaActual = 1;
  PageController controladorDePantalla = PageController(initialPage: 1);

  void cambioDePantalla(int nuevoIndex) {
    //funcion que realiza el cambio de pantalla
    setState(() {
      // cambia el estado de pantalla actual, al nuevo index
      pantallaActual = nuevoIndex;
    });

    //Usa el controlador de pantalla para animar hacia una nueva pantalla
    controladorDePantalla.animateToPage(
      pantallaActual,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // El scaffold es la estructura basica de la app, dentro de el se especifica la barra de la app y el contenido de la app

      // Configura la barra superior de la app
      appBar: AppBar(
        title: const Text(
          "Recify",
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
      ),

      // Configura el cuerpo de la app, con pageView para establecer el cambio de pantallas
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controladorDePantalla,
        onPageChanged: (nuevoIndex) {
          setState(() {
            pantallaActual = nuevoIndex;
          });
        },
        children: const [
          // Como children van cada una de las pantallas separadas por comas
          PantallaInicio(),
          PantallaBuscador(),
          PantallaMapa(),
        ],
      ),

      // Se configura la barra de navegacion inferior
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark),
            label: '¿Cómo usar?',
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
        currentIndex: pantallaActual,
        selectedItemColor: Colors.green,
        onTap: cambioDePantalla,
      ),
    );
  }
}
