import 'package:http/http.dart' as http;

import '../models/liquid.dart';

class LiquidProvider {
  final http.Client httpClient;

  LiquidProvider({required this.httpClient});

  Future<List<LiquidModel>> getAll() async {
    return [];
  }

  Future<LiquidModel?> getId(id) async {
    return null;
  }

  void add(obj) async {

  }

  void edit(obj) async {

  }

  void delete(obj) async {

  }
}