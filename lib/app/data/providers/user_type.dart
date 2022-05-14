import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:http/http.dart' as http;
import 'package:smart_lion_mobile/app/data/db_helper.dart';

import '../models/user_type.dart';

class UserTypeProvider {
  final http.Client httpClient;

  UserTypeProvider({required this.httpClient});

  Future<List<UserTypeModel>> getAll() async {
    return [];
  }

  Future<UserTypeModel> getid(id) async {
    final response = await httpClient.get(
      Uri.parse(DBHelper.API_URL+'/user-type/'+id),
    );

    if(response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return UserTypeModel.fromJson(jsonDecode(response.body));
    }else{
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Bottle');
    }
  }

  void add(UserTypeModel userType) async {
    httpClient.post(
      Uri.parse(DBHelper.API_URL+'/user-type'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(userType.toJson())
    );
  }

  void edit(obj) async {
    
  }

  void delete(obj) async {
    
  }
}