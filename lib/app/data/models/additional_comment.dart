
class AdditionalCommentModel {
  final int? id;
  final int sampleReviewId;
  final String comment;
  final DateTime registerDate;
  final DateTime updateDate;

  static const idAttrName = "id";
  static const sampleReviewIdAttrName = "sample_id";
  static const commentAttrName = "comment";
  static const registerDateAttrName = "register_date";
  static const updateDateAttrName = "update_date";

  AdditionalCommentModel({
    this.id,
    required this.sampleReviewId,
    required this.comment,
    required this.registerDate,
    required this.updateDate,
  });

  static Future<AdditionalCommentModel> fromJson(
          Map<String, dynamic> jsonData) async =>
      AdditionalCommentModel(
        id: jsonData[idAttrName]!,
        sampleReviewId: jsonData[sampleReviewIdAttrName],
        comment: jsonData[commentAttrName],
        registerDate: jsonData[registerDateAttrName],
        updateDate: jsonData[updateDateAttrName],
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id!,
        sampleReviewIdAttrName: sampleReviewId,
        commentAttrName: comment,
        registerDateAttrName: registerDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}
