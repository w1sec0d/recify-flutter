import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recify/screens/widgets/item_residuo_tipo.dart';
import "info_residuo.dart";
import '../data/residuos.dart';

class Buscador extends StatefulWidget {
  const Buscador({Key? key}) : super(key: key);

  @override
  State<Buscador> createState() => _BuscadorState();
}

class _BuscadorState extends State<Buscador> {
  List<Residuo> residuosActuales = residuos;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 233, 231, 231),
          ),
          margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: "Busca un residuo",
                    border: InputBorder.none,
                  ),
                  onChanged: buscarResiduo,
                ),
              ),
              const Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Color.fromARGB(255, 124, 123, 123),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: residuosActuales.length,
            itemBuilder: (BuildContext context, int index) {
              final residuo = residuosActuales[index];
              ItemResiduoTipo subtituloResiduo = const ItemResiduoTipo(
                tipo: "desconocido",
                iconoTipo: Icon(Icons.question_mark),
                colorFondo: Colors.black,
              );

              switch (residuo.tipo) {
                case "reciclable":
                  subtituloResiduo = const ItemResiduoTipo(
                      tipo: "Reciclable",
                      iconoTipo: Icon(
                        FontAwesomeIcons.recycle,
                        color: Colors.white,
                      ),
                      colorFondo: Colors.grey);
                  break;
                case "no-aprovechable":
                  subtituloResiduo = const ItemResiduoTipo(
                      tipo: "No Aprovechable",
                      iconoTipo: Icon(
                        FontAwesomeIcons.trash,
                        color: Colors.white,
                      ),
                      colorFondo: Colors.black);
                  break;
                case "organico":
                  subtituloResiduo = const ItemResiduoTipo(
                      tipo: "Organico",
                      iconoTipo: Icon(
                        FontAwesomeIcons.appleWhole,
                        color: Colors.white,
                      ),
                      colorFondo: Colors.green);
                  break;
                case "especial":
                  subtituloResiduo = const ItemResiduoTipo(
                      tipo: "Especial",
                      iconoTipo: Icon(
                        FontAwesomeIcons.triangleExclamation,
                        color: Colors.white,
                      ),
                      colorFondo: Colors.orange);
                  break;
              }

              return Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  title: Text(residuo.nombre),
                  subtitle: subtituloResiduo,
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
    final sugerenciasDeBusqueda = residuos.where((residuo) {
      final nombreResiduo = residuo.nombre.toLowerCase();
      final input = busqueda.toLowerCase();

      return nombreResiduo.contains(input);
    }).toList();

    setState(() => residuosActuales = sugerenciasDeBusqueda);
  }
}
