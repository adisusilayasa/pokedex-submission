import 'package:flutter/material.dart';
import 'package:pokedex/src/theme/pokedex_colors.dart';
import 'package:pokedex/src/utils/string_casing.dart';

import '../../../home_page/domain/entities/pokemon.dart';

class TypesWidget extends StatelessWidget {
  final Pokemon pokemon;

  const TypesWidget(this.pokemon, {super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: pokemon.types.map(
        (e) {
          return Container(
            margin: const EdgeInsets.all(3),
            padding:
                const EdgeInsets.only(top: 3, bottom: 3, left: 6, right: 6),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: PokedexColors.getByName(e)[300],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: PokedexColors.getByName(e)[300]!, width: 1)),
            child: Text(
              e.toCapitalized(),
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          );
        },
      ).toList(),
    );
  }
}
