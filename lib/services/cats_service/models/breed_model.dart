part of '_lib.dart';

@JsonSerializable()
class BreedModel {
  final WeightModel? weight;
  final String? id;
  final String? name;
  final String? temperament;
  final String? origin;
  final String? countryCodes;
  final String? countryCode;
  final String? lifeSpan;
  final String? wikipediaUrl;
  final String? cfaUrl;
  final String? vetstreetUrl;
  final String? vcahospitalsUrl;
  final String? description;
  final int? indoor;
  final int? lap;
  final String? altNames;
  final int? adaptability;
  final int? affectionLevel;
  final int? childFriendly;
  final int? dogFriendly;
  final int? energyLevel;
  final int? grooming;
  final int? healthIssues;
  final int? intelligence;
  final int? sheddingLevel;
  final int? socialNeeds;
  final int? strangerFriendly;
  final int? vocalisation;
  final int? experimental;
  final int? hairless;
  final int? natural;
  final int? rare;
  final int? rex;
  final int? suppressedTail;
  final int? shortLegs;
  final int? hypoallergenic;
  final String? referenceImageId;
  BreedModel(
    this.cfaUrl,
    this.vetstreetUrl,
    this.vcahospitalsUrl,
    this.description,
    this.indoor,
    this.lap,
    this.altNames,
    this.adaptability,
    this.affectionLevel,
    this.childFriendly,
    this.dogFriendly,
    this.energyLevel,
    this.grooming,
    this.healthIssues,
    this.intelligence,
    this.sheddingLevel,
    this.socialNeeds,
    this.strangerFriendly,
    this.vocalisation,
    this.experimental,
    this.hairless,
    this.natural,
    this.rare,
    this.rex,
    this.suppressedTail,
    this.shortLegs,
    this.hypoallergenic,
    this.referenceImageId, {
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

  factory BreedModel.fromJson(Map<String, dynamic> json) =>
      _$BreedFromJson(json);

  Map<String, dynamic> toJson() => _$BreedToJson(this);
}
