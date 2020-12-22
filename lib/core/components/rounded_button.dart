import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String name;
  final Color buttoncolor;
  final Color textcolor;

  const RoundedButton(
      {Key key, @required this.name, this.textcolor, this.buttoncolor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
        color: buttoncolor ?? Colors.green,
      ),
      child: Text(
        name,
        style: TextStyle(fontSize: 20, color: textcolor ?? Colors.white),
      ),
    );
  }
}
