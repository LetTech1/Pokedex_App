import 'package:desafio_layout2/models/pokemon_model.dart';
import 'package:desafio_layout2/pages/details/widgets/categories/categories_widget.dart';
import 'package:desafio_layout2/utilities/colors.dart';
import 'package:flutter/material.dart';

class DetailsPokedex extends StatelessWidget {
  final Pokemon poke;

  DetailsPokedex({Key key, this.poke}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: getColorType(type: poke.type.first),
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
            color: getColorType(type: poke.type.first),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${poke.name}',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    children: poke.type.map(
                      (e) {
                        return Container(
                          margin: EdgeInsets.only(top: 10, right: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            color: Colors.white30,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 4,
                              bottom: 4,
                              right: 10,
                              left: 10,
                            ),
                            child: Text(
                              getTypeName(
                                type: e,
                              ),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 110,
            left: 250,
            child: Image.asset(
              'assets/pokeball.png',
              height: 170,
              width: 170,
              color: Colors.white12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              top: 30,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                '#${poke.num}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
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
                  child: CategoriesWidget(pokes: poke),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.network(
                poke.img,
                height: 250,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
