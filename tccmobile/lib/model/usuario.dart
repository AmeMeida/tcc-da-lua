enum Deficiencia {
  motora,
  auditiva,
  visual,
  outra
}

const deficienciaToString = {
  Deficiencia.motora: "motora",
  Deficiencia.auditiva: "auditiva",
  Deficiencia.visual: "visual",
  Deficiencia.outra: "outra"
};

class User {
  String senha;
  String email;
  String usuario;
  String nome;
  String telefone;
  DateTime nascimento; 

  List<Deficiencia> deficiencias;

  bool hasDeficiencia(Deficiencia deficiencia) {
    return deficiencias.contains(deficiencia);
  }

  void toggleDeficiencia(Deficiencia deficiencia) {
    if (hasDeficiencia(deficiencia) == true) {
      deficiencias.add(deficiencia);
    }else{
      deficiencias.remove(deficiencia);
    }
  }

  //construtor
  User({required this.usuario, required this.nome, required this.senha, required this.email, required this.deficiencias, required this.telefone, required this.nascimento});
}

//array com todos os usuarios - vale a pena colocar o banco de dados em uma array e chamar ela depois? não soa seguro
List<User> users = [
    User(usuario: "cat", nome: "Catarina", senha: "12345", email: "catfagboni@gmail.com", deficiencias: [Deficiencia.auditiva], telefone: "991018190", nascimento: DateTime(2005, 09, 27)),
    User(usuario: "tbasso", nome: "Bania", senha: "0708", email: "tbasso@cotil.unicamp.br", deficiencias: [], telefone: "34413010", nascimento: DateTime(1990, 03, 26)),
    User(usuario: "babi", nome: "Babi", senha: "2206", email: "bab1aimy@gmail.com", deficiencias: [], telefone: "945863575", nascimento: DateTime(2006, 06, 22)),
    User(usuario: "nat", nome: "Nat", senha: "0000", email: "nat1234@gmail.com", deficiencias: [Deficiencia.motora], telefone: "992941707", nascimento: DateTime(2005, 05, 06)),
    User(usuario: "meieda", nome: "Meida", senha: "8888", email: "catarinaMeieda@email.com", deficiencias: [Deficiencia.outra, Deficiencia.visual], telefone: "3452-2032", nascimento: DateTime(1970, 07, 14))
];
