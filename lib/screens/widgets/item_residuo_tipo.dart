import "package:flutter/material.dart";

class ItemResiduoTipo extends StatelessWidget {
  final String tipo;
  final Icon iconoTipo;
  final Color colorFondo;

  const ItemResiduoTipo(
      {Key? key,
      required this.tipo,
      required this.iconoTipo,
      required this.colorFondo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
