import 'package:flutter/material.dart';
import 'package:practice_arena/core/components/custom_appbar.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Help'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  title: Text('I forgot my password'),
                ),
                Divider(
                  thickness: 2.5,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {},
                  title: Text('How to withdraw balance'),
                ),
                Divider(
                  thickness: 2.5,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {},
                  title: Text('What is summary'),
                ),
                Divider(
                  thickness: 2.5,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {},
                  title: Text('How to earn extra money'),
                ),
                Divider(
                  thickness: 2.5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
