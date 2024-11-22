// GENERATED CODE - DO NOT MODIFY BY HAND

part of '_lib.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatModel _$CatFromJson(Map<String, dynamic> json) => CatModel(
      id: json['id'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
      breeds: (json['breeds'] as List<dynamic>?)
          ?.map((e) => BreedModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatToJson(CatModel instance) => <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'breeds': instance.breeds,
    };

BreedModel _$BreedFromJson(Map<String, dynamic> json) => BreedModel(
      json['cfaUrl'] as String?,
      json['vetstreetUrl'] as String?,
      json['vcahospitalsUrl'] as String?,
      json['description'] as String?,
      (json['indoor'] as num?)?.toInt(),
      (json['lap'] as num?)?.toInt(),
      json['altNames'] as String?,
      (json['adaptability'] as num?)?.toInt(),
      (json['affectionLevel'] as num?)?.toInt(),
      (json['childFriendly'] as num?)?.toInt(),
      (json['dogFriendly'] as num?)?.toInt(),
      (json['energyLevel'] as num?)?.toInt(),
      (json['grooming'] as num?)?.toInt(),
      (json['healthIssues'] as num?)?.toInt(),
      (json['intelligence'] as num?)?.toInt(),
      (json['sheddingLevel'] as num?)?.toInt(),
      (json['socialNeeds'] as num?)?.toInt(),
      (json['strangerFriendly'] as num?)?.toInt(),
      (json['vocalisation'] as num?)?.toInt(),
      (json['experimental'] as num?)?.toInt(),
      (json['hairless'] as num?)?.toInt(),
      (json['natural'] as num?)?.toInt(),
      (json['rare'] as num?)?.toInt(),
      (json['rex'] as num?)?.toInt(),
      (json['suppressedTail'] as num?)?.toInt(),
      (json['shortLegs'] as num?)?.toInt(),
      (json['hypoallergenic'] as num?)?.toInt(),
      json['referenceImageId'] as String?,
      weight: json['weight'] == null
          ? null
          : WeightModel.fromJson(json['weight'] as Map<String, dynamic>),
      id: json['id'] as String?,
      name: json['name'] as String?,
      temperament: json['temperament'] as String?,
      origin: json['origin'] as String?,
      countryCodes: json['countryCodes'] as String?,
      countryCode: json['countryCode'] as String?,
      lifeSpan: json['lifeSpan'] as String?,
      wikipediaUrl: json['wikipediaUrl'] as String?,
    );

Map<String, dynamic> _$BreedToJson(BreedModel instance) => <String, dynamic>{
      'weight': instance.weight,
      'id': instance.id,
      'name': instance.name,
      'temperament': instance.temperament,
      'origin': instance.origin,
      'countryCodes': instance.countryCodes,
      'countryCode': instance.countryCode,
      'lifeSpan': instance.lifeSpan,
      'wikipediaUrl': instance.wikipediaUrl,
      'cfaUrl': instance.cfaUrl,
      'vetstreetUrl': instance.vetstreetUrl,
      'vcahospitalsUrl': instance.vcahospitalsUrl,
      'description': instance.description,
      'indoor': instance.indoor,
      'lap': instance.lap,
      'altNames': instance.altNames,
      'adaptability': instance.adaptability,
      'affectionLevel': instance.affectionLevel,
      'childFriendly': instance.childFriendly,
      'dogFriendly': instance.dogFriendly,
      'energyLevel': instance.energyLevel,
      'grooming': instance.grooming,
      'healthIssues': instance.healthIssues,
      'intelligence': instance.intelligence,
      'sheddingLevel': instance.sheddingLevel,
      'socialNeeds': instance.socialNeeds,
      'strangerFriendly': instance.strangerFriendly,
      'vocalisation': instance.vocalisation,
      'experimental': instance.experimental,
      'hairless': instance.hairless,
      'natural': instance.natural,
      'rare': instance.rare,
      'rex': instance.rex,
      'suppressedTail': instance.suppressedTail,
      'shortLegs': instance.shortLegs,
      'hypoallergenic': instance.hypoallergenic,
      'referenceImageId': instance.referenceImageId,
    };

WeightModel _$WeightFromJson(Map<String, dynamic> json) => WeightModel(
      imperial: json['imperial'] as String? ?? "",
      metric: json['metric'] as String? ?? "",
    );

Map<String, dynamic> _$WeightToJson(WeightModel instance) => <String, dynamic>{
      'imperial': instance.imperial,
      'metric': instance.metric,
    };
