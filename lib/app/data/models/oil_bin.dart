import 'dart:math';

class OilBinModel {
  final int? id;
  late final _Coordinates coordinates;
  final String address;
  final DateTime registerDate;
  final DateTime updateDate;

  static const idAttrName = "id";
  static const coordinateXAttrName = "coordinate_x";
  static const coordinateYAttrName = "coordinate_y";
  static const addressAttrName = "address";
  static const registerDateAttrName = "register_date";
  static const updateDateAttrName = "update_date";

  OilBinModel({
    this.id,
    required double x,
    required double y,
    required this.address,
    required this.registerDate,
    required this.updateDate,
  }) {
    coordinates = _Coordinates(x: x, y: y);
  }

  factory OilBinModel.fromJson(Map<String, dynamic> jsonData) => OilBinModel(
        id: jsonData[idAttrName],
        x: jsonData[coordinateXAttrName]!,
        y: jsonData[coordinateYAttrName]!,
        address: jsonData[addressAttrName],
        registerDate: DateTime.parse(jsonData[registerDateAttrName].toString()),
        updateDate: DateTime.parse(jsonData[updateDateAttrName].toString()),
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id,
        coordinateXAttrName: coordinates.x,
        coordinateYAttrName: coordinates.y,
        addressAttrName: address,
        registerDateAttrName: registerDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}

class _Coordinates {
  final double x;
  final double y;

  _Coordinates({required this.x, required this.y});

  double distanceTo(_Coordinates other) {
    return sqrt(pow(x - other.x, 2) + pow(y - other.y, 2));
  }
}
