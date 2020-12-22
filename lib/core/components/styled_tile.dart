import 'package:flutter/material.dart';

class StyledTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget trailing;

  const StyledTile(
      {Key key, @required this.title, @required this.subtitle, this.trailing})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: InkWell(
        child: trailing ??
            Text(
              'UPLOAD',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
    );
  }
}
