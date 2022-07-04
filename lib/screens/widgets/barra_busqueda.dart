import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarraBusqueda extends StatelessWidget {
  const BarraBusqueda({Key? key}) : super(key: key);

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
          const Expanded(
              child: TextField(
            decoration: const InputDecoration(
                hintText: "Busca un residuo", border: InputBorder.none),
          )),
          const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Color.fromARGB(255, 124, 123, 123),
          )
        ],
      ),
    );
  }
}
