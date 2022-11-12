import 'dart:convert';

import 'package:http/http.dart' as http;

import 'popular_model.dart';


class ApiProvider {
  String apiKey = "d18cb8a229a6e2ff4023557d6a0a73ff";
  String baseUrl = "https://api.themoviedb.org/3/movie/popular?";
  late int id;
  Future<PopularMovies> getMovies() async {
    var response = await http.get(Uri.parse("${baseUrl}api_key=$apiKey"));
    return  PopularMovies.fromJson(json.decode(response.body));
  }
}