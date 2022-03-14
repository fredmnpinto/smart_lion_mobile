import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/models/liquid.dart';
import 'package:smart_lion_mobile/app/data/models/sample.dart';
import 'package:smart_lion_mobile/app/data/providers/sample.dart';

class SampleLiquidModel {
  final SampleModel sample;
  final LiquidModel liquid;
  final double quantity;

  static const sampleIdAttrName = "sample_id";
  static const liquidIdAttrName = "liquid_id";
  static const quantityAttrName = "quantity";

  SampleLiquidModel(
      {required this.sample, required this.liquid, required this.quantity});

  static fromJson(Map<String, dynamic> jsonData) async => SampleLiquidModel(
        sample: (await Get.find<SampleProvider>()
            .getId(jsonData[sampleIdAttrName]))!,
        liquid: (await Get.find().getId(jsonData[liquidIdAttrName]))!,
        quantity: jsonData[quantityAttrName],
      );
}
