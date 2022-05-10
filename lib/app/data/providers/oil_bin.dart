import 'dart:convert';

import 'package:http/http.dart' as http;

import '../db_helper.dart';
import '../models/oil_bin.dart';

class OilBinProvider {
  final http.Client httpClient;

  OilBinProvider({required this.httpClient});

  Future<List<OilBinModel>> getAll() async {
    return [];
  }

  Future<OilBinModel> getId(id) async {
    final response = await httpClient.get(
      Uri.parse(DBHelper.API_URL+'/oil-bin/'+id)
    );

    if(response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return OilBinModel.fromJson(jsonDecode(response.body));
    }else{
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Bottle');
    }
  }

  void add(OilBinModel oilBin) async {
    httpClient.post(
      Uri.parse(DBHelper.API_URL+'/oil-bin'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(oilBin.toJson())
    );
  }

  void edit(obj) async {

  }

  void delete(obj) async {

  }
}