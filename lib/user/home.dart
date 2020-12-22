import 'package:flutter/material.dart';
import 'package:practice_arena/user/earnings.dart';
import 'package:practice_arena/user/help.dart';
import 'package:practice_arena/user/ratings.dart';
import 'package:practice_arena/user/settings.dart';
import 'package:practice_arena/user/summary.dart';
import 'package:practice_arena/user/switch_service.dart';
import 'package:practice_arena/user/wallet.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
                top: 35.0, left: 15.0, bottom: 15.0, right: 15.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(40, 47, 57, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          print('Closed');
                        }),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Help(),
                          ),
                        );
                      },
                      child: Text(
                        "Help",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Earning(),
                          ),
                        );
                      },
                      child: Image(
                        image: AssetImage('images/ladder.png'),
                      ),
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/man.jpg'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Wallet(),
                          ),
                        );
                      },
                      child: Image(
                        image: AssetImage('images/wallet.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Earnings',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'James Smith',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Wallet',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromRGBO(242, 245, 247, 1),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SwitchService(),
                  ),
                );
              },
              leading: Icon(Icons.cached),
              title: Text('Switch Service Type'),
              subtitle: Text('Change your service type'),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Summary(),
                        ),
                      );
                    },
                    leading: Icon(Icons.event_note),
                    title: Text('Summary'),
                  ),
                  ListTile(
                    leading: Icon(Icons.subscriptions),
                    title: Text('My Subscription'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ratings(),
                        ),
                      );
                    },
                    leading: Icon(Icons.notifications),
                    title: Text('Notifications'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Settings(),
                        ),
                      );
                    },
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Logout'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
