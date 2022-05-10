import 'dart:convert';

import 'package:http/http.dart' as http;

import '../db_helper.dart';
import '../models/deposit.dart';

class DepositProvider {
  final http.Client httpClient;

  DepositProvider({required this.httpClient});

  Future<List<DepositModel>> getAll() async {
    return [];
  }

  Future<DepositModel> getId(id) async {
    final response = await httpClient.get(
      Uri.parse(DBHelper.API_URL+'/deposit/'+id)
    );

    if(response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return DepositModel.fromJson(jsonDecode(response.body));
    }else{
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Bottle');
    }
  }

  void add(DepositModel deposit) async {
    httpClient.post(
      Uri.parse(DBHelper.API_URL+'/deposit'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(deposit.toJson())
    );
  }

  void edit(obj) async {

  }

  void delete(obj) async {

  }
}