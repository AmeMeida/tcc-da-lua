class Pessoa {
  String _nome;
  int _ra;

  String get nome {
    print("Nome está sendo pego");
    return _nome;
  }

  String get ra => _ra.toString();

  set nome(String nome) {
    if (nome == "catarina") {
      print("Não pode catarina.");
      throw Exception("catarina encontrada.");
    }

    _nome = nome;
  }

  Pessoa(this._nome, this._ra, String informacoesAdicionais) {
    print(informacoesAdicionais);
  }
}

Pessoa luanninha = Pessoa("Lua", 201174, "oi lua tudo bem com vc");

void darOiPraLua() {
  try {
    luanninha.nome = "catarina";
    print(luanninha.nome);
  } catch (smt) {
    print("nao ta podendo.");
  }
}
