import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/models/review_state.dart';
import 'package:smart_lion_mobile/app/data/models/sample.dart';
import 'package:smart_lion_mobile/app/data/providers/review_state.dart';
import 'package:smart_lion_mobile/app/data/providers/sample.dart';

class SampleReviewModel {
  final int? id;
  final SampleModel sample;
  final ReviewStateModel state;
  final bool isNew;
  final DateTime insertDate;
  final DateTime updateDate;

  static const idAttrName = "id";
  static const sampleIdAttrName = "sample_id";
  static const stateIdAttrName = "state_id";
  static const isNewAttrName = "is_new";
  static const insertDateAttrName = "insert_date";
  static const updateDateAttrName = "update_date";

  SampleReviewModel({
    this.id,
    required this.sample,
    required this.state,
    required this.isNew,
    required this.insertDate,
    required this.updateDate,
  });

  static Future<SampleReviewModel> fromJson(
          Map<String, dynamic> jsonData) async =>
      SampleReviewModel(
        id: jsonData[idAttrName]!,
        sample: (await Get.find<SampleProvider>()
            .getId(int.parse(jsonData[sampleIdAttrName])))!,
        isNew: jsonData[isNewAttrName]!.toString().toLowerCase() == 'true',
        state: (await Get.find<ReviewStateProvider>()
            .getId(jsonData[stateIdAttrName]))!,
        insertDate: DateTime.parse(jsonData[insertDateAttrName].toString()),
        updateDate: DateTime.parse(jsonData[updateDateAttrName].toString()),
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id,
        sampleIdAttrName: sample.id,
        isNewAttrName: isNew.toString(),
        stateIdAttrName: state.id,
        insertDateAttrName: insertDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}
