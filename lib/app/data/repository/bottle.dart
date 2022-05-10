import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_lion_mobile/app/data/providers/bottle.dart';

import '../models/bottle.dart';

class BottleRepository {
  final BottleProvider apiBottle;

  BottleRepository({required this.apiBottle}) : assert(apiBottle != null);

  getFromId(int id) {
    return apiBottle.getFromId(id);
  }

  add(BottleModel bottle) {
    apiBottle.add(bottle);
  }
}