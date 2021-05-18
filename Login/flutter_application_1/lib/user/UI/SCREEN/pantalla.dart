import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: <Widget>[
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(top: 30.0, left: 120.0),
                      height: 160.0,
                      width: 160.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/tigre.jpg")),
                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(top: 170.0, left: 10.0),
                      alignment: Alignment.center,
                      width: 380.00,
                      height: 60.00,
                      child: Text(
                        'Bienvenidos a Jhanpisoft',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                            ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(top: 215.0, left: 10.0),
                      alignment: Alignment.center,
                      width: 380.00,
                      height: 20.00,
                      child: Text(
                        "Conoce de las maravillas del lugar",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(child:
              Stack(
                children: [
                  Column(
                    children: [
                      _userTextField(),
                      SizedBox(
                        height: 10,
                      ),
                      _passwordTextField(),
                      SizedBox(
                        height: 10,
                      ),
                      _repetPasswordTextField(),
                      SizedBox(
                        height: 10,
                      ),
                      _bottonLogin(),
                      Container(
                        child: Text(
                          "o",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      _bottonRegister(),
                    ],
                  )
                ],
              ),
              ),
            ], //children
          ),
        ],
      ),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'ejemplo@correo.com',
            labelText: 'Correo electronico',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'Contraseña',
            labelText: 'Contraseña',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _repetPasswordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'Contraseña',
            labelText: 'Confirmar Contraseña',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
            child: Text(
              'Iniciar Sesion',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.amber,
          onPressed: () {});
    });
  }

  Widget _bottonRegister() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
            child: Text(
              'Registrarse',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          onPressed: () {});
    });
  }
}
