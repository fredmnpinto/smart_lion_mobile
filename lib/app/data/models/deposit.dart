import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/models/bottle.dart';
import 'package:smart_lion_mobile/app/data/models/oil_bin.dart';
import 'package:smart_lion_mobile/app/data/providers/bottle.dart';
import 'package:smart_lion_mobile/app/data/providers/oil_bin.dart';

class DepositModel {
  final int? id;
  final int bottleId;
  final int oilBinId;
  final DateTime registerDate;
  final DateTime updateDate;

  static const idAttrName = "sample_id";
  static const bottleIdAttrName = "bottle_id";
  static const oilBinIdAttrName = "oil_bin_id";
  static const registerDateAttrName = "register_date";
  static const updateDateAttrName = "update_date";

  DepositModel({
    this.id,
    required this.bottleId,
    required this.oilBinId,
    required this.registerDate,
    required this.updateDate,
  });

  static fromJson(Map<String, dynamic> jsonData) async => DepositModel(
        id: jsonData[idAttrName]!,
        bottleId: jsonData[bottleIdAttrName],
        oilBinId: jsonData[oilBinIdAttrName],
        registerDate: DateTime.parse(jsonData[registerDateAttrName].toString()),
        updateDate: DateTime.parse(jsonData[updateDateAttrName].toString()),
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id!,
        bottleIdAttrName: bottleId,
        oilBinIdAttrName: oilBinId,
        registerDateAttrName: registerDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}
