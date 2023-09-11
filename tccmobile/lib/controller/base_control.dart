abstract class Controller<T> {
  List<T> getAll();

  void update(T element);

  void remove(T element);
}