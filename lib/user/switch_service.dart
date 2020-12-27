import 'package:flutter/material.dart';
import 'package:practice_arena/core/components/custom_appbar.dart';

class SwitchService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Switch Service Type'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                    onTap: () {},
                    title: Text('Executive'),
                    subtitle: Text('What is executive'),
                    trailing: Switch(
                        inactiveThumbColor: Colors.white,
                        value: false,
                        onChanged: null)),
                Divider(
                  thickness: 2.5,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                    onTap: () {},
                    title: Text('Limo'),
                    subtitle: Text('What is limo'),
                    trailing: Switch(
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.green,
                        value: true,
                        onChanged: null)),
                Divider(
                  thickness: 2.5,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                    onTap: () {},
                    title: Text('Economy'),
                    subtitle: Text('Describe short brief to understand'),
                    trailing: Switch(
                        inactiveThumbColor: Colors.white,
                        value: false,
                        onChanged: null)),
                Divider(
                  thickness: 2.5,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
