import 'package:flutter/material.dart';

class TextName extends StatelessWidget {
  final String name;

  const TextName({Key key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 12),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'The effectiveness of each type on $name',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
