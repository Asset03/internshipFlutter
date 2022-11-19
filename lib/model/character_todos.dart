class CharacterTodos {
  int id;
  String title;
  bool completed;

  CharacterTodos.fromJson(Map json)
      : id = json['id'],
        completed = json['completed'],
        title = json['title'];

  Map toJson() {
    return {'id': id, 'title': title,completed: 'completed'};
  }
}