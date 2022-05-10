import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/models/bottle.dart';
import 'package:smart_lion_mobile/app/data/models/oil_bin.dart';
import 'package:smart_lion_mobile/app/data/providers/bottle.dart';
import 'package:smart_lion_mobile/app/data/providers/oil_bin.dart';

class DepositModel {
  final int? id;
  final int bottleId;
  final int oilBinId;

  static const idAttrName = "sample_id";
  static const bottleIdAttrName = "bottle_id";
  static const oilBinIdAttrName = "oil_bin_id";

  DepositModel({
    this.id,
    required this.bottleId,
    required this.oilBinId,
  });

  static fromJson(Map<String, dynamic> jsonData) async => DepositModel(
        id: jsonData[idAttrName]!,
        bottleId: jsonData[bottleIdAttrName],
        oilBinId: jsonData[oilBinIdAttrName],
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id!,
        bottleIdAttrName: bottleId,
        oilBinIdAttrName: oilBinId,
      };
}
