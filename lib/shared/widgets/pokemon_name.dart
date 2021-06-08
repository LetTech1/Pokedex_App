import 'package:flutter/material.dart';

class PokemonName extends StatefulWidget {
  final String name;
  final Color color;
  final double fontsize;
  final FontWeight font;
  const PokemonName({Key key, this.name, this.color, this.fontsize, this.font})
      : super(key: key);

  @override
  _PokemonNameState createState() => _PokemonNameState();
}

class _PokemonNameState extends State<PokemonName> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.name,
      style: TextStyle(
        color: widget.color,
        fontSize: widget.fontsize,
        fontWeight: widget.font,
      ),
    );
  }
}
