import "package:flutter/material.dart";
import 'package:recify/screens/widgets/barra_busqueda.dart';
import 'package:recify/screens/widgets/item_residuo.dart';
import '../data/residuos.dart';

class Buscador extends StatefulWidget {
  const Buscador({Key? key}) : super(key: key);

  @override
  State<Buscador> createState() => _BuscadorState();
}

class _BuscadorState extends State<Buscador> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BarraBusqueda(),
        Expanded(
          child: ListView.separated(
            itemCount: residuos.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemResiduo(
                  nombre: residuos[index].nombre,
                  tipo: residuos[index].tipo,
                  imagen: residuos[index].imagen);
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          ),
        ),
      ],
    );
  }
}
