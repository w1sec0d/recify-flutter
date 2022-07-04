import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "item_residuo_tipo.dart";

class ItemResiduo extends StatelessWidget {
  final String nombre;
  final String tipo;
  final String imagen;

  const ItemResiduo(
      {Key? key,
      required this.nombre,
      required this.tipo,
      required this.imagen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemResiduoTipo subtituloResiduo = const ItemResiduoTipo(
        tipo: "Desconocido",
        iconoTipo: Icon(Icons.question_mark),
        colorFondo: Colors.black);

    switch (tipo) {
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
        title: Text(nombre),
        subtitle: subtituloResiduo,
        onTap: () => {},
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imagen),
          radius: 30,
        ),
        trailing: const Icon(Icons.arrow_right),
      ),
    );
  }
}
