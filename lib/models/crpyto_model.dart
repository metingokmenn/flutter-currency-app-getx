import 'dart:convert';

class CryptoModel {
  String? id;
  String? symbol;
  String? name;

  CryptoModel({
    this.id,
    this.symbol,
    this.name,
  });

  factory CryptoModel.fromJson(String str) =>
      CryptoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CryptoModel.fromMap(Map<String, dynamic> json) => CryptoModel(
        id: json["id"],
        symbol: json["symbol"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "symbol": symbol,
        "name": name,
      };
}
