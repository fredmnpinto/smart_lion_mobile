import 'package:http/http.dart' as http;

import '../models/review_state.dart';

class ReviewStateProvider {
  final http.Client httpClient;

  ReviewStateProvider({required this.httpClient});

  Future<List<ReviewStateModel>> getAll() async {
    return [];
  }

  Future<ReviewStateModel?> getId(id) async {
    return null;
  }

  void add(obj) async {

  }

  void edit(obj) async {

  }

  void delete(obj) async {

  }
}