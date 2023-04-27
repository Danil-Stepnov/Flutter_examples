import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:rick_and_morty_example/data/models/character.dart';
import 'package:rick_and_morty_example/data/repositories/character_repo.dart';

part 'character_bloc.freezed.dart';
part 'character_bloc.g.dart';
part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends HydratedBloc<CharacterEvent, CharacterState> {
  final CharacterRepo characterRepo;

  CharacterBloc({required this.characterRepo})
      : super(const CharacterState.loading()) {
    on<CharacterEventFetch>((event, emit) async {
      emit(const CharacterState.loading());
      try {
        Character _characterLoaded = await characterRepo
            .getCharacter(event.page, event.name)
            .timeout(const Duration(seconds: 5));
        emit(CharacterState.loaded(characterLoaded: _characterLoaded));
      } catch (e) {
        emit(const CharacterState.error());
        rethrow;
      }
    });
  }

  @override
  CharacterState? fromJson(Map<String, dynamic> json) => CharacterState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(CharacterState state) => state.toJson();
}
