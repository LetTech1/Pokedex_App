import 'package:desafio_layout2/models/pokemon_model.dart';
import 'package:desafio_layout2/pages/details/widgets/about/about_widget.dart';
import 'package:desafio_layout2/pages/details/widgets/base_stats/text_name.dart';
import 'package:desafio_layout2/shared/widgets/title_widget.dart';
import 'package:desafio_layout2/pages/details/widgets/base_stats/base_stats_widget.dart';
import 'package:flutter/material.dart';
import '../name_category/name_category_widget.dart';

class CategoriesWidget extends StatelessWidget {
  final Pokemon pokes;

  const CategoriesWidget({Key key, this.pokes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: TabBar(
              tabs: [
                NameCategoryWidget(
                  name: 'About',
                ),
                NameCategoryWidget(
                  name: 'Base Stats',
                ),
                NameCategoryWidget(
                  name: 'Evolution',
                ),
                NameCategoryWidget(
                  name: 'Moves',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: new Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      AboutWidget(info: 'Height', pokem: pokes.height),
                      AboutWidget(info: 'Weight', pokem: pokes.weight),
                      AboutWidget(info: 'Candy', pokem: pokes.candy),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 15),
                        child: TitleWidget(title: 'Breeding'),
                      ),
                      AboutWidget(
                        info: 'Spawn Time',
                        pokem: pokes.spawnTime,
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: new Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          BaseStats(
                            info: 'Candy Count',
                            pokem: verification().toStringAsPrecision(2),
                            value: 0.69,
                          ),
                          BaseStats(
                            info: 'Spawn Chance',
                            pokem: (pokes.spawnChance).toStringAsPrecision(2),
                            value: pokes.spawnChance,
                          ),
                          BaseStats(
                            info: 'Avg Spawns',
                            pokem: (pokes.avgSpawns).toStringAsPrecision(2),
                            value: pokes.avgSpawns,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, left: 15),
                            child: TitleWidget(
                              title: 'Type defenses',
                            ),
                          ),
                          TextName(name: pokes.name),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                width: 300,
                height: 300,
                child: Text('Teste'),
              ),
              new Container(
                height: 300,
                width: 200,
                child: Text('Teste'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  verification() {
    if (pokes.candyCount == null) {
      return 0;
    } else {
      return (pokes.candyCount);
    }
  }
}
