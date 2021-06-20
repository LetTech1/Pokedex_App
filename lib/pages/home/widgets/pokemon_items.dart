import 'package:desafio_layout2/models/pokemon_model.dart';
import 'package:desafio_layout2/pages/details/details_pokedex_page.dart';
import 'package:desafio_layout2/shared/widgets/pokeball.dart';
import 'package:desafio_layout2/shared/widgets/pokemon_image_grid.dart';
import 'package:desafio_layout2/shared/widgets/pokemon_name.dart';
import 'package:desafio_layout2/shared/widgets/pokemon_num.dart';
import 'package:desafio_layout2/shared/widgets/pokemon_type.dart';
import 'package:desafio_layout2/repositories/pokedex_repository.dart';
import 'package:desafio_layout2/utilities/colors.dart';
import 'package:flutter/material.dart';

class PokemonItems extends StatefulWidget {
  @override
  _PokemonItemsState createState() => _PokemonItemsState();
}

class _PokemonItemsState extends State<PokemonItems> {
  @override
  void initState() {
    super.initState();
    var repository = PokedexRepository();
    repository.getPokedex().then(
          (result) => setState(
            () {
              pokemonss = result;
            },
          ),
        );
  }

  PokemonsModel pokemonss;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 4.5;
    final double itemWidth = size.width / 2;
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(12),
      addAutomaticKeepAlives: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (itemWidth / itemHeight),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      shrinkWrap: false,
      itemCount: pokemonss?.pokemon?.length ?? 0,
      itemBuilder: (context, index) {
        var pokemons = pokemonss.pokemon[index];

        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsPokedex(
                  poke: pokemons,
                ),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: getColorType(type: pokemons.type.first),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Stack(
              children: [
                PokeBallGrid(
                  bottom: -15,
                  right: -15,
                  path: 'assets/pokeball.png',
                  height: 98,
                  width: 98,
                  color: Colors.white30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 12,
                    right: 6,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: PokemonNum(
                          pokenum: '#${pokemons.num}',
                          color: Colors.black12,
                          font: FontWeight.bold,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: PokemonName(
                          name: '${pokemons.name}',
                          color: Colors.white,
                          fontsize: 14,
                          font: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: pokemons.type.map(
                              (e) {
                                return PokemonType(
                                  bottomMargin: 4,
                                  topMargin: 2,
                                  rightMargin: 8,
                                  radiusCircular: 12,
                                  backColor: Colors.white24,
                                  topPadding: 4,
                                  bottomPadding: 4,
                                  rightPadding: 8,
                                  leftPadding: 8,
                                  getType: getTypeName(type: e),
                                  colorType: Colors.white,
                                  fontSizeType: 11,
                                );
                              },
                            ).toList(),
                          ),
                          PokemonImage(
                            pokeImg: pokemons.img,
                            height: 75,
                            width: 75,
                            boxFit: BoxFit.cover,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
