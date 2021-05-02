import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Funciones extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 40),
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("images/cerrar.png")
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              Container(
                height: 30.0,
                width: 30.0,
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("images/message.png")
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              Container(
                height: 30.0,
                width: 30.0,
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("images/user.png")
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
            ],
          ),
        ]
      );
  }
}
