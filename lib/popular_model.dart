import 'dart:convert';

import 'package:rest_api/Result.dart';

class PopularMovies{

  int page;
  List<Result> results;
  int totalPages;
  int totalResults;


  PopularMovies({
    required  this.page,
    required  this.results,
    required  this.totalPages,
    required  this.totalResults,
  });

  factory PopularMovies.fromJson(Map<String, dynamic> json) => PopularMovies(
    page: json["page"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    totalPages: json["total_pages"],
    totalResults: json["total_results"],
  );


}