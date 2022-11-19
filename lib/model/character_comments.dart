class CharacterComment {
  int postId;
  int id;
  String name;
  String email;
  String body;

  CharacterComment.fromJson(Map json)
      : id = json['id'],
        postId = json['postId'],
        name = json['name'],
        email = json['email'],
        body = json['body'];

  Map toJson() {
    return {'id': id, 'email': email, 'body': body,postId:'postId',name: 'name'};
  }
}