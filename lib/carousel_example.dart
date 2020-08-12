import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CarouselSlider(
        options: CarouselOptions(
          height: 200,
          viewportFraction: 8/10, // fraccion que ocupa cada pagina del Carousel
          aspectRatio: 16/9,
          enlargeCenterPage: true, // crea el efecto de profundidad

          enableInfiniteScroll: true,

          autoPlay: true, // paso automatico de una pagina a otra
          autoPlayCurve: Curves.fastOutSlowIn, // tipo de animacion
          autoPlayAnimationDuration: Duration(milliseconds: 600),
        ),
        items: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[200],
            ),
          )
        ],
      ),
    );
  }
}