part of '_lib.dart';

@JsonSerializable()
class CatModel {
  final String? id;
  final int? width;
  final int? height;
  final String? url;
  final List<BreedModel>? breeds;

  CatModel({
    this.id,
    this.width,
    this.height,
    this.url,
    this.breeds,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

  Map<String, dynamic> toJson() => _$CatToJson(this);
}
