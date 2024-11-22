part of '_lib.dart';

@JsonSerializable()
class WeightModel {
  final String? imperial;
  final String? metric;

  const WeightModel({
    this.imperial = "",
    this.metric = "",
  });

  factory WeightModel.fromJson(Map<String, dynamic> json) =>
      _$WeightFromJson(json);

  Map<String, dynamic> toJson() => _$WeightToJson(this);
}
