import 'package:flutter/material.dart';
import 'package:pokedex/src/features/pokemon_details/presentation/widgets/info_stats.dart';

import '../../../../theme/pokedex_colors.dart';
import '../../../home_page/domain/entities/pokemon.dart';

class PokeStats extends StatelessWidget {
  final Pokemon pokemon;
  const PokeStats(this.pokemon, {super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(3),
          child: InfoStats(pokemon),
        )
        // Container(
        //   constraints: const BoxConstraints(maxWidth: 400),
        //   margin: const EdgeInsets.all(3),
        //   padding: const EdgeInsets.all(10),
        //   alignment: Alignment.center,
        //   decoration: BoxDecoration(
        //       color: PokedexColors.getByName("normal"),
        //       borderRadius: BorderRadius.circular(15),
        //       border: Border.all(
        //           color: PokedexColors.getByName("normal")[400]!, width: 1)),
        //   child: InfoStats(pokemon),
        // ),
      ],
    );
  }
}
