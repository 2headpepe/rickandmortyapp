// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Person _$$_PersonFromJson(Map<String, dynamic> json) => _$_Person(
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'results': instance.results,
      'info': instance.info,
    };

_$_Results _$$_ResultsFromJson(Map<String, dynamic> json) => _$_Results(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      gender: json['gender'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_ResultsToJson(_$_Results instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'gender': instance.gender,
      'image': instance.image,
    };

_$_Info _$$_InfoFromJson(Map<String, dynamic> json) => _$_Info(
      count: json['count'] as int,
      pages: json['pages'] as int,
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$$_InfoToJson(_$_Info instance) => <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };
