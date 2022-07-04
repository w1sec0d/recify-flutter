import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart"; // Importa más iconos a FLutter

class Buscador extends StatefulWidget {
  final ValueSetter<String> funcionBuscarResiduo;

  const Buscador({Key? key, required this.funcionBuscarResiduo})
      : super(key: key);

  @override
  State<Buscador> createState() => _BuscadorState();
}

class _BuscadorState extends State<Buscador> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              onChanged: widget.funcionBuscarResiduo,
            ),
          ),
          const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Color.fromARGB(255, 124, 123, 123),
          )
        ],
      ),
    );
  }
}
