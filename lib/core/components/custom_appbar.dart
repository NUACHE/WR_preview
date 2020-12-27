import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Size preferredSize;
  final List<Widget> actions;
  final PreferredSizeWidget bottom;
  final double setheight;
  CustomAppBar(
    this.title, {
    Key key,
    this.actions,
    this.bottom,
    this.setheight,
  })  : preferredSize = Size.fromHeight(setheight ?? 55.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: actions,
      iconTheme: IconThemeData(color: Colors.black87, opacity: 0.7),
      backgroundColor: Colors.white12,
      elevation: 0.0,
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
      ),
      bottom: bottom,
    );
  }
}
