import 'package:http/http.dart' as http;

import '../models/bottle.dart';

class BottleProvider {
  final http.Client httpClient;

  BottleProvider({required this.httpClient});

  Future<List<BottleModel>> getAll() async {
    return [];
  }

  Future<BottleModel?> getId(id) async {
    return null;
  }

  void add(obj) async {

  }

  void edit(obj) async {

  }

  void delete(obj) async {

  }
}