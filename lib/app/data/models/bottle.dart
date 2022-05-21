class BottleModel {
  final int? id;
  final String firebaseUid;
  final String qrCode;

  static const idAttrName = "ID";
  static const firebaseUidAttrName = 'firebase_uid';
  static const qrCodeAttrName = "qr_code";

  BottleModel({
    this.id,
    required this.firebaseUid,
    required this.qrCode,
  });

  factory BottleModel.fromJson(Map<String, dynamic> jsonData) => BottleModel(
        id: jsonData[idAttrName],
        firebaseUid: jsonData[firebaseUidAttrName].toString(),
        qrCode: jsonData[qrCodeAttrName],
      );

  Map<String, dynamic> toJson() => {
        firebaseUidAttrName: firebaseUid.toString(),
        qrCodeAttrName: qrCode.toString()
      };
}
