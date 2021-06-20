import 'package:flutter/material.dart';

class PokemonNum extends StatefulWidget {
  final String pokenum;
  final Color color;
  final FontWeight font;
  const PokemonNum(
      {Key key, this.pokenum, this.color = Colors.white, this.font})
      : super(key: key);

  @override
  _PokemonNumState createState() => _PokemonNumState();
}

class _PokemonNumState extends State<PokemonNum> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.pokenum,
      style: TextStyle(
        color: widget.color,
        fontWeight: widget.font,
      ),
    );
  }
}
