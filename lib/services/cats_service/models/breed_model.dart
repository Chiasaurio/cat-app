part of '_lib.dart';

@JsonSerializable()
class Breed {
  final Weight? weight;
  final String? id;
  final String? name;
  final String? temperament;
  final String? origin;
  final String? countryCodes;
  final String? countryCode;
  final String? lifeSpan;
  final String? wikipediaUrl;

  Breed({
    this.weight,
    this.id,
    this.name,
    this.temperament,
    this.origin,
    this.countryCodes,
    this.countryCode,
    this.lifeSpan,
    this.wikipediaUrl,
  });

  factory Breed.fromJson(Map<String, dynamic> json) => _$BreedFromJson(json);

  Map<String, dynamic> toJson() => _$BreedToJson(this);
}
