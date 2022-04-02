import 'package:http/http.dart' as http;

import '../models/user.dart';

class UserProvider {
  final http.Client httpClient;

  UserProvider({required this.httpClient});

  Future<List<UserModel>> getAll() async {
    return [];
  }

  Future<UserModel?> getId(id) async {
    return null;
  }

  void add(obj) async {
    
  }

  void edit(obj) async {
    
  }

  void delete(obj) async {
    
  }
}