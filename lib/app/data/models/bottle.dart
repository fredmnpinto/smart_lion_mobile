class BottleModel {
  final int? id;
  final int userId;
  final String qrCode;
  final DateTime registerDate;
  final DateTime updateDate;

  static const idAttrName = "id";
  static const userIdAttrName = "user_id";
  static const qrCodeAttrName = "qr_code";
  static const registerDateAttrName = "register_date";
  static const updateDateAttrName = "update_date";

  BottleModel({
    this.id,
    required this.userId,
    required this.qrCode,
    required this.registerDate,
    required this.updateDate,
  }) : assert(id == null || id > 0);

  static fromJson(Map<String, dynamic> jsonData) async => BottleModel(
        id: jsonData[idAttrName],
        userId: jsonData[userIdAttrName],
        qrCode: jsonData[qrCodeAttrName],
        registerDate: DateTime.parse(jsonData[registerDateAttrName].toString()),
        updateDate: DateTime.parse(jsonData[updateDateAttrName].toString()),
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id!,
        userIdAttrName: userId,
        registerDateAttrName: registerDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}
