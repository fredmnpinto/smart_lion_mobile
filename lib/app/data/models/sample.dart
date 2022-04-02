class SampleModel {
  final int id;
  final int reviewStateId;
  final DateTime registerDate;
  final DateTime updateDate;

  static const idAttrName = "id";
  static const reviewStateIdAttrName = "review_state_id";
  static const registerDateAttrName = "register_date";
  static const updateDateAttrName = "update_date";

  SampleModel({
    required this.id,
    required this.registerDate,
    required this.updateDate,
    required this.reviewStateId,
  });

  factory SampleModel.fromJson(Map<String, dynamic> jsonData) => SampleModel(
        id: jsonData[idAttrName]!,
        reviewStateId: jsonData[reviewStateIdAttrName],
        registerDate: DateTime.parse(jsonData[registerDateAttrName].toString()),
        updateDate: DateTime.parse(jsonData[updateDateAttrName].toString()),
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id,
        reviewStateIdAttrName: reviewStateId,
        registerDateAttrName: registerDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}
