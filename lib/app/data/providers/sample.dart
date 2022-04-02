import 'package:http/http.dart' as http;

import '../models/sample.dart';

class SampleProvider {
  final http.Client httpClient;

  SampleProvider({required this.httpClient});

  Future<List<SampleModel>> getAll() async {
    return [];
  }

  Future<SampleModel?> getId(id) async {
    return null;
  }

  void add(obj) async {

  }

  void edit(obj) async {

  }

  void delete(obj) async {

  }
}