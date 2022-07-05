import "package:flutter/material.dart";

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Hola",
      textAlign: TextAlign.center,
      maxLines: 3,
      style: TextStyle(color: Colors.red),
    );
  }
}
