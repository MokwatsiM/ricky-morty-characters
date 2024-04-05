import 'package:ricky_morty_characters/data/core/models/character.dart';

abstract class CharactersReposirory {
  Future<Character?> getRickMortyCharacter(String pageNo);
}
