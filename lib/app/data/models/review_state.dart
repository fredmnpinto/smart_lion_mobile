class ReviewStateModel {
  final int? id;
  final String name;
  final String message;
  final int resultingPoints;
  final DateTime insertDate;
  final DateTime updateDate;

  static const idAttrName = "id";
  static const nameAttrName = "name";
  static const messageAttrName = "message";
  static const resultingPointsAttrName = "resulting_points";
  static const insertDateAttrName = "insert_date";
  static const updateDateAttrName = "update_date";

  ReviewStateModel({
    this.id,
    required this.name,
    required this.message,
    required this.resultingPoints,
    required this.insertDate,
    required this.updateDate,
  });

  factory ReviewStateModel.fromJson(Map<String, dynamic> jsonData) =>
      ReviewStateModel(
        id: jsonData[idAttrName]!,
        name: jsonData[nameAttrName]!,
        message: jsonData[messageAttrName]!,
        resultingPoints: jsonData[resultingPointsAttrName],
        insertDate: DateTime.parse(jsonData[insertDateAttrName].toString()),
        updateDate: DateTime.parse(jsonData[updateDateAttrName].toString()),
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id,
        nameAttrName: name,
        messageAttrName: message,
        resultingPointsAttrName: resultingPoints,
        insertDateAttrName: insertDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}
