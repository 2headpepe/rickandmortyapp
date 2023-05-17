import 'dart:convert';

import '../models/person.dart';
import 'package:http/http.dart' as http;

class PersonRepo {
  final url = 'https://rickandmortyapi.com/api/character';

  Future<Person> getPerson(int page, String name) async {
    try {
      var response = await http.get(Uri.parse('$url?page=$name'));
      var jsonResult = json.decode(response.body);
      return Person.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
