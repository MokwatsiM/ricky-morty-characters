
import 'package:ricky_morty_characters/data/core/models/character.dart';

abstract class CharactersRemoteDataSource {
  Future<Character> getRickyMortyCharacters(String pageNo);
}
