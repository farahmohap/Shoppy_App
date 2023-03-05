import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetData {
  static List data = [];
  static getData() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));

    print(response.statusCode);
    data = jsonDecode(response.body); //map
  }
}
