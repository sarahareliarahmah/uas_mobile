import 'dart:convert';
import 'package:project_uas/model/berita.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


// }

class Repository {
  final String apiUrl =
      "https://berita-be12b-default-rtdb.firebaseio.com/berita.json";

  Future<List<Berita>> fetchDataPlaces() async {
    Response response = await http.get(Uri.parse(apiUrl));
    List<Berita> dataPlaces;
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(response.body);

      dataPlaces = jsonData.values.map((value) {
        return Berita.fromJson(value);
      }).toList();

      return dataPlaces;
    } else {
      throw Exception('Failed to load data places');
    }
  }

  Future<Berita> fetchDataByName(String name) async {
    String specificUrl = "$apiUrl?orderBy=\"Nama\"&equalTo=\"$name\"";
    Response response = await http.get(Uri.parse(specificUrl));
    Berita dataPlace;

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(response.body);

      // Check if any data is found
      if (jsonData.isNotEmpty) {
        // Assuming the data is stored as a map, get the first item
        MapEntry<String, dynamic> entry = jsonData.entries.first;

        dataPlace = Berita.fromJson(entry.value);
        return dataPlace;
      } else {
        throw Exception('Data with name $name not found');
      }
    } else {
      throw Exception('Failed to load data places');
    }
  }
}