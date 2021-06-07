import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Iconos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.0,
        padding: EdgeInsets.only(right: 20.0, left: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/google.png'),
            Image.asset('images/facebook.png'),
            Image.asset('images/gorjeo.png'),
            Image.asset('images/instagram.png'),
          ],
        )
    );
  }
}
