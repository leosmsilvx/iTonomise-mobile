import 'package:itonomise/modules/cadastro/models/autonomoModel.dart';
import 'package:itonomise/modules/cadastro/repositories/datasource/datasource.dart';
import 'package:itonomise/modules/cadastro/repositories/datasource/memoriaDatasource.dart';

class UsuarioRepositorie {
  final DataSourceBase? _db = MemoriaDataSource();
  Future<void> incluir(AutonomoModel AutonomoModel) async {
    AutonomoModel.isValid();
    _db!.incluir(AutonomoModel.toMap());
  }

  Future<void> excluir(AutonomoModel AutonomoModel) async {
    AutonomoModel.isValid();
    _db!.excluir(AutonomoModel.toMap());
  }

  Future<void> alterar(AutonomoModel AutonomoModel) async {
    AutonomoModel.isValid();
    _db!.alterar(AutonomoModel.toMap());
  }

  Future<AutonomoModel?> selecionar(String email) async {
    final map = await _db!.selecionar(email);
    if (map == null) {
      return null;
    }
    return AutonomoModel.fromMap(map);
  }

  Future<List<AutonomoModel>> selecionarTodos() async {
    final maps = await _db!.selecionarTodos();
    var retorno = <AutonomoModel>[];
    for (var map in maps) {
      final usuario = AutonomoModel.fromMap(map);
      retorno.add(usuario);
    }
    return <AutonomoModel>[];
  }
}