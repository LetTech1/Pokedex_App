import 'package:desafio_layout2/models/pokemon_model.dart';
import 'package:desafio_layout2/pages/details/details_pokedex_page.dart';
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
    return GridView.builder(
      padding: EdgeInsets.all(12),
      addAutomaticKeepAlives: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      shrinkWrap: true,
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
                Positioned(
                  bottom: -15,
                  right: -15,
                  child: Image.asset(
                    'assets/pokeball.png',
                    height: 90,
                    width: 90,
                    color: Colors.white24,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '#${pokemons.num}',
                          style: TextStyle(
                            color: Colors.black12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${pokemons.name}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //SizedBox(
                      //height: 2,
                      // ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: pokemons.type.map(
                              (e) {
                                return Container(
                                  margin: EdgeInsets.only(bottom: 4, top: 2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                    color: Colors.white24,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, bottom: 4, right: 8, left: 8),
                                    child: Text(
                                      getTypeName(type: e),
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 11),
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                          Image.network(
                            pokemons.img,
                            height: 75,
                            width: 75,
                            fit: BoxFit.cover,
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
