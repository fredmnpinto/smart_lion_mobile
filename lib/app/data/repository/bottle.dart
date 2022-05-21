import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_lion_mobile/app/data/providers/bottle.dart';

import '../models/bottle.dart';

class BottleRepository {
  final BottleProvider apiBottle;

  BottleRepository({required this.apiBottle}) : assert(apiBottle != null);

  Future<BottleModel> getFromId(int id) {
    return apiBottle.getFromId(id);
  }

  Future<int?> add(BottleModel bottle) async {
    return await apiBottle.add(bottle);
  }

  Future<List<BottleModel>> getAll() {
    return apiBottle.getAll();
  }

  void delete(int id) {
    apiBottle.delete(id);
  }
}