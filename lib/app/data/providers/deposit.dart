import 'package:http/http.dart' as http;

import '../models/deposit.dart';

class DepositProvider {
  final http.Client httpClient;

  DepositProvider({required this.httpClient});

  Future<List<DepositModel>> getAll() async {
    return [];
  }

  Future<DepositModel?> getId(id) async {
    return null;
  }

  void add(obj) async {

  }

  void edit(obj) async {

  }

  void delete(obj) async {

  }
}