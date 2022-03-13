import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/models/user.dart';
import 'package:smart_lion_mobile/app/data/providers/bottle.dart';

import '../providers/user.dart';

class BottleModel {
  final int? id;
  final UserModel? user;
  final DateTime insertDate;
  final DateTime updateDate;

  static const idAttrName = "id";
  static const userIdAttrName = "user_id";
  static const insertDateAttrName = "insert_date";
  static const updateDateAttrName = "update_date";

  BottleModel({
    this.id,
    required this.user,
    required this.insertDate,
    required this.updateDate,
  }) : assert(id == null || id > 0);

  static fromJson(Map<String, dynamic> jsonData) async => BottleModel(
        id: jsonData[idAttrName],
        user: (await Get.find<UserProvider>().getId(jsonData[userIdAttrName]))!,
        insertDate: DateTime.parse(jsonData[insertDateAttrName].toString()),
        updateDate: DateTime.parse(jsonData[updateDateAttrName].toString()),
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id,
        userIdAttrName: user?.id,
        insertDateAttrName: insertDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}
