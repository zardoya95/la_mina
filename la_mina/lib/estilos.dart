import 'package:flutter/material.dart';

class ModoInterface {
  late Color colorPrimario;
  late Color colorSecundario;
  late String imagenFondo;
  late String logo;
}

class ModoClaro extends ModoInterface {
  ModoClaro() {
    colorPrimario = const Color(0xFF085394);
    colorSecundario = Colors.white;
    imagenFondo = 'assets/Imagenes/1.png';
    logo = 'assets/Imagenes/LA MINA claro.png';
  }
}

class ModoOscuro extends ModoInterface {
  ModoOscuro() {
    colorPrimario = Colors.white;
    colorSecundario = const Color(0xFF085394);
    imagenFondo = 'assets/Imagenes/2.png';
    logo = 'assets/Imagenes/LA MINA oscuro.png';
  }
}
