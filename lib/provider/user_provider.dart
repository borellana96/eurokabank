import 'package:eureka_bank/models/movement_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:eureka_bank/models/user_model.dart';

class UserProvider {
  Future<UserModel> getUser() async {
    final response = await http.get(
        "https://fast-fjord-46080.herokuapp.com/api/clientes/signin"); //10.0.2.2:xxxx - xxxx: puerto de servidor
    //response.body retorna JSON

    //Debe retornar List<User>

    Map<String, dynamic> userModelMap = json.decode(response
        .body); //json.decode: retorna Map, en este caso List es List<Map>

    UserModel userModel = UserModel.fromJson(userModelMap);

    return userModel;
  }

  Future<List> getMovements() async {
    final response = await http.get("https://fast-fjord-46080.herokuapp.com/api/movimientos/listLast/00001");
    //response.body retorna JSON

    List liste = json.decode(response.body); //json.decode: retorna Map, en este caso List es List<Map>

    List<Movimiento> listaMovimientos =
        liste.map((i) => Movimiento.fromJson(i)).toList();

    return listaMovimientos;
  }
}
