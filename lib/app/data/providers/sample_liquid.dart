import 'package:http/http.dart' as http;

import '../models/sample_liquid.dart';

class SampleLiquidProvider {
  final http.Client httpClient;

  SampleLiquidProvider({required this.httpClient});

  Future<List<SampleLiquidModel>> getAll() async {
    return [];
  }

  Future<SampleLiquidModel?> getId(id) async {
    return null;
  }

  void add(obj) async {

  }

  void edit(obj) async {

  }

  void delete(obj) async {

  }
}