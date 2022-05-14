import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  int? id;
  final int userTypeId;
  final String firebaseUid;

  static const idAttrName = 'id';
  static const userTypeIdAttrName = 'user_type_id';
  static const firebaseUidAttrName = 'firebase_uid';

  UserModel({
    this.id,
    required this.userTypeId,
    required this.firebaseUid,
  });

  static fromJson(Map<String, dynamic> jsonData) async =>
      UserModel(
        id: jsonData[idAttrName],
        userTypeId: jsonData[userTypeIdAttrName],
        firebaseUid: jsonData[firebaseUidAttrName],
      );

  Map<String, dynamic> toJson() => {
        userTypeIdAttrName: userTypeId,
        firebaseUidAttrName: firebaseUid,
      };
}
