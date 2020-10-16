// eine kleine Datenklasse für ein einzelnes Todo-Item
class TodoItem {
  String text;
  int dauer;
  bool erledigt;

  TodoItem({
    this.text,
    this.dauer = 10,
    this.erledigt = false,
  });
}
