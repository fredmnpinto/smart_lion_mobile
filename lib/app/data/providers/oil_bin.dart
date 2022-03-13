import 'package:http/http.dart' as http;

import '../models/oil_bin.dart';

class OilBinProvider {
  final http.Client httpClient;

  OilBinProvider({required this.httpClient});

  Future<List<OilBinModel>> getAll() async {
    return [];
  }

  Future<OilBinModel?> getId(id) async {
    return null;
  }

  void add(obj) async {

  }

  void edit(obj) async {

  }

  void delete(obj) async {

  }
}