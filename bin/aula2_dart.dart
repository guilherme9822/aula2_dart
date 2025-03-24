import 'package:aula2_dart/class/pessoa_fisica.dart';
import 'package:aula2_dart/class/pessoa_juridica.dart';
import 'package:aula2_dart/enum/tipo_notificacao.dart';
import 'package:aula2_dart/service/enviar_Notificacao.dart';

void main() {
  var pessoaFisica1 = PessoaFisica(
    "Danilo",
    "Rua do Caja.",
    "000.000.000-00",
    tipoNotificacao: TipoNotificacao.PUSH_NOTIFICATION,
  );
  print(pessoaFisica1);

  var pessoaJuridica1 = PessoaJuridica(
    "Empresa1",
    "Rua 2",
    "333.333.333-33",
    tipoNotificacao: TipoNotificacao.EMAIL,
  );
  print(pessoaJuridica1);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaFisica1);

  enviarNotificacao.notificar(pessoaJuridica1);
}
