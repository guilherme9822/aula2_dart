import 'package:aula2_dart/service/notificacao_interface.dart';
import 'package:aula2_dart/class/pessoa.dart';

class NotificacaoPushNotification implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print('Enviando notificação push para ${pessoa.getNome()}');
  }
}
