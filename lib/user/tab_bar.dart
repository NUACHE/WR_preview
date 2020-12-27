import 'package:flutter/material.dart';
import 'package:practice_arena/core/components/custom_appbar.dart';
import 'package:practice_arena/core/components/dropdown_button.dart';

class CustomTabBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Size preferredSize;
  final List<Widget> actions;
  final PreferredSizeWidget bottom;

  CustomTabBar(
    this.title, {
    Key key,
    this.actions,
    this.bottom,
  })  : preferredSize = Size.fromHeight(55.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
          title,
          setheight: 100,
          actions: [CustomDropDownButton()],
          bottom: TabBar(
            indicatorColor: Colors.green,
            labelColor: Colors.green,
            onTap: (index) {},
            tabs: <Widget>[
              Tab(
                text: "TODAY",
              ),
              Tab(
                text: "WEEKLY",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: actions,
        ),
      ),
    );
  }
}
