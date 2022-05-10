import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_lion_mobile/app/data/providers/deposit.dart';

import '../models/deposit.dart';

class DepositRepository {
  final DepositProvider api;

  DepositRepository({required this.api});

  getFromId(int id) {
    return api.getId(id);
  }

  add(DepositModel deposit) {
    api.add(deposit);
  }
}