

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cardImg.dart';

class CardList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 0.0,
          ),
          height: 540.0,
          child: ListView(
            padding: EdgeInsets.all(25.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              CardImg("images/chica1.jpg","Kathryn Diaz, 21",
              "📌Baños, Ecuador.","Matematica, Fotografica, Ciclista."),
              CardImg("images/chica2.jpg","Paola Merino, 19",
              "📌Quito, Ecuador.","Cientifica, Camarografa, Ciclista."),
              CardImg("images/chico1.jpg","Estiven Ladino, 30",
              "📌Bogota, Colombia.","Fisico, Actor, Ciclista."),
              CardImg("images/chico1.webp","Pablo Romero, 16",
              "📌Manabi, Ecuador.","Programador, Youtuber, Ciclista."),
            ],
          ),
        ),
      ],
    );
  }
}