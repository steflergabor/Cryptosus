import 'dart:convert';

import 'package:flutter/cupertino.dart';

// Stores the relevant data of a Cryptocurrency
class Coin{
  final String id;
  // Short name of the crypto
  final String symbol;
  // Long name of the crypto
  final String name;
  // Price in USD
  var price;
  // Url that contains the image of the crypto
  final Uri url;

  Coin({this.id, this.symbol, this.name, this.price, this.url});

  // Creates a Coin object from a JSON file
  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
      id: json['id'],
      symbol: json['symbol'],
      name: json['name'],
      price: json['current_price'],
      url: Uri.parse(json['image']),
    );
  }
}

class CoinInfo{
  final String algorithm;
  final String description;

  CoinInfo({@required this.algorithm, @required this.description});

  factory CoinInfo.fromJson(Map<String, dynamic> json){
    return CoinInfo(
      algorithm: json['hashing_algorithm'],
      description: json['description']['en'],
    );
  }
}