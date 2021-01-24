import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  TransferPage({Key key}) : super(key: key);

  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(92, 162, 175, 1),
          title: tituloTransfer()),
      body: Container(),
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
}
