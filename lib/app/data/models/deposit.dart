import 'package:smart_lion_mobile/app/data/models/bottle.dart';
import 'package:smart_lion_mobile/app/data/models/oil_bin.dart';

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

  factory DepositModel.fromJson(Map<String, dynamic> jsonData) => DepositModel(
        bottle: jsonData[bottleIdAttrName], // TODO: Implement
        oilBin: jsonData[oilBinIdAttrName],    // TODO: Implement
        insertDate: jsonData[insertDateAttrName],
        updateDate: jsonData[updateDateAttrName],
      );
  
  Map<String, dynamic> toJson() =>
      {
        idAttrName: id,
        oilBinIdAttrName: oilBin.id,
        insertDateAttrName: insertDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}
