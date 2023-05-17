
import 'package:freezed_annotation/freezed_annotation.dart';
part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person with _$Person {
  const factory Person({
    required List<Results> results,
    required Info info,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    required int id,
    required String name,
    required String status,
    required String species,
    required String gender,
    required String image,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) => _$ResultsFromJson(json);

}

@freezed
class Info with _$Info {
  const factory Info({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _Info;
  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
