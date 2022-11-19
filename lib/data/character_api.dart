import 'dart:async';
import 'package:http/http.dart' as http;

class CharacterApi {
  static Future getCharacters1() async {
    //https://jsonplaceholder.typicode.com/users
    return http.get(Uri.parse("https://jsonplaceholder.typicode.com/user"));
  }
  
}