import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_lion_mobile/app/data/providers/user.dart';

class UserRepository {
  final UserProvider apiUser;

  UserRepository({required this.apiUser}) : assert(apiUser != null);

  getAll() {
    return apiUser.getAll();
  }
}