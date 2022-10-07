import 'package:flutter/material.dart';
import 'package:itonomise/modules/cadastro/models/autonomoModel.dart';
import 'package:itonomise/modules/cadastro/repositories/autonomoRepository.dart';

class CadastroAutController extends ChangeNotifier{

  final nome = TextEditingController();
  final cpf = TextEditingController();
  final senha = TextEditingController();
  final email = TextEditingController();
  final dtn = TextEditingController();
  final descricao = TextEditingController();
  final _repository = UsuarioRepositorie();

  void salvarOnPressed({
    required VoidCallback sucesso,
    required VoidCallback? Function(String motivo) falha,
  }) async {
    try {
      final usuario = AutonomoModel(
        nome: nome.text,
        cpf: cpf.text,
        senha: senha.text,
        email: email.text,
        dtn: dtn.text,
        descricao: descricao.text

      );
      await _repository.incluir(usuario);

      sucesso();
    } catch (e) {
      falha(e.toString());
    }
  }

}