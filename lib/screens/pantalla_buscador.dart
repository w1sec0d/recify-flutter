import "package:flutter/material.dart";
// Importa más iconos a FLutter
import 'package:recify/screens/widgets/buscador.dart';
import "package:recify/screens/widgets/item_residuo_tipo.dart";
import "package:recify/screens/info_residuo.dart";
import "package:recify/data/residuos.dart";

class PantallaBuscador extends StatefulWidget {
  const PantallaBuscador({Key? key}) : super(key: key);

  @override
  State<PantallaBuscador> createState() => _PantallaBuscadorState();
}

class _PantallaBuscadorState extends State<PantallaBuscador> {
  // Lista donde se iran guardando los residuos filtrados
  List<Residuo> residuosActuales = residuos;

  @override
  Widget build(BuildContext context) {
    // La widget de pantalla devuelve una columna con dos widgets, el buscador y la lista de residuos
    return Column(
      children: [
        Buscador(
            funcionBuscarResiduo:
                buscarResiduo), // Al buscador se le facilita una funcion que filtra el array de residuos
        Expanded(
          child: ListView.separated(
            // Una lista que mapea cada uno de los elementos de residuo en pantalla, y los separa con un elemento Divider()
            itemCount: residuosActuales.length,
            itemBuilder: (BuildContext context, int index) {
              final residuo = residuosActuales[index];

              return Container(
                // Se construye cada uno de los widgets que representan los elementos
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  title: Text(residuo.nombre),
                  subtitle: ItemResiduoTipo(tipo: residuo.tipo),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                InfoResiduo(residuo: residuo)))
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(residuo.imagen),
                    radius: 30,
                  ),
                  trailing: const Icon(Icons.arrow_right),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          ),
        ),
      ],
    );
  }

  void buscarResiduo(String busqueda) {
    // Lo que hace la funcion es buscar en el array de residuos inicial el residuo buscado, y establece el arrayfiltrado como estado del widget
    final sugerenciasDeBusqueda = residuos.where((residuo) {
      final nombreResiduo = residuo.nombre.toLowerCase();
      final input = busqueda.toLowerCase();

      return nombreResiduo.contains(input);
    }).toList();

    setState(() => residuosActuales = sugerenciasDeBusqueda);
  }
}
