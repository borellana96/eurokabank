import 'package:flutter/material.dart';

class MovementsPage extends StatelessWidget {
  const MovementsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(92, 162, 175, 1),
          title: tituloMovements()),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            cardMyAmount(context),
            SizedBox(height: 40),
            movimientos(context),
          ],
        ),
      ),
    );
  }

  Widget tituloMovements() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text("Movimientos"),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Monto total:",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              ),
              Text(
                "S/ 569.00",
                style: TextStyle(
                  color: Color.fromRGBO(92, 162, 175, 1),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              )
            ],
          ),
          SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Número de Cuenta:",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              ),
              Text(
                "002000002",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget movimientos(BuildContext context) {
    final sizeH = MediaQuery.of(context).size;
    final sizeV = MediaQuery.of(context).size;
    return Container(
      width: sizeH.width * 0.88,
      height: sizeV.height * 0.5,
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
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ), //sombrilla
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            //only table
            height: 120,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    tablaMovimientos(),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget tablaMovimientos() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowHeight: 20,
        dataRowHeight: 30,
        columnSpacing: 8,
        horizontalMargin: 0,
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Fecha',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          DataColumn(
            label: Text(
              'Descripción',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          DataColumn(
            label: Text(
              'Acción',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          DataColumn(
            label: Text(
              'Importe',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('09/01/2008', style: TextStyle(fontSize: 11))),
              DataCell(
                  Text('Apertura de Cuenta', style: TextStyle(fontSize: 11))),
              DataCell(Text('INGRESO', style: TextStyle(fontSize: 11))),
              DataCell(Text('S/ 3800.00', style: TextStyle(fontSize: 11))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('09/01/2008', style: TextStyle(fontSize: 11))),
              DataCell(
                  Text('Apertura de Cuenta', style: TextStyle(fontSize: 11))),
              DataCell(Text('INGRESO', style: TextStyle(fontSize: 11))),
              DataCell(Text('S/ 3800.00', style: TextStyle(fontSize: 11))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('09/01/2008', style: TextStyle(fontSize: 11))),
              DataCell(
                  Text('Apertura de Cuenta', style: TextStyle(fontSize: 11))),
              DataCell(Text('INGRESO', style: TextStyle(fontSize: 11))),
              DataCell(Text('S/ 3800.00', style: TextStyle(fontSize: 11))),
            ],
          ),
        ],
      ),
    );
  }
}
