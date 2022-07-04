import "package:flutter/material.dart";
import 'package:recify/screens/buscador.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pantallaActual = 0;
  PageController controladorDePantalla = PageController();

  void cambioDePantalla(int nuevoIndex) {
    setState(() {
      _pantallaActual = nuevoIndex;
    });
    controladorDePantalla.animateToPage(_pantallaActual,
        duration: const Duration(milliseconds: 250), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //El scaffold es la estructura basica de la app, dentro de el se especifica la barra de la app y el contenido de la app
      appBar: AppBar(
        title: const Text("Recify"),
        backgroundColor: Colors.lightGreen,
      ),

      body: PageView(
        controller: controladorDePantalla,
        onPageChanged: (nuevoIndex) {
          setState(() {
            _pantallaActual = nuevoIndex;
          });
        },
        children: <Widget>[
          Image.network(
            "https://pps.whatsapp.net/v/t61.24694-24/213739895_995813467969746_930655826706782599_n.jpg?ccb=11-4&oh=01_AVxHQl73KHtM9Us0ZwavPIPwMFlhR4LOjiMBSWUFcLQ_pQ&oe=62D26EA0",
            width: 300,
            height: 300,
            fit: BoxFit.scaleDown,
          ),
          const Buscador(),
          const Center(
            //El widget center centra todo
            child: Text("asd"),
          ),
        ],
      ),

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
        currentIndex: _pantallaActual,
        selectedItemColor: Colors.green,
        onTap: cambioDePantalla,
      ),
    );
  }
}
