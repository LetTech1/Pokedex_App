import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  /*final double value;
  final Color color;

  const ProgressIndicatorWidget({Key key, this.color, this.value})
      : super(key: key);*/
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: 0.5,
      backgroundColor: Colors.grey.shade300,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
    );
  }
}
