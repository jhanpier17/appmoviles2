import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/encabezado.dart';
import 'package:flutter_application_1/funciones.dart';
import 'cardList.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    child:  Cabeza(),
                  ),
                ],
              ),

              Stack(
                children: [
                  Container(
                    child:  CardList(),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    child:  Funciones(),
                  ),
                ],
              ),
            ],
          )
        ]
      ),
    );
  }
}