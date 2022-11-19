class Character {
  int id;
  String title;
  String body;

  Character.fromJson(Map json)
      : id = json['id'],
        title = json['title'],
        body = json['body'];

  Map toJson() {
    return {'id': id, 'title': title, 'body': body};
  }
}
