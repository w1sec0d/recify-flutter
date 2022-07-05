import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class ItemResiduoTipo extends StatelessWidget {
  final String tipo;

  const ItemResiduoTipo({
    Key? key,
    required this.tipo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color colorFondo = Colors.black;
    Icon iconoTipo = const Icon(Icons.question_mark);

    switch (tipo) {
      // Dependiendo del tipo de residuo se establece el subtitulo caracteristico
      case "Reciclable":
        iconoTipo = const Icon(
          FontAwesomeIcons.recycle,
          color: Colors.white,
        );
        colorFondo = Colors.grey;
        break;
      case "No Aprovechable":
        iconoTipo = const Icon(
          FontAwesomeIcons.trash,
          color: Colors.white,
        );
        colorFondo = Colors.black;
        break;
      case "Organico":
        iconoTipo = const Icon(
          FontAwesomeIcons.appleWhole,
          color: Colors.white,
        );
        colorFondo = Colors.green;
        break;

      default:
        iconoTipo = const Icon(
          FontAwesomeIcons.triangleExclamation,
          color: Colors.white,
        );
        colorFondo = Colors.red;
        break;
    }

    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: colorFondo),
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        clipBehavior: Clip.hardEdge,
        width: 180,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconoTipo,
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(
                tipo,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
