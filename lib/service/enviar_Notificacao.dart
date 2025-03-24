import 'package:aula2_dart/class/pessoa.dart';
import 'package:aula2_dart/enum/tipo_notificacao.dart';
import 'package:aula2_dart/service/impl/notidicacao_Email.dart';
import 'package:aula2_dart/service/impl/notificacao_PushNotification.dart';
import 'package:aula2_dart/service/impl/notificacao_SMS.dart';
import 'package:aula2_dart/service/notificacao_interface.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPushNotification();
        break;
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    } else {
      print("Pessoa sem tipo de notificação");
    }
  }
}
