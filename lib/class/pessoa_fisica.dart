import 'package:aula2_dart/class/pessoa.dart';
import 'package:aula2_dart/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  PessoaFisica(
    String nome,
    String endereco,
    String cpf, {
    TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM,
  }) : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "CPF": _cpf,
      "Tipo Notificacao": getTipoNotificacao(),
    }.toString();
  }
}
