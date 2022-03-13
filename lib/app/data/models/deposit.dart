import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/models/bottle.dart';
import 'package:smart_lion_mobile/app/data/models/oil_bin.dart';
import 'package:smart_lion_mobile/app/data/providers/bottle.dart';
import 'package:smart_lion_mobile/app/data/providers/oil_bin.dart';

class DepositModel {
  final int? id;
  final BottleModel bottle;
  final OilBinModel oilBin;
  final DateTime insertDate;
  final DateTime updateDate;

  static const idAttrName = "sample_id";
  static const bottleIdAttrName = "bottle_id";
  static const oilBinIdAttrName = "oil_bin_id";
  static const insertDateAttrName = "insert_date";
  static const updateDateAttrName = "update_date";

  DepositModel({
    this.id,
    required this.bottle,
    required this.oilBin,
    required this.insertDate,
    required this.updateDate,
  });

  static fromJson(Map<String, dynamic> jsonData) async => DepositModel(
        bottle: (await Get.find<BottleProvider>()
            .getId(jsonData[bottleIdAttrName]))!,
        oilBin: (await Get.find<OilBinProvider>()
            .getId(jsonData[oilBinIdAttrName]))!,
        insertDate: DateTime.parse(jsonData[insertDateAttrName].toString()),
        updateDate: DateTime.parse(jsonData[updateDateAttrName].toString()),
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id,
        bottleIdAttrName: bottle.id,
        oilBinIdAttrName: oilBin.id,
        insertDateAttrName: insertDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}
