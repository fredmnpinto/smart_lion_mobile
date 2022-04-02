class UserTypeModel {
  final int? id;
  final String type;

  static const idAttrName = "id";
  static const typeAttrName = "type";

  UserTypeModel({this.id, required this.type});

  factory UserTypeModel.fromJson(Map<String, dynamic> jsonData) =>
      UserTypeModel(id: jsonData[idAttrName]!, type: jsonData[typeAttrName]);

  Map<String, dynamic> toJson() => {
        idAttrName: id!,
        typeAttrName: type,
      };
}
