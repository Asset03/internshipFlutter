class CharacterImage {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  CharacterImage.fromJson(Map json)
      : id = json['id'],
        albumId = json['albumId'],
        title = json['title'],
        url = json['url'],
        thumbnailUrl = json['thumbnailUrl'];

  Map toJson() {
    return {'id': id, 'title': title, 'url': url,albumId:'albumId',thumbnailUrl: 'thumbnailUrl'};
  }
}