class ReviewStateModel {
  final int? id;
  final String name;
  final String message;

  static const idAttrName = "id";
  static const nameAttrName = "name";
  static const messageAttrName = "message";

  ReviewStateModel({
    this.id,
    required this.name,
    required this.message,
  });

  factory ReviewStateModel.fromJson(Map<String, dynamic> jsonData) =>
      ReviewStateModel(id: jsonData[idAttrName]!, name: jsonData[nameAttrName], message: jsonData[messageAttrName]);
}
