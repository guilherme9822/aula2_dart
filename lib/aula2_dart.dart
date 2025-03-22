import 'dart:convert';
import 'dart:io';

import 'package:aula2_dart/calculadora/calculadora.dart';

double lerConsoleDouble(String texto) {
  var numero = double.parse(lerConsole(texto));

  if (numero == "") {
    print("Numero informado incorreto, alterando para 0.");
    return 0.0;
  } else {
    return numero;
  }
}

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double sum(double numb1, double numb2) {
  return numb1 + numb2;
}

double sub(double numb1, double numb2) {
  return numb1 - numb2;
}

double mult(double numb1, double numb2) {
  return numb1 * numb2;
}

double div(double numb1, double numb2) {
  if (numb2 == 0) {
    print("Não é possivel dividir por 0.");
    exit(0);
  } else {
    return numb1 / numb2;
  }
}
