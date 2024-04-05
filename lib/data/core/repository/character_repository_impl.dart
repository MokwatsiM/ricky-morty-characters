
import 'package:ricky_morty_characters/data/core/datasource/characters_datasource.dart';
import 'package:ricky_morty_characters/data/core/models/character.dart';
import 'package:ricky_morty_characters/data/core/repository/characters_repository.dart';

class CharacterReposiroryImpl extends CharactersReposirory {
  final CharactersRemoteDataSource _charactersRemoteDataSource;

  CharacterReposiroryImpl(this._charactersRemoteDataSource);
  @override
  Future<Character?> getRickMortyCharacter(String pageNo) async {
    try {
      final character =
          await _charactersRemoteDataSource.getRickyMortyCharacters(pageNo);
      return character;
    } catch (e) {
      return null;
    }
  }
}
