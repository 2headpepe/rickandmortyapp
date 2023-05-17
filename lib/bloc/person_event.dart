part of 'person_bloc.dart';

@freezed
class PersonEvent with _$PersonEvent {
  const factory PersonEvent.fetch({
    required String name,
    required int page,
  }) = PersonEventFetch;
}
