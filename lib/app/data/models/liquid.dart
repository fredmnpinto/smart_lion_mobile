import 'package:smart_lion_mobile/app/data/models/sample.dart';

class LiquidModel {
  final int? id;
  final String name;
  
  static const idAttrName = "id";
  static const nameAttrName = "name";

  LiquidModel({this.id, required this.name});
  
  factory LiquidModel.fromJson(Map<String, dynamic> jsonJata) =>
      LiquidModel(id: jsonJata[idAttrName]!, name: jsonJata[nameAttrName]);

  Map<String, dynamic> toJson() =>
      {
        idAttrName: id,
        nameAttrName: name,
      };
}