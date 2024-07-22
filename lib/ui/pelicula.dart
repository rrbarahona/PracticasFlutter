//Muestra los detalles de las peliculas (imagen y resumen)

import 'package:flutter/material.dart';
import 'package:apiflutter/api/movie.dart';

class Pelicula extends StatelessWidget {
  final Movie movie;

  Pelicula({required this.movie}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.movie.title),
        ),
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: <Widget>[
            Image.network(this.movie.getImage()),
            Text(this.movie.overview)
          ],
        ));
  }
}
