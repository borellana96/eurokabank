import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  TransferPage({Key key}) : super(key: key);

  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  String _cuentaDestino = "";
  String _monto = "";
  String _contrasena = "";
  String _dropdownValue = "0020000002";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(92, 162, 175, 1),
          title: tituloTransfer()
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 30.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              cardMyAmount(context),
              SizedBox(height: 40),
              cardTransaction(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget tituloTransfer() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text("Transferencias"),
      ],
    );
  }

  Widget cardMyAmount(BuildContext context) {
    final sizeH = MediaQuery.of(context).size;
    final sizeV = MediaQuery.of(context).size;

    return Container(
      width: sizeH.width * 0.8,
      height: sizeV.height * 0.13,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white, //color de fondo
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            //sombrilla
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Monto total",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            ),
          ),
          SizedBox(height: 7),
          Text(
            "S/ 569.00 soles",
            style: TextStyle(
              color: Color.fromRGBO(92, 162, 175, 1),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            ),
          )
        ],
      ),
    );
  }

  Widget cardTransaction(BuildContext context) {
    final sizeH = MediaQuery.of(context).size;
    final sizeV = MediaQuery.of(context).size;

    return Container(
      width: sizeH.width * 0.8,
      height: sizeV.height * 0.40,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white, //color de fondo
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            //sombrilla
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          rowMyBill(),
          rowInputTransactionCuentaDestino(),
          rowInputTransactionMonto(),
          rowInputTransactionContrasena(),
          rowBotones()
        ],
      ),
    );
  }

  Widget rowMyBill() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("N° Cuenta Origen:", style: TextStyle(fontSize: 14)),
          dropDown()
        ],
      ),
    );
  }

  Widget rowInputTransactionCuentaDestino() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("N° Cuenta Destino:", style: TextStyle(fontSize: 14)),
          Container(
            width: 120,
            height: 25,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0.0), //Borde de la caja
                ),
              ),
              onChanged: (valor) {
                setState(() {
                  _cuentaDestino = valor;
                });
              },
            ),
          )
        ],
      ),
    );
  }

  Widget rowInputTransactionMonto() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Monto:", style: TextStyle(fontSize: 14)),
          Container(
            width: 120,
            height: 25,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0.0), //Borde de la caja
                ),
              ),
              onChanged: (valor) {
                setState(() {
                  _monto = valor;
                });
              },
            ),
          )
        ],
      ),
    );
  }

  Widget rowInputTransactionContrasena() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Contraseña:", style: TextStyle(fontSize: 14)),
          Container(
            width: 120,
            height: 25,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0.0), //Borde de la caja
                ),
              ),
              onChanged: (valor) {
                setState(() {
                  _contrasena = valor;
                });
              },
            ),
          )
        ],
      ),
    );
  }

  Widget rowBotones() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          boton("Cancelar", Color.fromRGBO(92, 162, 175, 1), Colors.white),
          boton("Transferir", Colors.white, Color.fromRGBO(92, 162, 175, 1)),
        ],
      ),
    );
  }

  Widget boton(String msjeBoton, Color colorLetra, Color colorFondo) {
    return Container(
      width: 120,
      child: RaisedButton(
        elevation: 2.0,
        onPressed: () {
          if (msjeBoton == "Cancelar") {
            print("Cancelar");
          } else {
            print("Transferir");
          }
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: colorFondo,
        child: Text(
          msjeBoton,
          style: TextStyle(
            color: colorLetra,
            fontSize: 14.0,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget dropDown() {
    return DropdownButton<String>(
      value: _dropdownValue,
      elevation: 16,
      style: TextStyle(color: Colors.black54, fontSize: 14),
      underline: Container(
        height: 2,
        color: Color.fromRGBO(92, 162, 175, 1),
      ),
      onChanged: (String newValue) {
        setState(() {
          _dropdownValue = newValue;
        });
      },
      items: <String>['0020000002', '0020000003', '0020000004']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
