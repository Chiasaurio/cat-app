part of '_lib.dart';

@JsonSerializable()
class CatModel {
  final String? id;
  final int width;
  final int height;
  final String url;
  final List<BreedModel> breeds;

  CatModel({
    this.id,
    this.width = 0,
    this.height = 0,
    this.url = "",
    this.breeds = const [],
  });

  factory CatModel.fromJson(Map<String, dynamic> json) =>
      _$CatModelFromJson(json);

  Map<String, dynamic> toJson() => _$CatModelToJson(this);
}
