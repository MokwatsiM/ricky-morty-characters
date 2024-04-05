import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ricky_morty_characters/data/api/api_client.dart';
import 'package:ricky_morty_characters/data/api/api_constant.dart';
import 'package:ricky_morty_characters/data/core/datasource/characters_datasource.dart';
import 'package:ricky_morty_characters/data/core/datasource/characters_datasource_impl.dart';
import 'package:ricky_morty_characters/data/core/repository/character_repository_impl.dart';
import 'package:ricky_morty_characters/data/core/repository/characters_repository.dart';

final getInstance = GetIt.instance;
Future<void> init() async {
  final Dio dioOrderClient = ApiClient.getClient(ApiConstants.BASE_URL);

  getInstance.registerLazySingleton<CharactersRemoteDataSource>(
      () => CharactersRemoteDataSourceImpl(dioOrderClient));
  getInstance.registerLazySingleton<CharactersReposirory>(
      () => CharacterReposiroryImpl(getInstance<CharactersRemoteDataSource>()));
}
