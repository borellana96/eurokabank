import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _id = "";
  String _contrasena = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 15.0),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("EurekaBank",
                style: TextStyle(fontSize: 24, color: Colors.black54)
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset("assets/banking_service-512.png",
                width: 180)
              ),
              SizedBox(
                height: 20,
              ),
              widgetUsuario(),
              SizedBox(
                height: 15,
              ),
              widgetContrasena(),
              SizedBox(
                height: 20,
              ),
              widgetBotonIniciarSesion(),
            ],
          ),
        ),
      ),
    );
  }

  Widget widgetUsuario() {
    return Container(
      width: 265,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0), //Borde de la caja
          ),
          prefixIcon: Icon(Icons.perm_identity, size: 24), //Icono al inicio de la caja
          hintText: "Usuario", //Placeholder de una web
          isDense: true, // Added this
          contentPadding: EdgeInsets.symmetric(vertical: 0)
        ),
        onChanged: (valor) {
          setState(() {
            _id = valor;
          });
        },
      ),
    );
  }

  Widget widgetContrasena() {
    return Container(
      width: 265,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0), //Borde de la caja
          ),
          prefixIcon: Icon(Icons.lock), //Icono al inicio de la caja
          hintText: "Contraseña", //Placeholder de una web
          isDense: true, // Added this
          contentPadding: EdgeInsets.all(0)),
        onChanged: (valor) {
          setState(() {
            _contrasena = valor;
          });
        },
      ),
    );
  }

  Widget widgetBotonIniciarSesion() {
    return Container(
      width: 265,
      child: RaisedButton(
        elevation: 7.0,
        onPressed: () {
          print("Datos ingresados: ");
          print("Id: $_id / Contraseña: $_contrasena");
          verificarLogin();
        },
        padding: EdgeInsets.all(13.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Color.fromRGBO(92, 162, 175, 1),
        child: Text(
          'Iniciar Sesión',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  void verificarLogin() {
    print("GO");
  }
}
