import 'package:tccmobile/model/usuario.dart';

class UserControl {
  User? _loggedUser;

  List<User> getAll() => users;

  User? get loggedUser => _loggedUser;

  void login(String email, String password) {
    _loggedUser = users.firstWhere((element) => element.usuario == email && element.senha == password);
  }
}

final userControl = UserControl();
