import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmorty/data/models/person.dart';
import 'package:rickandmorty/data/repositories/person_repo.dart';

part 'person_bloc.freezed.dart';

part 'person_event.dart';
part 'person_state.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  // final PersonRepo personRepo;
  PersonBloc({required personRepo}) : super(const PersonState.loading()) {
    on<PersonEventFetch>((event, emit) async {
      emit(const PersonState.loading());
      try {
        Person personLoaded =
            await personRepo.getPerson(event.page, event.name);
        emit(PersonState.loaded(personLoaded: personLoaded));
      } catch (_) {
        emit(const PersonState.error());
      }
    });
  }
}
