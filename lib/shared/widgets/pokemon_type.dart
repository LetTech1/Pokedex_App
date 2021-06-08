import 'package:flutter/material.dart';

class PokemonType extends StatefulWidget {
  final Type type;
  final double bottomMargin;
  final double topMargin;
  final double rightMargin;
  final double radiusCircular;
  final Color backColor;
  final double topPadding;
  final double bottomPadding;
  final double rightPadding;
  final double leftPadding;
  final Color colorType;
  final double fontSizeType;
  final String getType;

  const PokemonType(
      {Key key,
      this.type,
      this.bottomMargin,
      this.topMargin,
      this.radiusCircular,
      this.backColor,
      this.topPadding,
      this.bottomPadding,
      this.rightPadding,
      this.leftPadding,
      this.colorType,
      this.fontSizeType,
      this.getType,
      this.rightMargin})
      : super(key: key);

  @override
  _PokemonTypeState createState() => _PokemonTypeState();
}

class _PokemonTypeState extends State<PokemonType> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: widget.bottomMargin,
        top: widget.topMargin,
        right: widget.rightMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(widget.radiusCircular),
        ),
        color: widget.backColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: widget.topPadding,
            bottom: widget.bottomPadding,
            right: widget.rightPadding,
            left: widget.leftPadding),
        child: Text(
          widget.getType,
          style:
              TextStyle(color: widget.colorType, fontSize: widget.fontSizeType),
        ),
      ),
    );
  }
}
