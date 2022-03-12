import 'package:smart_lion_mobile/app/data/models/user.dart';

class BottleModel {
  final int? id;
  final UserModel? user;

  static const idAttrName = "id";
  static const userIdAttrName = "user_id";


  BottleModel({this.id, required this.user}) : assert (id == null || id > 0);

  factory BottleModel.fromJson(Map<String, dynamic> jsonData) {
    // TODO: implement fromJson
    throw UnimplementedError();

    return BottleModel(id: jsonData[idAttrName], user: null);
  }

  Map<String, dynamic> toJson() => {
    idAttrName: id,
    userIdAttrName: user?.id,
  };

}