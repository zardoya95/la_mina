import 'package:flutter/material.dart';

class ModoInterface {
  late Color colorPrimario; //= Colors.blue;
  late Color colorSecundario; //= Colors.white;
}

class ModoClaro extends ModoInterface {
  ModoClaro() {
    colorPrimario = const Color(0xFF085394);
    colorSecundario = Colors.white;
  }
}

class ModoOscuro extends ModoInterface {
  ModoOscuro() {
    colorPrimario = Colors.white;
    colorSecundario = const Color(0xFF085394);
  }
}
