import 'package:rick_and_morty/models/characters.dart';
import 'package:http/http.dart' as http;
import 'package:rick_and_morty/models/location.dart';
import 'package:rick_and_morty/models/results.dart';

class Service {
  
  static const base = 'https://rickandmortyapi.com/api/';
  Characters? charactersList;

  Future<List<Result>?> getAllCharacters() async {
    
    var response = await http.get(
      Uri.parse('${base}character'),
    );
    if (response.statusCode != 200) {
      
        
        return [];
      
    } else {
      final data = charactersFromJson(response.body);

      return data.results;
    }
  }


}
