import 'package:desafio_layout2/models/pokemon_model.dart';
import 'package:dio/dio.dart';

class PokedexRepository {
  Future<PokemonsModel> getPokedex() async {
    var dio = Dio();
    Response response = await dio.get(
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
    final pokemonsModel = pokemonsModelFromMap(response.data);
    return pokemonsModel;
  }
}
