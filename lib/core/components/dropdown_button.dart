import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: null,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(242, 245, 247, 1),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            Text(
              "Normal",
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
