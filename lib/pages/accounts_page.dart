import 'package:eureka_bank/pages/movements_page.dart';
import 'package:eureka_bank/pages/transfer_page.dart';
import 'package:flutter/material.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(92, 162, 175, 1),
          title: tituloAccounts()),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 30.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              cardListAccounts(context),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget tituloAccounts() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text("Lista de Cuentas"),
      ],
    );
  }

  Widget cardListAccounts(BuildContext context) {
    final sizeH = MediaQuery.of(context).size;
    final sizeV = MediaQuery.of(context).size;
    return Container(
      width: sizeH.width * 0.92,
      height: sizeV.height * 0.6,
      padding: EdgeInsets.symmetric(horizontal: 5),
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
                    tablaCuentas(context),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget tablaCuentas(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowHeight: 20,
        dataRowHeight: 40,
        columnSpacing: 8,
        horizontalMargin: 0,
        columns: <DataColumn>[
          DataColumn(
            label: Text(
              'Código',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          DataColumn(
            label: Text(
              'Moneda',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          DataColumn(
            label: Text(
              'Saldo',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          DataColumn(
            label: Text(
              'Estado',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          DataColumn(
            label: Text(
              'Acciones',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
        rows: <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('0020000002', style: TextStyle(fontSize: 11))),
              DataCell(Text('SOLES', style: TextStyle(fontSize: 11))),
              DataCell(Text('965.3', style: TextStyle(fontSize: 11))),
              DataCell(Text('ACTIVO', style: TextStyle(fontSize: 11))),
              DataCell(Container(
                child: Row(
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 15,
                      height: 25,
                      child: RaisedButton(
                          child:
                              Icon(Icons.sync, color: Colors.white, size: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TransferPage()),
                            );
                          },
                          color: Color.fromRGBO(92, 162, 175, 1)),
                    ),
                    ButtonTheme(
                      minWidth: 15,
                      height: 25,
                      child: RaisedButton(
                          child: Icon(Icons.featured_play_list,
                              color: Colors.white, size: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MovementsPage()),
                            );
                          },
                          color: Color.fromRGBO(92, 162, 175, 1)),
                    )
                  ],
                ),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('0020000003', style: TextStyle(fontSize: 11))),
              DataCell(Text('DÓLARES', style: TextStyle(fontSize: 11))),
              DataCell(Text('956.3', style: TextStyle(fontSize: 11))),
              DataCell(Text('ACTIVO', style: TextStyle(fontSize: 11))),
              DataCell(Container(
                child: Row(
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 15,
                      height: 25,
                      child: RaisedButton(
                          child:
                              Icon(Icons.sync, color: Colors.white, size: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TransferPage()),
                            );
                          },
                          color: Color.fromRGBO(92, 162, 175, 1)),
                    ),
                    ButtonTheme(
                      minWidth: 15,
                      height: 25,
                      child: RaisedButton(
                          child: Icon(Icons.featured_play_list,
                              color: Colors.white, size: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MovementsPage()),
                            );
                          },
                          color: Color.fromRGBO(92, 162, 175, 1)),
                    )
                  ],
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
