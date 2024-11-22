part of '_lib.dart';

@JsonSerializable()
class Weight {
  final String? imperial;
  final String? metric;

  const Weight({
    this.imperial = "",
    this.metric = "",
  });

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);

  Map<String, dynamic> toJson() => _$WeightToJson(this);
}
