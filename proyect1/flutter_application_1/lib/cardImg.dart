import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CardImg extends StatelessWidget{
  String pathImage = "";
  String calificacion = "";
  String nombre = "";
  String descripcion = "";
  String ubicacion = "";
  


  CardImg(this.pathImage,this.nombre,this.ubicacion,this.descripcion);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 5,
      child: Column(
        children:<Widget>[
          //Imagen y forma de la imagen de scroll
          Container(
            height: 360.0,
            width: 260.0,
            margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(pathImage)
              ),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              shape: BoxShape.rectangle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 1.0)
                )
              ]
            ),
          ),

          //Titulo del lugar
          Container(
            margin: EdgeInsets.only(top: 8,left: 0, right: 80),
            child: 
            Text(
              this.nombre,
              style: 
              TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //descipcion del lugar
          Container(
            margin: EdgeInsets.only(top: 8,left: 0, right: 100),
            child: 
            Text(
              this.ubicacion,
              style: 
              TextStyle(
                fontSize: 17,
                color: Colors.black26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //ubicacion del lugar
          Container(
            padding: EdgeInsets.all(10),
            child: 
            Text(
              this.descripcion,
              textAlign: TextAlign.left,
              style: 
              TextStyle(
                fontSize: 17,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]
      ),
    );
  }
}