import 'package:flutter/material.dart';
import 'package:ricky_morty_characters/data/core/models/result.dart';
import 'package:ricky_morty_characters/extensions/context.dart';
import 'package:ricky_morty_characters/views/style_constants.dart';
import 'package:ricky_morty_characters/views/widgets/StatusRowListItem.dart';


class CharacterListItemViewHolder extends StatelessWidget {
  const CharacterListItemViewHolder({
    super.key,
    required this.characterResults,
  });

  final Result characterResults;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(105.0, 10.0, 16.0, 16.0),
      constraints: const BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            characterResults.name!,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontFamily: "Product-Sans",
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          StatusRowListItem(characterResults: characterResults),
          const SizedBox(
            height: 4.0,
          ),
          Expanded(
            child: Text(

              "${context.l10n.origin}: ${characterResults.origin!.name!}",
            
              style: originText,
            ),
          )
        ],
      ),
    );
  }
}


