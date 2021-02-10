import 'package:eureka_bank/pages/accounts_page.dart';
import 'package:eureka_bank/pages/movements_page.dart';
import 'package:eureka_bank/pages/transfer_page.dart';
import 'package:flutter/material.dart';

import 'package:eureka_bank/pages/login_page.dart';
import 'package:eureka_bank/pages/menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eureka Bank',
      initialRoute: 'movements',
      routes: {
        'login'     : (BuildContext context) => LoginPage(),
        'menu'      : (BuildContext context) => MenuPage(),
        'transfer'  : (BuildContext context) => TransferPage(),
        'accounts'  : (BuildContext context) => AccountsPage(),
        'movements'  : (BuildContext context) => MovementsPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}