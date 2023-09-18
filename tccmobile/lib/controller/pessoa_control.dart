import 'package:tccmobile/model/pessoa.dart';

class PessoaController {
  final List<Pessoa> _pessoas = [];

  void adicionar(Pessoa pessoa) {
    _pessoas.add(pessoa);
  }

  Pessoa getByRA(int ra) {
    for (final pessoa in _pessoas) {
      if (pessoa.ra == ra.toString()) return pessoa;
    }

    throw Exception("RA não encontrado.");
  }

  void login(String nome, int ra) {
    for (final pessoa in _pessoas) {
      if (pessoa.nome == nome) {
        if (pessoa.ra == ra.toString()) {
          return;
        } else {
          throw Exception("RA incorreto!");
        }
      }
    }

    throw Exception("Pessoa não encontrada.");
  }

  bool hasRA(int ra) {
    for (final pessoa in _pessoas) {
      if (pessoa.ra == ra.toString()) return true;
    }

    return false;
  }

  void printarPessoas() {
    for (final pessoa in _pessoas) {
      print("${pessoa.nome}\n");
    }
  }
}

final pessoaControl = PessoaController();
