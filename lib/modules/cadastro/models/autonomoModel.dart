import 'dart:convert';

class AutonomoModel {
    String? email;
    String? nome;
    String? senha;
    String? cpf;
    String? dtn;
    String? descricao;
  AutonomoModel({
    this.email,
    this.nome,
    this.senha,
    this.cpf,
    this.dtn,
    this.descricao,
  });

  AutonomoModel copyWith({
    String? email,
    String? nome,
    String? senha,
    String? cpf,
    String? dtn,
    String? descricao,
  }) {
    return AutonomoModel(
      email: email ?? this.email,
      nome: nome ?? this.nome,
      senha: senha ?? this.senha,
      cpf: cpf ?? this.cpf,
      dtn: dtn ?? this.dtn,
      descricao: descricao ?? this.descricao,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(email != null){
      result.addAll({'email': email});
    }
    if(nome != null){
      result.addAll({'nome': nome});
    }
    if(senha != null){
      result.addAll({'senha': senha});
    }
    if(cpf != null){
      result.addAll({'cpf': cpf});
    }
    if(dtn != null){
      result.addAll({'dtn': dtn});
    }
    if(descricao != null){
      result.addAll({'descricao': descricao});
    }
  
    return result;
  }

  factory AutonomoModel.fromMap(Map<String, dynamic> map) {
    return AutonomoModel(
      email: map['email'],
      nome: map['nome'],
      senha: map['senha'],
      cpf: map['cpf'],
      dtn: map['dtn'],
      descricao: map['descricao'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AutonomoModel.fromJson(String source) => AutonomoModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AutonomoModel(email: $email, nome: $nome, senha: $senha, cpf: $cpf, dtn: $dtn, descricao: $descricao)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AutonomoModel &&
      other.email == email &&
      other.nome == nome &&
      other.senha == senha &&
      other.cpf == cpf &&
      other.dtn == dtn &&
      other.descricao == descricao;
  }

  @override
  int get hashCode {
    return email.hashCode ^
      nome.hashCode ^
      senha.hashCode ^
      cpf.hashCode ^
      dtn.hashCode ^
      descricao.hashCode;
  }

  bool isValid() {
    if (nome == null || nome!.isEmpty) throw Exception("nome não informado");
    if (email == null || email!.isEmpty) throw Exception("email não informado");
    if (senha == null || senha!.isEmpty) throw Exception("senha não informada");
    if (cpf == null || cpf!.isEmpty) throw Exception("cpf não informada");
    if (dtn == null || dtn!.isEmpty) throw Exception("data de nascimento não informada");
    if (descricao == null || descricao!.isEmpty) throw Exception("descrição não informada");

    return true;
  }
}
