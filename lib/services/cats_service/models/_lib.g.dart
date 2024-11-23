// GENERATED CODE - DO NOT MODIFY BY HAND

part of '_lib.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatModel _$CatModelFromJson(Map<String, dynamic> json) => CatModel(
      id: json['id'] as String?,
      width: (json['width'] as num?)?.toInt() ?? 0,
      height: (json['height'] as num?)?.toInt() ?? 0,
      url: json['url'] as String? ?? "",
      breeds: (json['breeds'] as List<dynamic>?)
              ?.map((e) => BreedModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CatModelToJson(CatModel instance) => <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'breeds': instance.breeds,
    };

BreedModel _$BreedModelFromJson(Map<String, dynamic> json) => BreedModel(
      cfaUrl: json['cfaUrl'] as String?,
      vetstreetUrl: json['vetstreetUrl'] as String?,
      vcahospitalsUrl: json['vcahospitalsUrl'] as String?,
      description: json['description'] as String? ?? "",
      indoor: (json['indoor'] as num?)?.toInt(),
      lap: (json['lap'] as num?)?.toInt(),
      altNames: json['altNames'] as String? ?? "",
      adaptability: (json['adaptability'] as num?)?.toInt(),
      affectionLevel: (json['affectionLevel'] as num?)?.toInt(),
      childFriendly: (json['childFriendly'] as num?)?.toInt(),
      dogFriendly: (json['dogFriendly'] as num?)?.toInt(),
      energyLevel: (json['energyLevel'] as num?)?.toInt(),
      grooming: (json['grooming'] as num?)?.toInt(),
      healthIssues: (json['healthIssues'] as num?)?.toInt(),
      intelligence: (json['intelligence'] as num?)?.toInt() ?? 0,
      sheddingLevel: (json['sheddingLevel'] as num?)?.toInt(),
      socialNeeds: (json['socialNeeds'] as num?)?.toInt(),
      strangerFriendly: (json['strangerFriendly'] as num?)?.toInt(),
      vocalisation: (json['vocalisation'] as num?)?.toInt(),
      experimental: (json['experimental'] as num?)?.toInt(),
      hairless: (json['hairless'] as num?)?.toInt(),
      natural: (json['natural'] as num?)?.toInt(),
      rare: (json['rare'] as num?)?.toInt(),
      rex: (json['rex'] as num?)?.toInt(),
      suppressedTail: (json['suppressedTail'] as num?)?.toInt(),
      shortLegs: (json['shortLegs'] as num?)?.toInt(),
      hypoallergenic: (json['hypoallergenic'] as num?)?.toInt(),
      referenceImageId: json['referenceImageId'] as String?,
      weight: json['weight'] == null
          ? null
          : WeightModel.fromJson(json['weight'] as Map<String, dynamic>),
      id: json['id'] as String?,
      name: json['name'] as String? ?? "",
      origin: json['origin'] as String? ?? "",
      temperament: json['temperament'] as String?,
      countryCodes: json['countryCodes'] as String?,
      countryCode: json['countryCode'] as String?,
      lifeSpan: json['lifeSpan'] as String?,
      wikipediaUrl: json['wikipediaUrl'] as String?,
    );

Map<String, dynamic> _$BreedModelToJson(BreedModel instance) =>
    <String, dynamic>{
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

WeightModel _$WeightModelFromJson(Map<String, dynamic> json) => WeightModel(
      imperial: json['imperial'] as String? ?? "",
      metric: json['metric'] as String? ?? "",
    );

Map<String, dynamic> _$WeightModelToJson(WeightModel instance) =>
    <String, dynamic>{
      'imperial': instance.imperial,
      'metric': instance.metric,
    };
