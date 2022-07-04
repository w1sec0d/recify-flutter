import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:recify/data/residuos.dart';

class InfoResiduo extends StatelessWidget {
  final Residuo residuo;
  const InfoResiduo({Key? key, required this.residuo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(residuo.nombre),
      ),
      body: Image.network(
        residuo.imagen,
        width: double.infinity,
        height: 300,
        fit: BoxFit.cover,
      ),
    );
  }
}
