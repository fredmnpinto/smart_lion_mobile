import 'package:http/http.dart' as http;

import '../models/sample_review.dart';

class SampleReviewProvider {
  final http.Client httpClient;

  SampleReviewProvider({required this.httpClient});

  Future<List<SampleReviewModel>> getAll() async {
    return [];
  }

  Future<SampleReviewModel?> getId(id) async {
    return null;
  }

  void add(obj) async {

  }

  void edit(obj) async {

  }

  void delete(obj) async {

  }
}