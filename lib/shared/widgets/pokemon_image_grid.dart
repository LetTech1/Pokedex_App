import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokemonImage extends StatefulWidget {
  final String pokeImg;
  final double height;
  final double width;
  final BoxFit boxFit;

  const PokemonImage(
      {Key key, this.pokeImg, this.height, this.width, this.boxFit})
      : super(key: key);

  @override
  _PokemonImageState createState() => _PokemonImageState();
}

class _PokemonImageState extends State<PokemonImage> {
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: widget.pokeImg,
      height: widget.height,
      width: widget.width,
      fit: widget.boxFit,
      placeholder: (context, url) => new CircularProgressIndicator(),
      errorWidget: (context, url, error) => new Icon(Icons.error),
    );
  }
}
