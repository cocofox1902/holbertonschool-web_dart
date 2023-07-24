import 'package:http/http.dart' as http;
import 'dart:convert';

printRmCharacters() async {
  try {
    var character =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    var characterJson = json.decode(character.body);
    var results = characterJson['results'];
    for (var result in results) {
      print(result['name']);
    }
  } catch (e) {
    print('error caught: $e');
  }
}
