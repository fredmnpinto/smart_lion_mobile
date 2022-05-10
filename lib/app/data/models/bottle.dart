class BottleModel {
  final int? id;
  final String firebaseUid;
  final String qrCode;

  static const idAttrName = "id";
  static const firebaseUidAttrName = 'firebase_uid';
  static const qrCodeAttrName = "qrCode";

  BottleModel({
    this.id,
    required this.firebaseUid,
    required this.qrCode,
  }) : assert(id == null || id > 0);

  static fromJson(Map<String, dynamic> jsonData) async => BottleModel(
        id: jsonData[idAttrName],
        firebaseUid: jsonData[firebaseUidAttrName].toString(),
        qrCode: jsonData[qrCodeAttrName],
      );

  Map<String, dynamic> toJson() => {
        firebaseUidAttrName: firebaseUid.toString(),
        qrCodeAttrName: qrCode.toString()
      };
}
