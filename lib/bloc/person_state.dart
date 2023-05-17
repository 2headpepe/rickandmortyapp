part of 'person_bloc.dart';

@freezed
class PersonState with _$PersonState {
  const factory PersonState.loading() = PersonStateLoading;
  const factory PersonState.loaded({required Person personLoaded}) = PersonStateLoaded;
  const factory PersonState.error() = PersonStateError;
}
