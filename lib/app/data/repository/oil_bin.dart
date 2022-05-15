import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_lion_mobile/app/data/providers/oil_bin.dart';

import '../models/oil_bin.dart';

class OilBinRepository {
  final OilBinProvider api;

  OilBinRepository({required this.api});

  getFromId(int id) {
    return api.getId(id);
  }

  void add(OilBinModel oilBin) {
    api.add(oilBin);
  }

  Future<List<OilBinModel>> getAll() {
    return api.getAll();
  }
}