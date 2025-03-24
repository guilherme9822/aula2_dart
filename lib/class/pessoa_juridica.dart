import 'package:aula2_dart/class/pessoa.dart';
import 'package:aula2_dart/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  void setCpf(String cnpj) {
    _cnpj = cnpj;
  }

  String getCpf() {
    return _cnpj;
  }

  PessoaJuridica(
    String nome,
    String endereco,
    String cnpj, {
    TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM,
  }) : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = cnpj;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "CNPJ": _cnpj,
      "Tipo Notificacao": getTipoNotificacao(),
    }.toString();
  }
}
