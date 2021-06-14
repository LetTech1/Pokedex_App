import 'package:desafio_layout2/models/pokemon_model.dart';
import 'package:desafio_layout2/pages/details/widgets/categories/categories_widget.dart';
import 'package:desafio_layout2/shared/widgets/pokeball.dart';
import 'package:desafio_layout2/shared/widgets/pokemon_num.dart';
import 'package:desafio_layout2/shared/widgets/pokemon_image_grid.dart';
import 'package:desafio_layout2/shared/widgets/pokemon_type.dart';
import 'package:desafio_layout2/shared/widgets/pokemon_name.dart';
import 'package:desafio_layout2/utilities/colors.dart';
import 'package:flutter/material.dart';

class DetailsPokedex extends StatefulWidget {
  final Pokemon poke;

  DetailsPokedex({Key key, this.poke}) : super(key: key);

  @override
  _DetailsPokedexState createState() => _DetailsPokedexState();
}

class _DetailsPokedexState extends State<DetailsPokedex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: getColorType(type: widget.poke.type.first),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: getColorType(type: widget.poke.type.first),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PokemonName(
                    name: '${widget.poke.name}',
                    fontsize: 28,
                    font: FontWeight.bold,
                    color: Colors.white,
                  ),
                  Row(
                    children: widget.poke.type.map(
                      (e) {
                        return PokemonType(
                          topMargin: 10,
                          rightMargin: 6,
                          bottomMargin: 0,
                          radiusCircular: 12,
                          backColor: Colors.white30,
                          topPadding: 4,
                          bottomPadding: 4,
                          rightPadding: 10,
                          leftPadding: 10,
                          getType: getTypeName(type: e),
                          colorType: Colors.white,
                          fontSizeType: 11,
                        );
                      },
                    ).toList(),
                  ),
                ],
              ),
            ),
          ),
          PokeBallGrid(
            top: 110,
            left: 250,
            path: 'assets/pokeball.png',
            height: 170,
            width: 170,
            color: Colors.white30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              top: 30,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: PokemonNum(
                pokenum: '#${widget.poke.num}',
                font: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 1,
                    right: 1,
                  ),
                  child: CategoriesWidget(pokes: widget.poke),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Align(
              alignment: Alignment.topCenter,
              child: PokemonImage(
                pokeImg: widget.poke.img,
                height: 250,
                width: 250,
                boxFit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
