class User{

  String senha;
  String usuario;

  //construtor
  User({required this.usuario, required this.senha});
}

List<User> users = [
    User(usuario: "cat", senha: "12345"),
    User(usuario: "tbasso", senha: "0708"),
    User(usuario: "babi", senha: "2206"),
    User(usuario: "nat", senha: "0000")
];