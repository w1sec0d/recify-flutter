import "package:flutter/material.dart";

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
        duration: Duration(milliseconds: 250), curve: Curves.easeIn);
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
          Center(
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
              padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: Text(
                "Soy un texto bonito",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            //El widget center centra todo
            child: Container(
              // El widget container se usa para cambiar la decoracion o posicion de otro widget
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.pinkAccent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                  )
                ],
              ),
              width: 200,
              height: 200,
              padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: Text(
                "Soy otro texto bonito",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            //El widget center centra todo
            child: Container(
              // El widget container se usa para cambiar la decoracion o posicion de otro widget
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                  )
                ],
              ),
              width: 200,
              height: 200,
              padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: Text(
                "Soy un texto feo :(",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
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
        currentIndex: _pantallaActual,
        selectedItemColor: Colors.green,
        onTap: cambioDePantalla,
      ),
    );
  }
}
