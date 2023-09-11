enum Deficiencia {
  motora,
  auditiva,
  visual
}

const deficienciaToString = {
  Deficiencia.motora: "motora",
  Deficiencia.auditiva: "auditiva",
  Deficiencia.visual: "visual"
};

class User {
  String senha;
  String email;
  String usuario;
  String nome;

  List<Deficiencia> deficiencias;

  //construtor
  User({required this.usuario, required this.nome, required this.senha, required this.email, required this.deficiencias});
}

//array com todos os usuarios - vale a pena colocar o banco de dados em uma array e chamar ela depois? não soa seguro
List<User> users = [
    User(usuario: "cat", nome: "Catarina", senha: "12345", email: "catfagboni@gmail.com", deficiencias: []),
    User(usuario: "tbasso", nome: "Bania", senha: "0708", email: "tbasso@cotil.unicamp.br", deficiencias: []),
    User(usuario: "babi", nome: "Babi", senha: "2206", email: "bab1aimy@gmail.com", deficiencias: []),
    User(usuario: "nat", nome: "Nat", senha: "0000", email: "nat1234@gmail.com", deficiencias: [Deficiencia.motora]),
    User(usuario: "meieda", nome: "Meida", senha: "8888", email: "catarina@email.com", deficiencias: [])
];