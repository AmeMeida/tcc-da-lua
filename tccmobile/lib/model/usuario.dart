class User{

  String senha;
  String email;
  String usuario;

  //construtor
  User({required this.usuario, required this.senha, required this.email});
}

List<User> users = [
    User(usuario: "cat", senha: "12345", email: "catfagboni@gmail.com"),
    User(usuario: "tbasso", senha: "0708", email: "tbasso@cotil.unicamp.br"),
    User(usuario: "babi", senha: "2206", email: "bab1aimy@gmail.com"),
    User(usuario: "nat", senha: "0000", email: "nat1234@gmail.com")
];