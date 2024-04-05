import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:ricky_morty_characters/data/core/repository/characters_repository.dart';
import 'package:ricky_morty_characters/data/di/get_it_di.dart';
import 'package:ricky_morty_characters/views/viewmodels/character_viewmodel.dart';

class AppProviders {
  static List<SingleChildWidget> get allProviders {
    final List<SingleChildWidget> viewModelProviders = [
      ChangeNotifierProvider(
        create: (context) =>
            CharacterViewmodel(getInstance<CharactersReposirory>()),
      ),
    ];

    return [
      ...viewModelProviders,
    ];
  }
}
