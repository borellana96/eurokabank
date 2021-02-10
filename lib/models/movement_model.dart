// To parse this JSON data, do
//
//     final movimiento = movimientoFromJson(jsonString);

import 'dart:convert';

List<Movimiento> movimientoFromJson(String str) =>
    List<Movimiento>.from(json.decode(str).map((x) => Movimiento.fromJson(x)));

String movimientoToJson(List<Movimiento> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Movimiento {
  Movimiento({
    this.chrCuencodigo,
    this.intMovinumero,
    this.dttMovifecha,
    this.chrEmplcodigo,
    this.chrCliecodigo,
    this.chrTipocodigo,
    this.decMoviimporte,
    this.chrCuenreferencia,
    this.tipoMovimiento,
  });

  String chrCuencodigo;
  int intMovinumero;
  DateTime dttMovifecha;
  dynamic chrEmplcodigo;
  String chrCliecodigo;
  String chrTipocodigo;
  double decMoviimporte;
  dynamic chrCuenreferencia;
  TipoMovimiento tipoMovimiento;

  factory Movimiento.fromJson(Map<String, dynamic> json) => Movimiento(
        chrCuencodigo: json["chr_cuencodigo"],
        intMovinumero: json["int_movinumero"],
        dttMovifecha: DateTime.parse(json["dtt_movifecha"]),
        chrEmplcodigo: json["chr_emplcodigo"],
        chrCliecodigo: json["chr_cliecodigo"],
        chrTipocodigo: json["chr_tipocodigo"],
        decMoviimporte: json["dec_moviimporte"],
        chrCuenreferencia: json["chr_cuenreferencia"],
        tipoMovimiento: TipoMovimiento.fromJson(json["tipoMovimiento"]),
      );

  Map<String, dynamic> toJson() => {
        "chr_cuencodigo": chrCuencodigo,
        "int_movinumero": intMovinumero,
        "dtt_movifecha": dttMovifecha.toIso8601String(),
        "chr_emplcodigo": chrEmplcodigo,
        "chr_cliecodigo": chrCliecodigo,
        "chr_tipocodigo": chrTipocodigo,
        "dec_moviimporte": decMoviimporte,
        "chr_cuenreferencia": chrCuenreferencia,
        "tipoMovimiento": tipoMovimiento.toJson(),
      };
}

class TipoMovimiento {
  TipoMovimiento({
    this.chrTipocodigo,
    this.vchTipodescripcion,
    this.vchTipoaccion,
    this.vchTipoestado,
  });

  String chrTipocodigo;
  String vchTipodescripcion;
  String vchTipoaccion;
  String vchTipoestado;

  factory TipoMovimiento.fromJson(Map<String, dynamic> json) => TipoMovimiento(
        chrTipocodigo: json["chr_tipocodigo"],
        vchTipodescripcion: json["vch_tipodescripcion"],
        vchTipoaccion: json["vch_tipoaccion"],
        vchTipoestado: json["vch_tipoestado"],
      );

  Map<String, dynamic> toJson() => {
        "chr_tipocodigo": chrTipocodigo,
        "vch_tipodescripcion": vchTipodescripcion,
        "vch_tipoaccion": vchTipoaccion,
        "vch_tipoestado": vchTipoestado,
      };
}
