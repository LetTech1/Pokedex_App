import 'package:flutter/material.dart';
import 'package:desafio_layout2/models/pokemon_model.dart';

Color getColorType({Type type}) {
  switch (type) {
    case Type.NORMAL:
      return Colors.brown[400];
      break;
    case Type.FIRE:
      return Colors.red.shade300;
      break;
    case Type.WATER:
      return Colors.blue.shade300;
      break;
    case Type.GRASS:
      return Colors.tealAccent.shade400;
      break;
    case Type.ELECTRIC:
      return Colors.amber;
      break;
    case Type.ICE:
      return Colors.cyanAccent[400];
      break;
    case Type.FIGHTING:
      return Colors.orange;
      break;
    case Type.POISON:
      return Colors.purple;
      break;
    case Type.GROUND:
      return Colors.orange[300];
      break;
    case Type.FLYING:
      return Colors.indigo[200];
      break;
    case Type.PSYCHIC:
      return Colors.pink;
      break;
    case Type.BUG:
      return Colors.lightGreen[500];
      break;
    case Type.ROCK:
      return Colors.grey;
      break;
    case Type.GHOST:
      return Colors.indigo[400];
      break;
    case Type.DARK:
      return Colors.brown;
      break;
    case Type.DRAGON:
      return Colors.indigo[800];
      break;
    case Type.STEEL:
      return Colors.blueGrey;
      break;
    case Type.FAIRY:
      return Colors.pinkAccent[100];
      break;
    default:
      return Colors.grey;
      break;
  }
}

String getTypeName({Type type}) {
  switch (type) {
    case Type.NORMAL:
      return 'Normal';
      break;
    case Type.FIRE:
      return 'Fire';
      break;
    case Type.WATER:
      return 'Water';
      break;
    case Type.GRASS:
      return 'Grass';
      break;
    case Type.ELECTRIC:
      return 'Electric';
      break;
    case Type.ICE:
      return 'Ice';
      break;
    case Type.FIGHTING:
      return 'Fighting';
      break;
    case Type.POISON:
      return 'Poison';
      break;
    case Type.GROUND:
      return 'Ground';
      break;
    case Type.FLYING:
      return 'Flying';
      break;
    case Type.PSYCHIC:
      return 'Psychic';
      break;
    case Type.BUG:
      return 'Bug';
      break;
    case Type.ROCK:
      return 'Rock';
      break;
    case Type.GHOST:
      return 'Ghost';
      break;
    case Type.DARK:
      return 'Dark';
      break;
    case Type.DRAGON:
      return 'Dragon';
      break;
    case Type.STEEL:
      return 'Steel';
      break;
    case Type.FAIRY:
      return 'Fairy';
      break;
    default:
      return null;
      break;
  }
}
