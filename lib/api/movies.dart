//Clase que procesa del Json la lista de peliculas y las almacena en una lista

import 'package:apiflutter/api/movie.dart';

class Movies {
  Movies();

  static List<Movie> fromJsonList(List<dynamic> jsonList) {
    List<Movie> listaPeliculas = [];
    if (jsonList != null) {
      for (var pelicula in jsonList) {
        final movie = Movie.fromJson(pelicula);
        listaPeliculas.add(movie);
      }
    }
    return listaPeliculas;
  }
}
