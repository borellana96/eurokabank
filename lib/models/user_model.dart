// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String chrCliecodigo;
  String vchCliepaterno;
  String vchCliematerno;
  String vchClienombre;
  String chrCliedni;
  String vchClieciudad;
  String vchCliedireccion;
  String vchClietelefono;
  String vchClieusuario;
  String vchClieclave;
  String vchClieestado;

  UserModel({
    this.chrCliecodigo,
    this.vchCliepaterno,
    this.vchCliematerno,
    this.vchClienombre,
    this.chrCliedni,
    this.vchClieciudad,
    this.vchCliedireccion,
    this.vchClietelefono,
    this.vchClieusuario,
    this.vchClieclave,
    this.vchClieestado,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    chrCliecodigo   : json["chr_cliecodigo"],
    vchCliepaterno  : json["vch_cliepaterno"],
    vchCliematerno  : json["vch_cliematerno"],
    vchClienombre   : json["vch_clienombre"],
    chrCliedni      : json["chr_cliedni"],
    vchClieciudad   : json["vch_clieciudad"],
    vchCliedireccion: json["vch_cliedireccion"],
    vchClietelefono : json["vch_clietelefono"],
    vchClieusuario  : json["vch_clieusuario"],
    vchClieclave    : json["vch_clieclave"],
    vchClieestado   : json["vch_clieestado"],
  );

  Map<String, dynamic> toJson() => {
    "chr_cliecodigo"    : chrCliecodigo,
    "vch_cliepaterno"   : vchCliepaterno,
    "vch_cliematerno"   : vchCliematerno,
    "vch_clienombre"    : vchClienombre,
    "chr_cliedni"       : chrCliedni,
    "vch_clieciudad"    : vchClieciudad,
    "vch_cliedireccion" : vchCliedireccion,
    "vch_clietelefono"  : vchClietelefono,
    "vch_clieusuario"   : vchClieusuario,
    "vch_clieclave"     : vchClieclave,
    "vch_clieestado"    : vchClieestado,
  };
}
