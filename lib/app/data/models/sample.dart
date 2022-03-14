class SampleModel {
  final int? id;
  final double fluidity;
  final double temperatureIn;
  final double temperatureOut;
  final double humidity;
  final double turbidity;
  final DateTime insertDate;
  final DateTime updateDate;

  static const idAttrName = "id";
  static const fluidityAttrName = "viscosity";
  static const temperatureInAttrName = "temperature_in";
  static const temperatureOutAttrName = "temperature_out";
  static const humidityAttrName = "humidity";
  static const turbidityAttrName = "turbidity";
  static const insertDateAttrName = "insert_date";
  static const updateDateAttrName = "update_date";

  SampleModel({
    this.id,
    required this.fluidity,
    required this.temperatureIn,
    required this.temperatureOut,
    required this.humidity,
    required this.turbidity,
    required this.insertDate,
    required this.updateDate,
  });

  factory SampleModel.fromJson(Map<String, dynamic> jsonData) => SampleModel(
        id: jsonData[idAttrName]!,
        fluidity: jsonData[fluidityAttrName]!,
        temperatureIn: jsonData[temperatureInAttrName]!,
        temperatureOut: jsonData[temperatureOutAttrName]!,
        humidity: jsonData[humidityAttrName]!,
        turbidity: jsonData[turbidityAttrName]!,
        insertDate: DateTime.parse(jsonData[insertDateAttrName].toString()),
        updateDate: DateTime.parse(jsonData[updateDateAttrName].toString()),
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id,
        fluidityAttrName: fluidity,
        temperatureInAttrName: temperatureIn,
        humidityAttrName: humidity,
        turbidityAttrName: turbidity,
        insertDateAttrName: insertDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}
