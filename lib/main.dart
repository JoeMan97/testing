import 'package:flutter/material.dart';
import 'package:testing/infinite_loading.dart';
import 'package:testing/carousel_example.dart';

void main() => runApp(MaterialApp(
    initialRoute:
      '/carousel_example', // para propositos de desarrollo, estamos diciendo que esta ruta sera la que cargue primero
    routes: {
      '/infinite_loading': (context) => InfiniteLoading(), // La propiedad routes espera un Map, en donde el valor de la llave es una funcion, y esa funcion espera un parametro que es el context, el cual define en que parte del arbol de widgets estamos
      '/carousel_example': (context) => CarouselExample(),
    },
  )
);