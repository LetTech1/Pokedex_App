import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  final String info;
  final String pokem;

  const AboutWidget({
    Key key,
    this.info,
    this.pokem,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            top: 18,
            right: 80,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width / 5.2,
            child: Text(
              info,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              pokem,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
