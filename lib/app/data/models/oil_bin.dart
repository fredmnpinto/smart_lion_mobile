import 'dart:math';

class OilBinModel {
  final int? id;
  late final _Coordinates coordinates;

  static const idAttrName = "id";
  static const coordinateXAttrName = "coordinate_x";
  static const coordinateYAttrName = "coordinate_y";

  OilBinModel({this.id, required double x, required double y}) {
    coordinates = _Coordinates(x: x, y: y);
  }

  factory OilBinModel.fromJson(Map<String, dynamic> jsonData) => OilBinModel(
      id: jsonData[idAttrName]!,
      x: jsonData[coordinateXAttrName],
      y: jsonData[coordinateYAttrName]);

  Map<String, dynamic> toJson() => {
        idAttrName: id,
        coordinateXAttrName: coordinates.x,
        coordinateYAttrName: coordinates.y,
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
