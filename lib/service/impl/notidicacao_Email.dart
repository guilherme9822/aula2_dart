import 'package:aula2_dart/service/notificacao_interface.dart';
import 'package:aula2_dart/class/pessoa.dart';

class NotificacaoEmail implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print('Enviando notificação por email para ${pessoa.getNome()}');
  }
}
