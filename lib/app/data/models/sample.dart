class Sample {
  final int? id;
  final double viscosity;
  final double temperature;
  final double density;
  final double turbidity;

  static const idAttrName = "id";
  static const viscosityAttrName = "viscosity";
  static const temperatureAttrName = "temperature";
  static const densityAttrName = "density";
  static const turbidityAttrName = "turbidity";

  Sample({
    this.id,
    required this.viscosity,
    required this.temperature,
    required this.turbidity,
    required this.density,
  });

  factory Sample.fromJson(Map<String, dynamic> jsonData) => Sample(
        id: jsonData[idAttrName],
        viscosity: jsonData[viscosityAttrName],
        temperature: jsonData[temperatureAttrName],
        density: jsonData[densityAttrName],
        turbidity: jsonData[turbidityAttrName],
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id,
        viscosityAttrName: viscosity,
        temperatureAttrName: temperature,
        densityAttrName: density,
        turbidityAttrName: turbidity,
      };
}
