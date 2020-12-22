import 'package:flutter/material.dart';

class SwitchService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87, opacity: 0.7),
        backgroundColor: Colors.white12,
        elevation: 0.0,
        title: Text(
          'Switch Service Type',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
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
