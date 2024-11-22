// GENERATED CODE - DO NOT MODIFY BY HAND

part of '_lib.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cat _$CatFromJson(Map<String, dynamic> json) => Cat(
      id: json['id'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
      breeds: (json['breeds'] as List<dynamic>?)
          ?.map((e) => Breed.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatToJson(Cat instance) => <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'breeds': instance.breeds,
    };

Breed _$BreedFromJson(Map<String, dynamic> json) => Breed(
      weight: json['weight'] == null
          ? null
          : Weight.fromJson(json['weight'] as Map<String, dynamic>),
      id: json['id'] as String?,
      name: json['name'] as String?,
      temperament: json['temperament'] as String?,
      origin: json['origin'] as String?,
      countryCodes: json['countryCodes'] as String?,
      countryCode: json['countryCode'] as String?,
      lifeSpan: json['lifeSpan'] as String?,
      wikipediaUrl: json['wikipediaUrl'] as String?,
    );

Map<String, dynamic> _$BreedToJson(Breed instance) => <String, dynamic>{
      'weight': instance.weight,
      'id': instance.id,
      'name': instance.name,
      'temperament': instance.temperament,
      'origin': instance.origin,
      'countryCodes': instance.countryCodes,
      'countryCode': instance.countryCode,
      'lifeSpan': instance.lifeSpan,
      'wikipediaUrl': instance.wikipediaUrl,
    };

Weight _$WeightFromJson(Map<String, dynamic> json) => Weight(
      imperial: json['imperial'] as String? ?? "",
      metric: json['metric'] as String? ?? "",
    );

Map<String, dynamic> _$WeightToJson(Weight instance) => <String, dynamic>{
      'imperial': instance.imperial,
      'metric': instance.metric,
    };
