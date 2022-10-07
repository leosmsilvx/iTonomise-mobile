

import 'package:itonomise/modules/cadastro/repositories/datasource/datasource.dart';

class MemoriaDataSource extends DataSourceBase {
  static List<Map<String, dynamic>> tabelaUser = [];
  @override
  Future<void> alterar(Map<String, dynamic> usuario) async {
    for (var i = 0; i < tabelaUser.length; i++) {
      if (tabelaUser[i]['email'] == usuario['email']) {
        tabelaUser[i]['nome'] = usuario['nome'];
        tabelaUser[i]['senha'] = usuario['senha'];
        tabelaUser[i]['cpf'] = usuario['cpf'];
        tabelaUser[i]['dtn'] = usuario['dtn']; // data de nascimento
        tabelaUser[i]['descricao'] = usuario['descricao'];
      }
    }
  }

  @override
  Future<void> excluir(Map<String, dynamic> usuario) async {
    tabelaUser.remove(usuario);
  }

  @override
  Future<void> incluir(Map<String, dynamic> usuario) async {
    tabelaUser.add(usuario);
  }

  @override
  Future<Map<String, dynamic>?> selecionar(String email) async {
    for (var usuario in tabelaUser) {
      if (usuario['email'] == email) {
        return usuario;
      }
    }
    return null;
  }

  @override
  Future<List<Map<String, dynamic>>> selecionarTodos() async {
    return tabelaUser;
  }
}