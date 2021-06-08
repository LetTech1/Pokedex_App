import 'package:flutter/material.dart';

class PokeBallGrid extends StatefulWidget {
  final double bottom;
  final double right;
  final double left;
  final double top;
  final String path;
  final double height;
  final double width;
  final Color color;
  const PokeBallGrid(
      {Key key,
      this.bottom,
      this.right,
      this.path,
      this.height,
      this.width,
      this.color,
      this.left,
      this.top})
      : super(key: key);

  @override
  _PokeBallGridState createState() => _PokeBallGridState();
}

class _PokeBallGridState extends State<PokeBallGrid> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: widget.bottom,
      right: widget.right,
      left: widget.left,
      top: widget.top,
      child: Image.asset(
        widget.path,
        height: widget.height,
        width: widget.width,
        color: widget.color,
      ),
    );
  }
}
