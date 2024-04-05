import 'package:dio/dio.dart';
import 'package:ricky_morty_characters/data/api/api_constant.dart';
import 'package:ricky_morty_characters/data/core/datasource/characters_datasource.dart';
import 'package:ricky_morty_characters/data/core/models/character.dart';

class CharactersRemoteDataSourceImpl extends CharactersRemoteDataSource {
  final Dio _client;

  CharactersRemoteDataSourceImpl(this._client);

  @override
  Future<Character> getRickyMortyCharacters(String pageNo) async {
    final response =
        await _client.get(ApiConstants.CHARACTER_PATH, queryParameters: {
      "page": pageNo,
    });
    final Character characterResults = Character.fromJson(response.data);
    return characterResults;
  }
}
