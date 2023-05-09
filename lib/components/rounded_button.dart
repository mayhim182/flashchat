
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  final Color color;
  final String name;
  final VoidCallback onPressed;


  RoundedButton(
      @required this.color,
      @required this.name,
      @required this.onPressed
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: this.onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(name),
        ),
      ),
    );
  }
}
