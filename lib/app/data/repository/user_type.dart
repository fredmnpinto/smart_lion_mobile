import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_lion_mobile/app/data/providers/user_type.dart';

import '../models/user_type.dart';

class UserTypeRepository {
  final UserTypeProvider apiUserType;

  UserTypeRepository({required this.apiUserType});

  getFromId(int id) {
    return apiUserType.getid(id);
  }

  add(UserTypeModel userType) {
    apiUserType.add(userType);
  }
}