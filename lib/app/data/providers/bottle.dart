import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smart_lion_mobile/app/data/db_helper.dart';
import '../models/bottle.dart';

class BottleProvider {
  final http.Client httpClient;

  BottleProvider({required this.httpClient});

  Future<List<BottleModel>> getAll() async {
    final response = await httpClient.get(
      Uri.parse(DBHelper.API_URL+'/bottle/')
    );

    if(response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String, dynamic>parsedJson = jsonDecode(response.body); 

      Iterable parsedListJson = parsedJson["data"];

      List<BottleModel> bottleList = List<BottleModel>.from(parsedListJson.map((model)=> BottleModel.fromJson(model)));
      
      return bottleList;
    }else{
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Bottle');
    }
  }

  /// Faz um pedido HTTP GET para o servidor
  /// Caso o servidor encontre, retorna a Bottle com o id correspondente 
  Future<BottleModel> getFromId(int id) async {
    final response = await httpClient.get(
      Uri.parse(DBHelper.API_URL+'/bottle/'+id.toString())
    );

    if(response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return BottleModel.fromJson(jsonDecode(response.body)["data"]);
    }else{
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Bottle');
    }
  }

  /// Faz um pedido HTTP POST para o servidor
  /// Depois, o servidor tenta inserir a bottle na base de dados
  /// 
  /// Retorna o ID da bottle
  /// 
  /// author: Gabriel Fernandes 21/05/2022
  Future<int?> add(BottleModel bottle) async {
    final response = await httpClient.post(
      Uri.parse(DBHelper.API_URL+'/bottle/'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(bottle.toJson())
    );

    if(response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return BottleModel.fromJson(jsonDecode(response.body)["data"]).id; 
    }else{
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Bottle');
    }
  }

  void edit(obj) async {
    /// @TODO
  }

  void delete(int id) async {
    httpClient.delete(
      Uri.parse(DBHelper.API_URL+'/bottle/'+id.toString()),
    );
  }
}