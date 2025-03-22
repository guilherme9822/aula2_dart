import 'dart:io';
import 'package:aula2_dart/aula2_dart.dart' as utils;

void calculadora() {
  print("Seja Bem vindo a  Calculadora!!");
  var numb1 = utils.lerConsoleDouble("Digite seu primeiro Numero:");
  var numb2 = utils.lerConsoleDouble("Digite seu segundo Numero:");
  var opera = utils.lerConsole("Imforme a Operação Matemática (+,-,*,/):");
  double resultado = 0;

  switch (opera) {
    case "+":
      resultado = utils.sum(numb1, numb2);
      break;
    case "-":
      resultado = utils.sub(numb1, numb2);
      break;
    case "*":
      resultado = utils.mult(numb1, numb2);
      break;
    case "/":
      resultado = utils.div(numb1, numb2);
      break;
    default:
      print("Operação invalida!");
      exit(0);
  }
  print("O resultado do Calculo foi: $resultado");
}
