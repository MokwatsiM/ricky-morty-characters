import 'package:flutter/material.dart';
import 'package:ricky_morty_characters/data/core/models/result.dart';
import 'package:ricky_morty_characters/views/style_constants.dart';


class CharacterItemRow extends StatelessWidget {
  final String text;
  const CharacterItemRow({
    super.key,
    required this.characterResults,
    required this.text,
  });

  final Result characterResults;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(text, style: gp24),
        Expanded(
          child: Text(
            characterResults.location!.name!,
            style: wp24,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
