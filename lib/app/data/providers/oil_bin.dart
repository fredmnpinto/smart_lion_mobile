import 'dart:convert';

import 'package:http/http.dart' as http;

import '../db_helper.dart';
import '../models/oil_bin.dart';

class OilBinProvider {
  final http.Client httpClient;

  OilBinProvider({required this.httpClient});

  Future<List<OilBinModel>> getAll() async {
    final response = await httpClient.get(
      Uri.parse(DBHelper.API_URL+'/oil-bin/')
    );

    if(response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String, dynamic>parsedJson = jsonDecode(response.body); 

      Iterable parsedListJson = parsedJson["data"];

      List<OilBinModel> oilBinList = List<OilBinModel>.from(parsedListJson.map((model)=> OilBinModel.fromJson(model)));
      
      return oilBinList;
    }else{
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Bottle');
    }
  }
  
  Future<OilBinModel> getFromId(id) async {
    final response = await httpClient.get(
      Uri.parse(DBHelper.API_URL+'/oil-bin/'+id.toString())
    );

    if(response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return OilBinModel.fromJson(jsonDecode(response.body)["data"]);
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