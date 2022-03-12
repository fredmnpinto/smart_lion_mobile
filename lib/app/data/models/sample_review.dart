import 'package:smart_lion_mobile/app/data/models/review_state.dart';
import 'package:smart_lion_mobile/app/data/models/sample.dart';

class SampleReviewModel {
  final int? id;
  final Sample sample;
  final ReviewStateModel state;
  final bool isNew;

  static const idAttrName = "id";
  static const sampleIdAttrName = "sample_id";
  static const stateIdAttrName = "state_id";
  static const isNewAttrName = "is_new";

  SampleReviewModel({
    this.id,
    required this.sample,
    required this.state,
    required this.isNew,
  });

  factory SampleReviewModel.fromJson(Map<String, dynamic> jsonData) => SampleReviewModel(
        id: jsonData[idAttrName],
        sample: jsonData[sampleIdAttrName],
        isNew: jsonData[isNewAttrName],
        state: jsonData[isNewAttrName],
      );
}
