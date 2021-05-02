import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cabeza extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                width: 250.00,
                height: 80.00,
                child: Text(
                  'Discover',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                    ),
                ),
              ),
              Container(
                height: 20.0,
                width: 20.0,
                //margin: EdgeInsets.only(top: 10.0, left: 20.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("images/filtro.png")
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  shape: BoxShape.rectangle,
                ),
              ),
            ],
          ),
        ]
      );
  }
}
