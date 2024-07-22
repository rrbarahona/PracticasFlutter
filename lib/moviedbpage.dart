//Muestra el listado de las peliculas mas valoradas
//Llama a TheMovieDBService
//En el caso de no tener información llama a SpinnerWidget
//que muestra la imagen de "procesando"

import 'package:flutter/material.dart';
import 'package:apiflutter/api/themoviedbservice.dart';
import 'package:apiflutter/ui/cajapelicula.dart';
import 'package:apiflutter/ui/spinnerwidget.dart';

class MovieDBPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Peliculas más valoradas'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: FutureBuilder(
          future: TheMovieDBService.getTopRatedMovies(),
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var pelicula = snapshot.data![index];
                  return CajaPelicula(peli: pelicula);
                },
              );
            } else {
              return SpinnerWidget();
            }
          },
        ));
  }
}
