part of '_lib.dart';

@JsonSerializable()
class Cat {
  final String? id;
  final int? width;
  final int? height;
  final String? url;
  final List<Breed>? breeds;

  Cat({
    this.id,
    this.width,
    this.height,
    this.url,
    this.breeds,
  });

  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

  Map<String, dynamic> toJson() => _$CatToJson(this);
}
