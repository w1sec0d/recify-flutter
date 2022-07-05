import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:recify/data/residuos.dart';
import 'package:recify/screens/widgets/item_residuo_tipo.dart';
import "../data/marcadores.dart";
import "../logic/obtener_posicion_camara.dart";

class InfoResiduo extends StatelessWidget {
  final Residuo residuo;
  const InfoResiduo({Key? key, required this.residuo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Set<Marker> marcadoresFiltrados = {};
    for (var e in marcadoresResiduos) {
      if (e.tipos.contains(residuo.tipo)) {
        marcadoresFiltrados.add(e.marcador);
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                residuo.imagen,
                width: double.infinity, // Tan ancho como sea posible
                height: 300,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      residuo.nombre,
                      style: const TextStyle(
                          fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        "• Se degrada en: ${residuo.tiempoDegradacion}",
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    ItemResiduoTipo(tipo: residuo.tipo),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Text(
                        "${residuo.descripcion}. Puedes desecharlo aquí:",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    FutureBuilder(
                      future: obtenerPosicionCamara(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return SizedBox(
                            width: double.infinity,
                            height: 300,
                            child: GoogleMap(
                              initialCameraPosition: snapshot.data,
                              myLocationEnabled: true,
                              markers: marcadoresFiltrados,
                              mapType: MapType.normal,
                            ),
                          );
                        } else {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
