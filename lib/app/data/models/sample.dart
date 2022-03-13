class SampleModel {
  final int? id;
  final double viscosity;
  final double temperature;
  final double density;
  final double turbidity;
  final DateTime insertDate;
  final DateTime updateDate;

  static const idAttrName = "id";
  static const viscosityAttrName = "viscosity";
  static const temperatureAttrName = "temperature";
  static const densityAttrName = "density";
  static const turbidityAttrName = "turbidity";
  static const insertDateAttrName = "insert_date";
  static const updateDateAttrName = "update_date";

  SampleModel({
    this.id,
    required this.viscosity,
    required this.temperature,
    required this.turbidity,
    required this.density,
    required this.insertDate,
    required this.updateDate,
  });

  factory SampleModel.fromJson(Map<String, dynamic> jsonData) => SampleModel(
        id: jsonData[idAttrName]!,
        viscosity: jsonData[viscosityAttrName]!,
        temperature: jsonData[temperatureAttrName]!,
        density: jsonData[densityAttrName]!,
        turbidity: jsonData[turbidityAttrName]!,
        insertDate: DateTime.parse(jsonData[insertDateAttrName].toString()),
        updateDate: DateTime.parse(jsonData[updateDateAttrName].toString()),
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id,
        viscosityAttrName: viscosity,
        temperatureAttrName: temperature,
        densityAttrName: density,
        turbidityAttrName: turbidity,
        insertDateAttrName: insertDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}
