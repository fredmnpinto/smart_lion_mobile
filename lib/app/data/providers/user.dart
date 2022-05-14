import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:http/http.dart' as http;
import 'package:smart_lion_mobile/app/data/db_helper.dart';

import '../models/user.dart';

class UserProvider {
  final http.Client httpClient;

  UserProvider({required this.httpClient});

  Future<List<UserModel>> getAll() async {
    return [];
  }

  Future<UserModel> getFromFirebaseUid(firebase_uid) async {
    final response = await httpClient.get(
      Uri.parse(DBHelper.API_URL+'/user/'+firebase_uid),
    );

    if(response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return UserModel.fromJson(jsonDecode(response.body));
    }else{
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Bottle');
    }
  }

  void add(UserModel user) async {
    httpClient.post(
      Uri.parse(DBHelper.API_URL+'/user'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user.toJson())
    );
  }

  void edit(obj) async {
    
  }

  void delete(obj) async {
    
  }
}