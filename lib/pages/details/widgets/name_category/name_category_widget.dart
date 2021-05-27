import 'package:flutter/material.dart';

class NameCategoryWidget extends StatelessWidget {
  final String name;
  final bool selected = false;
  const NameCategoryWidget({Key key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Text(
            name,
            style: TextStyle(
              color: selected == true ? Colors.black : Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        )
      ],
    );
  }
}
