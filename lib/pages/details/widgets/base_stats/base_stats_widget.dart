import 'package:flutter/material.dart';

class BaseStats extends StatelessWidget {
  final String info;
  final dynamic pokem;
  final dynamic value;

  const BaseStats({
    Key key,
    this.info,
    this.pokem,
    this.value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            top: 18,
            right: 30,
          ),
          child: Container(
            //color: Colors.black,
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
          padding: const EdgeInsets.only(top: 18, right: 30),
          child: Container(
            //color: Colors.blue,
            width: MediaQuery.of(context).size.width / 8,
            child: Text(
              pokem,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Container(
            //color: Colors.yellow,
            width: MediaQuery.of(context).size.width / 2.5,
            child: LinearProgressIndicator(
              value: value,
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation<Color>(vericaValor()),
            ),
          ),
        ),
      ],
    );
  }

  vericaValor() {
    if (value > 0.50) {
      return Colors.greenAccent;
    } else {
      return Colors.red.shade300;
    }
  }
}
