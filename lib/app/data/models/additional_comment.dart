import 'package:smart_lion_mobile/app/data/models/sample_review.dart';
import 'package:smart_lion_mobile/app/data/providers/sample_review.dart';
import 'package:get/get.dart';

class AdditionalCommentModel {
  final int? id;
  final SampleReviewModel sampleReview;
  final String message;
  final DateTime insertDate;
  final DateTime updateDate;

  static const idAttrName = "id";
  static const sampleReviewIdAttrName = "sample_id";
  static const messageAttrName = "message";
  static const insertDateAttrName = "insert_date";
  static const updateDateAttrName = "update_date";

  AdditionalCommentModel({
    this.id,
    required this.sampleReview,
    required this.message,
    required this.insertDate,
    required this.updateDate,
  });

  static Future<AdditionalCommentModel> fromJson(
          Map<String, dynamic> jsonData) async =>
      AdditionalCommentModel(
        id: jsonData[idAttrName]!,
        sampleReview: (await Get.find<SampleReviewProvider>()
            .getId(jsonData[sampleReviewIdAttrName]))!,
        message: jsonData[messageAttrName],
        insertDate: jsonData[insertDateAttrName],
        updateDate: jsonData[updateDateAttrName],
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id,
        sampleReviewIdAttrName: sampleReview.id,
        messageAttrName: message,
        insertDateAttrName: insertDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}
