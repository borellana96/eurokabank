import 'package:eureka_bank/pages/accounts_page.dart';
import 'package:eureka_bank/pages/movements_page.dart';
import 'package:eureka_bank/pages/transfer_page.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(92, 162, 175, 1),
        title: tituloMenu(),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            headerMenu(),
            Container(
              width: 300,
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 180,
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
                  tituloCard("Servicios"),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        botonServicio(Icons.account_balance_wallet,
                            "Ver Cuentas", context),
                        botonServicio(Icons.face, "Ver Perfil", context),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        botonServicio(Icons.cancel, "Cancelar Cuenta", context),
                        botonServicio(Icons.sync, "Transferir Dinero", context),
                      ],
                    ),
                  ),
                ],
              ),
            ), //Servicios
            SizedBox(height: 30),
            Container(
              width: 300,
              height: 180,
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
                  tituloCard("Últimos Movimientos"),
                  Container(
                    //only table
                    height: 120,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: <Widget>[
                            tablaUltimosMovimientos(),
                          ],
                        )),
                  ),
                ],
              ),
            ), //Últimos movimientos
          ],
        ),
      ),
    );
  }

  Widget tituloMenu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("MENU"),
      ],
    );
  }

  Widget headerMenu() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/icono-rostro.png"),
              radius: 50,
            ),
          ),
          Text(
            "Hola, Brian",
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

  Widget tituloCard(String titulo) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            titulo,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }

  Widget botonServicio(
      IconData icon, String tituloBoton, BuildContext context) {
    return Container(
      width: 100, //centrada de botones
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ButtonTheme(
            minWidth: 50,
            height: 40,
            child: RaisedButton(
                child: Icon(icon, color: Colors.white, size: 35),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  if (icon == Icons.sync) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TransferPage()),
                    );
                  } else if (icon == Icons.account_balance_wallet) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccountsPage()),
                    );
                  }
                },
                color: Color.fromRGBO(92, 162, 175, 1)),
          ),
          Text(tituloBoton,
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11))
        ],
      ),
    );
  }

  Widget tablaUltimosMovimientos() {
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
              '#',
              style: TextStyle(fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ),
          DataColumn(
            label: Text(
              'Fecha',
              style: TextStyle(fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ),
          DataColumn(
            label: Text(
              'Descripción',
              style: TextStyle(fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ),
          DataColumn(
            label: Text(
              'Acción',
              style: TextStyle(fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ),
          DataColumn(
            label: Text(
              'Importe',
              style: TextStyle(fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('1', style: TextStyle(fontSize: 11))),
              DataCell(Text('09/01/2008', style: TextStyle(fontSize: 11))),
              DataCell(
                  Text('Apertura de Cuenta', style: TextStyle(fontSize: 11))),
              DataCell(Text('INGRESO', style: TextStyle(fontSize: 11))),
              DataCell(Text('S/ 3800.00', style: TextStyle(fontSize: 11))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('1', style: TextStyle(fontSize: 11))),
              DataCell(Text('09/01/2008', style: TextStyle(fontSize: 11))),
              DataCell(
                  Text('Apertura de Cuenta', style: TextStyle(fontSize: 11))),
              DataCell(Text('INGRESO', style: TextStyle(fontSize: 11))),
              DataCell(Text('S/ 3800.00', style: TextStyle(fontSize: 11))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('1', style: TextStyle(fontSize: 11))),
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
